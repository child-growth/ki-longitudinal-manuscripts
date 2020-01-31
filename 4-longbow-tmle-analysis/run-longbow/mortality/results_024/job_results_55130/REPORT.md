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

studyid                     country                        ever_sstunted024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                           0      187     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                           1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                           0       53     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                           1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                           0      177     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                           1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                           0       58     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                           1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                           0      213     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                           1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                           0       59     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                           1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      191     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0       70     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      112     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0      133     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                           0      147     374  dead6plus        
ki1000109-EE                PAKISTAN                       0                           1        0     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                           0      223     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                           1        4     374  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                           0     2682    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                           1       19    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                           0      901    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                           1       12    3614  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                           0      909    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                           1        3    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                           0      468    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                           1        9    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      201     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1        0     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0      197     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1        4     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                           0      522     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                           1        2     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                           0       92     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                           1        1     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1867    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      229    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                           0     2101    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         0                           1       46    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         1                           0      568    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         1                           1       33    2748  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0     6262    7162  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1       37    7162  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0      852    7162  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1       11    7162  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                           0      434     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                           1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                           0      156     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                           1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0     9303   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1      251   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0     1989   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1      165   11708  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                           0     1433    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                           1      102    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                           0      314    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                           1       25    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      946    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       20    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0      187    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1        8    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                           0    17039   21039  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                           1      202   21039  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                           0     3689   21039  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                           1      109   21039  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     4296    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                           1       31    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                           0     1086    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                           1       19    5432  dead6plus        


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
![](/tmp/f3549b39-d8d1-48b7-951e-d18f44f0992b/0c7f40b9-b786-4c45-b11b-c37bb085b3fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f3549b39-d8d1-48b7-951e-d18f44f0992b/0c7f40b9-b786-4c45-b11b-c37bb085b3fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f3549b39-d8d1-48b7-951e-d18f44f0992b/0c7f40b9-b786-4c45-b11b-c37bb085b3fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f3549b39-d8d1-48b7-951e-d18f44f0992b/0c7f40b9-b786-4c45-b11b-c37bb085b3fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0070724   0.0039041   0.0102407
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0127690   0.0055191   0.0200190
ki1101329-Keneba            GAMBIA         0                    NA                0.0218557   0.0155807   0.0281307
ki1101329-Keneba            GAMBIA         1                    NA                0.0540274   0.0353338   0.0727210
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059111   0.0040135   0.0078088
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0119979   0.0048306   0.0191652
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0267176   0.0234715   0.0299638
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0749626   0.0636609   0.0862644
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0666164   0.0540777   0.0791550
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0746488   0.0458605   0.1034370
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0207039   0.0117208   0.0296871
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0410256   0.0131741   0.0688772
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0119550   0.0102764   0.0136336
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0295395   0.0230020   0.0360770
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0071874   0.0045818   0.0097931
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0168391   0.0094360   0.0242422


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ki1101329-Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067020   0.0048123   0.0085918
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0147821   0.0131375   0.0164266
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.805468   0.8761916   3.720323
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.472004   1.5764056   3.876415
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.029710   1.0302276   3.998845
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.805738   2.3118771   3.405097
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.120577   0.7294960   1.721315
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.981539   0.8853100   4.435164
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.470894   1.9013567   3.211033
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.342845   1.3257825   4.140137


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0015053   -0.0005331   0.0035438
ki1101329-Keneba            GAMBIA         0                    NA                0.0068925    0.0025630   0.0112220
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007909   -0.0001433   0.0017251
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0088136    0.0066143   0.0110130
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0011531   -0.0044691   0.0067753
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0034132   -0.0015214   0.0083478
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0028271    0.0017632   0.0038910
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0020173    0.0003928   0.0036417


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1754928   -0.0892903   0.3759127
ki1101329-Keneba            GAMBIA         0                    NA                0.2397534    0.0840929   0.3689590
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1180077   -0.0282912   0.2434920
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2480534    0.1884479   0.3032810
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0170149   -0.0695046   0.0965353
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1415262   -0.0814589   0.3185341
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1912509    0.1193787   0.2572573
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2191555    0.0311996   0.3706462
