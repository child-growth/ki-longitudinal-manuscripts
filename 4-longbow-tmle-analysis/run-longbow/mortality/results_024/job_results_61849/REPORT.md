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

studyid           country                        ever_sstunted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                           0     6262    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                           1       37    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                           0      852    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                           1       11    7162  dead6plus        
EE                PAKISTAN                       0                           0      147     374  dead6plus        
EE                PAKISTAN                       0                           1        0     374  dead6plus        
EE                PAKISTAN                       1                           0      223     374  dead6plus        
EE                PAKISTAN                       1                           1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                           0      434     592  dead6plus        
GMS-Nepal         NEPAL                          0                           1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                           0      156     592  dead6plus        
GMS-Nepal         NEPAL                          1                           1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                           0     1433    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                           1      102    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                           0      314    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                           1       25    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                           0      948    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                           1       21    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                           0      185    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                           1        7    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                           0    17039   21039  dead6plus        
JiVitA-3          BANGLADESH                     0                           1      202   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                           0     3689   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                           1      109   21039  dead6plus        
JiVitA-4          BANGLADESH                     0                           0     4296    5432  dead6plus        
JiVitA-4          BANGLADESH                     0                           1       31    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                           0     1086    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                           1       19    5432  dead6plus        
Keneba            GAMBIA                         0                           0     2101    2748  dead6plus        
Keneba            GAMBIA                         0                           1       46    2748  dead6plus        
Keneba            GAMBIA                         1                           0      568    2748  dead6plus        
Keneba            GAMBIA                         1                           1       33    2748  dead6plus        
MAL-ED            BANGLADESH                     0                           0      187     240  dead6plus        
MAL-ED            BANGLADESH                     0                           1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                           0       53     240  dead6plus        
MAL-ED            BANGLADESH                     1                           1        0     240  dead6plus        
MAL-ED            INDIA                          0                           0      177     235  dead6plus        
MAL-ED            INDIA                          0                           1        0     235  dead6plus        
MAL-ED            INDIA                          1                           0       58     235  dead6plus        
MAL-ED            INDIA                          1                           1        0     235  dead6plus        
MAL-ED            PERU                           0                           0      213     273  dead6plus        
MAL-ED            PERU                           0                           1        1     273  dead6plus        
MAL-ED            PERU                           1                           0       59     273  dead6plus        
MAL-ED            PERU                           1                           1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                           0      191     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                           1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                           0       70     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                           1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      112     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0      133     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                           0      522     617  dead6plus        
PROVIDE           BANGLADESH                     0                           1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                           0       92     617  dead6plus        
PROVIDE           BANGLADESH                     1                           1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                           0      909    1389  dead6plus        
SAS-CompFeed      INDIA                          0                           1        3    1389  dead6plus        
SAS-CompFeed      INDIA                          1                           0      468    1389  dead6plus        
SAS-CompFeed      INDIA                          1                           1        9    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                           0      201     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                           1        0     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                           0      197     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                           1        4     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1867    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      229    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                           0     2682    3614  dead6plus        
VITAMIN-A         INDIA                          0                           1       19    3614  dead6plus        
VITAMIN-A         INDIA                          1                           0      901    3614  dead6plus        
VITAMIN-A         INDIA                          1                           1       12    3614  dead6plus        
ZVITAMBO          ZIMBABWE                       0                           0     9303   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                           1      251   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                           0     1989   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                           1      165   11708  dead6plus        


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/cfef09a5-379c-4057-aac9-c223396a38fb/d6cd0114-ec22-4dbf-972f-e14daf587e92/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cfef09a5-379c-4057-aac9-c223396a38fb/d6cd0114-ec22-4dbf-972f-e14daf587e92/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cfef09a5-379c-4057-aac9-c223396a38fb/d6cd0114-ec22-4dbf-972f-e14daf587e92/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cfef09a5-379c-4057-aac9-c223396a38fb/d6cd0114-ec22-4dbf-972f-e14daf587e92/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059125   0.0040151   0.0078099
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0119497   0.0047730   0.0191265
iLiNS-DOSE        MALAWI         0                    NA                0.0665078   0.0540171   0.0789985
iLiNS-DOSE        MALAWI         1                    NA                0.0779358   0.0479116   0.1079599
iLiNS-DYAD-M      MALAWI         0                    NA                0.0216718   0.0124998   0.0308438
iLiNS-DYAD-M      MALAWI         1                    NA                0.0364583   0.0099356   0.0629811
JiVitA-3          BANGLADESH     0                    NA                0.0121087   0.0104216   0.0137959
JiVitA-3          BANGLADESH     1                    NA                0.0278867   0.0217477   0.0340257
JiVitA-4          BANGLADESH     0                    NA                0.0071832   0.0045814   0.0097850
JiVitA-4          BANGLADESH     1                    NA                0.0171725   0.0096420   0.0247029
Keneba            GAMBIA         0                    NA                0.0217331   0.0154940   0.0279722
Keneba            GAMBIA         1                    NA                0.0532427   0.0347752   0.0717102
VITAMIN-A         INDIA          0                    NA                0.0070985   0.0039227   0.0102743
VITAMIN-A         INDIA          1                    NA                0.0126658   0.0054500   0.0198817
ZVITAMBO          ZIMBABWE       0                    NA                0.0269134   0.0236346   0.0301921
ZVITAMBO          ZIMBABWE       1                    NA                0.0746857   0.0631899   0.0861815


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067020   0.0048123   0.0085918
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0147821   0.0131375   0.0164266
JiVitA-4          BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917
Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.021094   1.0230557   3.992764
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.171829   0.7633102   1.798984
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.682292   0.7250786   3.903170
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.303020   1.7735793   2.990508
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.390640   1.3549973   4.217840
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.449843   1.5613635   3.843904
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.784299   0.8649455   3.680835
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.775041   2.2807019   3.376529


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007895   -0.0001444   0.0017235
iLiNS-DOSE        MALAWI         0                    NA                0.0012617   -0.0043204   0.0068438
iLiNS-DYAD-M      MALAWI         0                    NA                0.0024453   -0.0022065   0.0070971
JiVitA-3          BANGLADESH     0                    NA                0.0026733    0.0016010   0.0037456
JiVitA-4          BANGLADESH     0                    NA                0.0020215    0.0003984   0.0036446
Keneba            GAMBIA         0                    NA                0.0070151    0.0026968   0.0113333
VITAMIN-A         INDIA          0                    NA                0.0014793   -0.0005621   0.0035206
ZVITAMBO          ZIMBABWE       0                    NA                0.0086179    0.0064056   0.0108302


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1178054   -0.0284428   0.2432566
iLiNS-DOSE        MALAWI         0                    NA                0.0186172   -0.0672454   0.0975719
iLiNS-DYAD-M      MALAWI         0                    NA                0.1013932   -0.1094964   0.2721976
JiVitA-3          BANGLADESH     0                    NA                0.1808499    0.1082954   0.2475008
JiVitA-4          BANGLADESH     0                    NA                0.2196163    0.0319744   0.3708857
Keneba            GAMBIA         0                    NA                0.2440177    0.0892081   0.3725140
VITAMIN-A         INDIA          0                    NA                0.1724530   -0.0928840   0.3733698
ZVITAMBO          ZIMBABWE       0                    NA                0.2425443    0.1822526   0.2983909
