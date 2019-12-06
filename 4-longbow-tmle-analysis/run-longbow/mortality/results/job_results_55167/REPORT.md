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

**Outcome Variable:** dead6plus

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

studyid                     country                        ever_sunderweight06    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      224     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                              1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              0       16     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                              0      204     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                              1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                              0       31     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                              1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                              0      263     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                              1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                              0        9     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                              1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      249     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0       12     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      237     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        8     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                              0      215     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                              1        1     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                              0      156     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                              1        3     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                              0     2673    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                              1       14    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                              0      910    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                              1       18    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              0     1164    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              1        5    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              0      213    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              1        7    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      291     400  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1        1     400  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0      105     400  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1        3     400  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              0      571     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              0       43     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2034    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       62    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                              0     2242    2464  dead6plus        
ki1101329-Keneba            GAMBIA                         0                              1       58    2464  dead6plus        
ki1101329-Keneba            GAMBIA                         1                              0      147    2464  dead6plus        
ki1101329-Keneba            GAMBIA                         1                              1       17    2464  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0      313     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        2     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0       21     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        0     336  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                              0      508     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                              1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                              0       82     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                              1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0    10789   11707  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      305   11707  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0      502   11707  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1      111   11707  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              0     1593    1759  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              1      105    1759  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              0       53    1759  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              1        8    1759  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0     1055    1158  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       23    1158  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0       75    1158  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1        5    1158  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              0    17578   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              1      191   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              0     3134   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              1      120   21023  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     4707    5266  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              1       32    5266  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              0      511    5266  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              1       16    5266  dead6plus        


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
![](/tmp/0b19e99d-714c-46bf-9ab0-528b4684ee69/7ce80ad6-3c18-4bb4-aca2-4f8dae7928b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b19e99d-714c-46bf-9ab0-528b4684ee69/7ce80ad6-3c18-4bb4-aca2-4f8dae7928b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b19e99d-714c-46bf-9ab0-528b4684ee69/7ce80ad6-3c18-4bb4-aca2-4f8dae7928b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b19e99d-714c-46bf-9ab0-528b4684ee69/7ce80ad6-3c18-4bb4-aca2-4f8dae7928b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0052349    0.0024958   0.0079741
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0189223    0.0101594   0.0276851
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042772   -0.0001115   0.0086658
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0318182    0.0181644   0.0454719
ki1101329-Keneba          GAMBIA       0                    NA                0.0252708    0.0188368   0.0317047
ki1101329-Keneba          GAMBIA       1                    NA                0.0959635    0.0516410   0.1402859
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0276059    0.0245592   0.0306525
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1661982    0.1349665   0.1974298
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0618375    0.0503779   0.0732970
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1311475    0.0464131   0.2158819
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0213358    0.0127061   0.0299655
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0625000    0.0094340   0.1155660
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0108220    0.0092552   0.0123888
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0350821    0.0278902   0.0422739
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0067717    0.0042566   0.0092869
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0287912    0.0133728   0.0442096


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086393   0.0042356   0.0130430
ki1101329-Keneba          GAMBIA       NA                   NA                0.0304383   0.0236539   0.0372227
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0355343   0.0321807   0.0388879
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0241796   0.0153286   0.0330306
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0147933   0.0131485   0.0164382
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091151   0.0063755   0.0118547


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.614605   1.797281    7.269518
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.439091   2.727800   20.287438
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.797411   2.241557    6.433179
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 6.020394   4.841783    7.485910
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.120843   1.082921    4.153557
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.929348   1.143741    7.502641
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.241744   2.516329    4.176284
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.251675   2.207957    8.187092


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0036171    0.0012202   0.0060140
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0043621    0.0020152   0.0067091
ki1101329-Keneba          GAMBIA       0                    NA                0.0051676    0.0019309   0.0084042
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0079284    0.0062145   0.0096424
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0024036   -0.0006203   0.0054275
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0028438   -0.0009188   0.0066064
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0039714    0.0028898   0.0050530
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0023433    0.0007491   0.0039376


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4086144    0.1248353   0.6003758
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5049187    0.0566503   0.7401754
ki1101329-Keneba          GAMBIA       0                    NA                0.1697714    0.0636665   0.2638526
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2231207    0.1782419   0.2655485
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0374152   -0.0103929   0.0829612
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1176120   -0.0456630   0.2553924
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2684559    0.1982508   0.3325134
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2570846    0.0807010   0.3996259
