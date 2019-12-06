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

studyid                     country                        ever_wasted024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      157     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       83     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                         0      121     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                         1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                         0      114     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                         1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                         0      246     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                         1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                         0       26     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                         1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      204     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       57     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      209     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0       36     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                         0      149     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                         1        1     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                         0      222     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                         1        3     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     2357    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       12    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                         0     1227    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       19    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0      783    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1        2    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0      594    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1       10    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      208     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      190     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      391     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0      223     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1560    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      536    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                         0     1467    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         0                         1       39    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         1                         0     1206    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         1                         1       40    2752  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     5728    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       30    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1       18    7164  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      208     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0      382     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     8634   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      231   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     2648   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      181   11694  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1606    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      112    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      141    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       15    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1031    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       21    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      102    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        7    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    15064   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      201   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     5654   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      104   21023  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     3716    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     1667    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       19    5433  dead6plus        


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
![](/tmp/5a3c622a-e1ac-4e09-afba-8782b505e314/ee0180c1-c623-41fc-b3c9-6f03f20eba54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5a3c622a-e1ac-4e09-afba-8782b505e314/ee0180c1-c623-41fc-b3c9-6f03f20eba54/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5a3c622a-e1ac-4e09-afba-8782b505e314/ee0180c1-c623-41fc-b3c9-6f03f20eba54/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5a3c622a-e1ac-4e09-afba-8782b505e314/ee0180c1-c623-41fc-b3c9-6f03f20eba54/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0050924   0.0022185   0.0079662
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0155664   0.0086263   0.0225065
ki1101329-Keneba            GAMBIA         0                    NA                0.0266687   0.0183912   0.0349462
ki1101329-Keneba            GAMBIA         1                    NA                0.0322352   0.0223321   0.0421382
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052327   0.0033639   0.0071015
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0125861   0.0067583   0.0184139
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0266261   0.0232560   0.0299961
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0607537   0.0517522   0.0697553
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0651600   0.0534838   0.0768362
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0883690   0.0445979   0.1321402
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0199620   0.0115063   0.0284177
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0642202   0.0181792   0.1102612
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0132460   0.0113999   0.0150922
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0177662   0.0143049   0.0212275
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0082868   0.0053677   0.0112060
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0112373   0.0059957   0.0164790


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ki1101329-Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.056819   1.4891688   6.274738
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.208725   0.7808129   1.871148
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.405285   1.3402891   4.316528
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 2.281738   1.8779854   2.772294
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.356184   0.8008314   2.296658
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 3.217125   1.3990258   7.397930
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.341249   1.0555893   1.704212
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.356045   0.7542946   2.437849


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0034830    0.0009269   0.0060391
ki1101329-Keneba            GAMBIA         0                    NA                0.0020377   -0.0038820   0.0079573
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014675    0.0002529   0.0026821
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0086057    0.0062375   0.0109738
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0026094   -0.0013813   0.0066002
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0041552   -0.0003020   0.0086123
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0012619    0.0001927   0.0023311
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0009162   -0.0009666   0.0027989


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4061651    0.0765701   0.6181195
ki1101329-Keneba            GAMBIA         0                    NA                0.0709831   -0.1592040   0.2554612
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2190223    0.0283561   0.3722739
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2442588    0.1783887   0.3048479
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0385046   -0.0219063   0.0953443
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1722909   -0.0215805   0.3293701
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0869802    0.0108044   0.1572899
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0995511   -0.1263248   0.2801294
