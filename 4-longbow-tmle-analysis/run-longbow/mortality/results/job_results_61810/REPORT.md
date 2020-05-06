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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sunderweight06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                                   0      285     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                                   1       12     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   0       60     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   1       16     373  pers_wasted624   
CMIN             BANGLADESH                     0                                   0      194     252  pers_wasted624   
CMIN             BANGLADESH                     0                                   1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   0       33     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                                   0      904    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                                   1       20    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   0       78    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   1       21    1023  pers_wasted624   
COHORTS          INDIA                          0                                   0     5698    6897  pers_wasted624   
COHORTS          INDIA                          0                                   1      423    6897  pers_wasted624   
COHORTS          INDIA                          1                                   0      428    6897  pers_wasted624   
COHORTS          INDIA                          1                                   1      348    6897  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   0     2460    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   1      154    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   0      123    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   1       72    2809  pers_wasted624   
CONTENT          PERU                           0                                   0      213     215  pers_wasted624   
CONTENT          PERU                           0                                   1        0     215  pers_wasted624   
CONTENT          PERU                           1                                   0        2     215  pers_wasted624   
CONTENT          PERU                           1                                   1        0     215  pers_wasted624   
EE               PAKISTAN                       0                                   0      207     374  pers_wasted624   
EE               PAKISTAN                       0                                   1        9     374  pers_wasted624   
EE               PAKISTAN                       1                                   0      118     374  pers_wasted624   
EE               PAKISTAN                       1                                   1       40     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   0      437     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   0       44     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   0      260     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   0       10     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   1        2     274  pers_wasted624   
IRC              INDIA                          0                                   0      307     410  pers_wasted624   
IRC              INDIA                          0                                   1       37     410  pers_wasted624   
IRC              INDIA                          1                                   0       55     410  pers_wasted624   
IRC              INDIA                          1                                   1       11     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   0    12391   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   1     2246   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   0     1637   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   1     1000   17274  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   0     4334    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   1      403    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   0      364    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   1      162    5263  pers_wasted624   
Keneba           GAMBIA                         0                                   0     2125    2441  pers_wasted624   
Keneba           GAMBIA                         0                                   1      156    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   0       99    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   1       61    2441  pers_wasted624   
LCNI-5           MALAWI                         0                                   0      770     796  pers_wasted624   
LCNI-5           MALAWI                         0                                   1        8     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   0       13     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   1        5     796  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   0      210     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   1       14     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   0       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   1        3     240  pers_wasted624   
MAL-ED           BRAZIL                         0                                   0      201     207  pers_wasted624   
MAL-ED           BRAZIL                         0                                   1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   0        4     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                                   0      187     235  pers_wasted624   
MAL-ED           INDIA                          0                                   1       17     235  pers_wasted624   
MAL-ED           INDIA                          1                                   0       20     235  pers_wasted624   
MAL-ED           INDIA                          1                                   1       11     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   0      221     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   0       12     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   1        1     235  pers_wasted624   
MAL-ED           PERU                           0                                   0      259     270  pers_wasted624   
MAL-ED           PERU                           0                                   1        2     270  pers_wasted624   
MAL-ED           PERU                           1                                   0        8     270  pers_wasted624   
MAL-ED           PERU                           1                                   1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   0      246     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   0       11     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   0      428     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   1       34     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   0       53     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   1       27     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   1       29     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   1       15     730  pers_wasted624   
PROBIT           BELARUS                        0                                   0    16508   16596  pers_wasted624   
PROBIT           BELARUS                        0                                   1       15   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   0       70   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   1        3   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   0      546     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   1       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   0       29     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   1       14     615  pers_wasted624   
ResPak           PAKISTAN                       0                                   0      157     234  pers_wasted624   
ResPak           PAKISTAN                       0                                   1       33     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   0       30     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   1       14     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   0     1039    1389  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   1      130    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   0      119    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   1      101    1389  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   0      261     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   1       31     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   0       63     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   1       45     400  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   1      345   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   0      452   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   1      123   10814  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/45b3d7e6-cb65-44fb-836d-3b6168886e3d/995ac747-7644-4882-a0d8-7251a6d79004/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45b3d7e6-cb65-44fb-836d-3b6168886e3d/995ac747-7644-4882-a0d8-7251a6d79004/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45b3d7e6-cb65-44fb-836d-3b6168886e3d/995ac747-7644-4882-a0d8-7251a6d79004/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45b3d7e6-cb65-44fb-836d-3b6168886e3d/995ac747-7644-4882-a0d8-7251a6d79004/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0398490   0.0175439   0.0621541
CMC-V-BCS-2002   INDIA                          1                    NA                0.2090338   0.1116965   0.3063712
CMIN             BANGLADESH                     0                    NA                0.0519284   0.0210820   0.0827748
CMIN             BANGLADESH                     1                    NA                0.2972471   0.1593296   0.4351647
COHORTS          GUATEMALA                      0                    NA                0.0216766   0.0122630   0.0310901
COHORTS          GUATEMALA                      1                    NA                0.2124313   0.1342085   0.2906540
COHORTS          INDIA                          0                    NA                0.0704797   0.0640111   0.0769483
COHORTS          INDIA                          1                    NA                0.4164244   0.3805564   0.4522924
COHORTS          PHILIPPINES                    0                    NA                0.0594707   0.0504279   0.0685135
COHORTS          PHILIPPINES                    1                    NA                0.3484158   0.2796122   0.4172194
EE               PAKISTAN                       0                    NA                0.0416667   0.0149824   0.0683509
EE               PAKISTAN                       1                    NA                0.2531646   0.1852731   0.3210560
GMS-Nepal        NEPAL                          0                    NA                0.1376002   0.1076309   0.1675694
GMS-Nepal        NEPAL                          1                    NA                0.4719746   0.3596259   0.5843233
IRC              INDIA                          0                    NA                0.1071755   0.0743810   0.1399700
IRC              INDIA                          1                    NA                0.1768254   0.0786941   0.2749568
JiVitA-3         BANGLADESH                     0                    NA                0.1537624   0.1472630   0.1602618
JiVitA-3         BANGLADESH                     1                    NA                0.3727907   0.3508313   0.3947502
JiVitA-4         BANGLADESH                     0                    NA                0.0856647   0.0757176   0.0956118
JiVitA-4         BANGLADESH                     1                    NA                0.2955875   0.2512385   0.3399365
Keneba           GAMBIA                         0                    NA                0.0692841   0.0588443   0.0797239
Keneba           GAMBIA                         1                    NA                0.3435018   0.2664192   0.4205844
LCNI-5           MALAWI                         0                    NA                0.0102828   0.0031722   0.0173933
LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
MAL-ED           INDIA                          0                    NA                0.0827894   0.0446859   0.1208930
MAL-ED           INDIA                          1                    NA                0.3392143   0.1676822   0.5107464
NIH-Birth        BANGLADESH                     0                    NA                0.0739760   0.0500609   0.0978910
NIH-Birth        BANGLADESH                     1                    NA                0.3455290   0.2409908   0.4500672
NIH-Crypto       BANGLADESH                     0                    NA                0.0433722   0.0280337   0.0587108
NIH-Crypto       BANGLADESH                     1                    NA                0.2600903   0.1433676   0.3768130
PROVIDE          BANGLADESH                     0                    NA                0.0457023   0.0285874   0.0628172
PROVIDE          BANGLADESH                     1                    NA                0.3084261   0.1600774   0.4567748
ResPak           PAKISTAN                       0                    NA                0.1748788   0.1201447   0.2296129
ResPak           PAKISTAN                       1                    NA                0.3139814   0.1668407   0.4611222
SAS-CompFeed     INDIA                          0                    NA                0.1148618   0.0989402   0.1307834
SAS-CompFeed     INDIA                          1                    NA                0.4231323   0.3681306   0.4781339
SAS-FoodSuppl    INDIA                          0                    NA                0.1045214   0.0691536   0.1398892
SAS-FoodSuppl    INDIA                          1                    NA                0.4168750   0.3210590   0.5126910
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388844   0.0303184   0.0474505
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4191446   0.2920510   0.5462382
ZVITAMBO         ZIMBABWE                       0                    NA                0.0339418   0.0304388   0.0374448
ZVITAMBO         ZIMBABWE                       1                    NA                0.1917649   0.1585094   0.2250204


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
JiVitA-4         BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251
Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
LCNI-5           MALAWI                         NA                   NA                0.0163317   0.0075211   0.0251422
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
SAS-FoodSuppl    INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  5.245646    2.5305569   10.873814
CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.724173    2.7043155   12.116248
COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
COHORTS          GUATEMALA                      1                    0                  9.800042    5.5554379   17.287715
COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
COHORTS          INDIA                          1                    0                  5.908431    5.2112271    6.698912
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.858609    4.5695507    7.511308
EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
EE               PAKISTAN                       1                    0                  6.075949    3.0344655   12.165952
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.430044    2.4847433    4.734977
IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
IRC              INDIA                          1                    0                  1.649868    0.8748693    3.111397
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.424460    2.2571097    2.604218
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.450517    2.8510564    4.176019
Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
Keneba           GAMBIA                         1                    0                  4.957875    3.7849635    6.494256
LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
LCNI-5           MALAWI                         1                    0                 27.013889   10.2838431   70.960845
MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
MAL-ED           INDIA                          1                    0                  4.097314    2.0670365    8.121763
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  4.670828    2.9993007    7.273906
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  5.996699    3.3856074   10.621551
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  6.748589    3.6703967   12.408318
ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ResPak           PAKISTAN                       1                    0                  1.795423    1.0169114    3.169936
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.683838    3.0463197    4.454774
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.0000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.988418    2.6471812    6.009212
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.779234    7.4083727   15.683860
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  5.649813    4.6179277    6.912275


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0352180    0.0147228   0.0557133
CMIN             BANGLADESH                     0                    NA                0.0472779    0.0196483   0.0749076
COHORTS          GUATEMALA                      0                    NA                0.0184016    0.0098630   0.0269403
COHORTS          INDIA                          0                    NA                0.0413080    0.0364283   0.0461878
COHORTS          PHILIPPINES                    0                    NA                0.0209849    0.0154955   0.0264744
EE               PAKISTAN                       0                    NA                0.0893494    0.0567594   0.1219393
GMS-Nepal        NEPAL                          0                    NA                0.0471456    0.0288652   0.0654261
IRC              INDIA                          0                    NA                0.0098977   -0.0057554   0.0255507
JiVitA-3         BANGLADESH                     0                    NA                0.0341501    0.0307577   0.0375424
JiVitA-4         BANGLADESH                     0                    NA                0.0216885    0.0167644   0.0266126
Keneba           GAMBIA                         0                    NA                0.0196139    0.0138073   0.0254205
LCNI-5           MALAWI                         0                    NA                0.0060489    0.0006088   0.0114889
MAL-ED           INDIA                          0                    NA                0.0363595    0.0105160   0.0622030
NIH-Birth        BANGLADESH                     0                    NA                0.0385702    0.0209827   0.0561577
NIH-Crypto       BANGLADESH                     0                    NA                0.0169017    0.0069594   0.0268441
PROVIDE          BANGLADESH                     0                    NA                0.0193383    0.0080233   0.0306534
ResPak           PAKISTAN                       0                    NA                0.0259759   -0.0039681   0.0559199
SAS-CompFeed     INDIA                          0                    NA                0.0514449    0.0355616   0.0673282
SAS-FoodSuppl    INDIA                          0                    NA                0.0854786    0.0551653   0.1157919
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0116606    0.0069136   0.0164077
ZVITAMBO         ZIMBABWE                       0                    NA                0.0093354    0.0074029   0.0112680


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.4691542    0.1934567   0.6506111
CMIN             BANGLADESH                     0                    NA                0.4765617    0.1907507   0.6614299
COHORTS          GUATEMALA                      0                    NA                0.4591432    0.2649833   0.6020144
COHORTS          INDIA                          0                    NA                0.3695221    0.3308668   0.4059442
COHORTS          PHILIPPINES                    0                    NA                0.2608262    0.1972344   0.3193805
EE               PAKISTAN                       0                    NA                0.6819728    0.4362210   0.8206012
GMS-Nepal        NEPAL                          0                    NA                0.2551918    0.1568177   0.3420886
IRC              INDIA                          0                    NA                0.0845427   -0.0578538   0.2077714
JiVitA-3         BANGLADESH                     0                    NA                0.1817340    0.1641261   0.1989711
JiVitA-4         BANGLADESH                     0                    NA                0.2020296    0.1564352   0.2451596
Keneba           GAMBIA                         0                    NA                0.2206339    0.1583243   0.2783306
LCNI-5           MALAWI                         0                    NA                0.3703777    0.0352375   0.5890965
MAL-ED           INDIA                          0                    NA                0.3051602    0.0795749   0.4754572
NIH-Birth        BANGLADESH                     0                    NA                0.3427054    0.1897361   0.4667957
NIH-Crypto       BANGLADESH                     0                    NA                0.2804151    0.1191979   0.4121239
PROVIDE          BANGLADESH                     0                    NA                0.2973270    0.1277947   0.4339070
ResPak           PAKISTAN                       0                    NA                0.1293268   -0.0306495   0.2644717
SAS-CompFeed     INDIA                          0                    NA                0.3093376    0.2237093   0.3855206
SAS-FoodSuppl    INDIA                          0                    NA                0.4498874    0.2912288   0.5730302
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2306978    0.1418998   0.3103069
ZVITAMBO         ZIMBABWE                       0                    NA                0.2157121    0.1740408   0.2552810
