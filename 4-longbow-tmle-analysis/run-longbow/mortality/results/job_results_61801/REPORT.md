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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sunderweight06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  --------------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                                 0      286    369  co_occurence     
CMC-V-BCS-2002   INDIA                          0                                 1        8    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                 0       61    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                 1       14    369  co_occurence     
CMIN             BANGLADESH                     0                                 0      178    237  co_occurence     
CMIN             BANGLADESH                     0                                 1       15    237  co_occurence     
CMIN             BANGLADESH                     1                                 0       33    237  co_occurence     
CMIN             BANGLADESH                     1                                 1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                                 0      693    779  co_occurence     
COHORTS          GUATEMALA                      0                                 1       27    779  co_occurence     
COHORTS          GUATEMALA                      1                                 0       48    779  co_occurence     
COHORTS          GUATEMALA                      1                                 1       11    779  co_occurence     
COHORTS          PHILIPPINES                    0                                 0     2203   2487  co_occurence     
COHORTS          PHILIPPINES                    0                                 1      146   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                 0       97   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                 1       41   2487  co_occurence     
CONTENT          PERU                           0                                 0      198    200  co_occurence     
CONTENT          PERU                           0                                 1        0    200  co_occurence     
CONTENT          PERU                           1                                 0        2    200  co_occurence     
CONTENT          PERU                           1                                 1        0    200  co_occurence     
EE               PAKISTAN                       0                                 0      180    346  co_occurence     
EE               PAKISTAN                       0                                 1       22    346  co_occurence     
EE               PAKISTAN                       1                                 0       92    346  co_occurence     
EE               PAKISTAN                       1                                 1       52    346  co_occurence     
GMS-Nepal        NEPAL                          0                                 0      438    550  co_occurence     
GMS-Nepal        NEPAL                          0                                 1       37    550  co_occurence     
GMS-Nepal        NEPAL                          1                                 0       52    550  co_occurence     
GMS-Nepal        NEPAL                          1                                 1       23    550  co_occurence     
IRC              INDIA                          0                                 0      327    405  co_occurence     
IRC              INDIA                          0                                 1       15    405  co_occurence     
IRC              INDIA                          1                                 0       53    405  co_occurence     
IRC              INDIA                          1                                 1       10    405  co_occurence     
JiVitA-4         BANGLADESH                     0                                 0     3809   4547  co_occurence     
JiVitA-4         BANGLADESH                     0                                 1      286   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                 0      301   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                 1      151   4547  co_occurence     
Keneba           GAMBIA                         0                                 0     1668   1863  co_occurence     
Keneba           GAMBIA                         0                                 1       75   1863  co_occurence     
Keneba           GAMBIA                         1                                 0       86   1863  co_occurence     
Keneba           GAMBIA                         1                                 1       34   1863  co_occurence     
LCNI-5           MALAWI                         0                                 0      669    692  co_occurence     
LCNI-5           MALAWI                         0                                 1       14    692  co_occurence     
LCNI-5           MALAWI                         1                                 0        5    692  co_occurence     
LCNI-5           MALAWI                         1                                 1        4    692  co_occurence     
MAL-ED           BANGLADESH                     0                                 0      196    221  co_occurence     
MAL-ED           BANGLADESH                     0                                 1       11    221  co_occurence     
MAL-ED           BANGLADESH                     1                                 0       11    221  co_occurence     
MAL-ED           BANGLADESH                     1                                 1        3    221  co_occurence     
MAL-ED           BRAZIL                         0                                 0      176    180  co_occurence     
MAL-ED           BRAZIL                         0                                 1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                                 0        3    180  co_occurence     
MAL-ED           BRAZIL                         1                                 1        0    180  co_occurence     
MAL-ED           INDIA                          0                                 0      187    228  co_occurence     
MAL-ED           INDIA                          0                                 1       10    228  co_occurence     
MAL-ED           INDIA                          1                                 0       24    228  co_occurence     
MAL-ED           INDIA                          1                                 1        7    228  co_occurence     
MAL-ED           NEPAL                          0                                 0      215    229  co_occurence     
MAL-ED           NEPAL                          0                                 1        2    229  co_occurence     
MAL-ED           NEPAL                          1                                 0       10    229  co_occurence     
MAL-ED           NEPAL                          1                                 1        2    229  co_occurence     
MAL-ED           PERU                           0                                 0      210    222  co_occurence     
MAL-ED           PERU                           0                                 1        4    222  co_occurence     
MAL-ED           PERU                           1                                 0        6    222  co_occurence     
MAL-ED           PERU                           1                                 1        2    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                 0      227    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                 1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                 0       10    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                 1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                                 0      362    462  co_occurence     
NIH-Birth        BANGLADESH                     0                                 1       30    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                 0       49    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                 1       21    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                                 0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                                 1       17    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                 0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                 1       12    634  co_occurence     
PROBIT           BELARUS                        0                                 0     2138   2146  co_occurence     
PROBIT           BELARUS                        0                                 1        1   2146  co_occurence     
PROBIT           BELARUS                        1                                 0        7   2146  co_occurence     
PROBIT           BELARUS                        1                                 1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                                 0      497    563  co_occurence     
PROVIDE          BANGLADESH                     0                                 1       26    563  co_occurence     
PROVIDE          BANGLADESH                     1                                 0       29    563  co_occurence     
PROVIDE          BANGLADESH                     1                                 1       11    563  co_occurence     
ResPak           PAKISTAN                       0                                 0        6      9  co_occurence     
ResPak           PAKISTAN                       0                                 1        0      9  co_occurence     
ResPak           PAKISTAN                       1                                 0        2      9  co_occurence     
ResPak           PAKISTAN                       1                                 1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                                 0      992   1260  co_occurence     
SAS-CompFeed     INDIA                          0                                 1       73   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                 0      140   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                 1       55   1260  co_occurence     
SAS-FoodSuppl    INDIA                          0                                 0      207    321  co_occurence     
SAS-FoodSuppl    INDIA                          0                                 1       32    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                 0       54    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                 1       28    321  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                 0     1512   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                 1       70   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                 0       89   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                 1       21   1692  co_occurence     


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
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
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN
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
![](/tmp/36ecee78-0fa9-41e1-a8af-799c67509713/8877eef2-c0fd-4b7f-aaac-6924c3b3b3b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36ecee78-0fa9-41e1-a8af-799c67509713/8877eef2-c0fd-4b7f-aaac-6924c3b3b3b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36ecee78-0fa9-41e1-a8af-799c67509713/8877eef2-c0fd-4b7f-aaac-6924c3b3b3b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36ecee78-0fa9-41e1-a8af-799c67509713/8877eef2-c0fd-4b7f-aaac-6924c3b3b3b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
CMIN             BANGLADESH    0                    NA                0.0781342   0.0401403   0.1161282
CMIN             BANGLADESH    1                    NA                0.2726980   0.1475234   0.3978726
COHORTS          GUATEMALA     0                    NA                0.0379827   0.0239076   0.0520579
COHORTS          GUATEMALA     1                    NA                0.1774689   0.0702928   0.2846451
COHORTS          PHILIPPINES   0                    NA                0.0627060   0.0529374   0.0724746
COHORTS          PHILIPPINES   1                    NA                0.2645442   0.1875407   0.3415477
EE               PAKISTAN      0                    NA                0.1068853   0.0639890   0.1497816
EE               PAKISTAN      1                    NA                0.3702992   0.2908740   0.4497244
GMS-Nepal        NEPAL         0                    NA                0.0783055   0.0541545   0.1024565
GMS-Nepal        NEPAL         1                    NA                0.3003869   0.1949074   0.4058663
IRC              INDIA         0                    NA                0.0434976   0.0219395   0.0650557
IRC              INDIA         1                    NA                0.1600121   0.0650205   0.2550038
JiVitA-4         BANGLADESH    0                    NA                0.0705605   0.0620598   0.0790613
JiVitA-4         BANGLADESH    1                    NA                0.3153056   0.2576737   0.3729375
Keneba           GAMBIA        0                    NA                0.0431453   0.0336101   0.0526804
Keneba           GAMBIA        1                    NA                0.2790939   0.2030987   0.3550891
MAL-ED           INDIA         0                    NA                0.0507614   0.0200412   0.0814816
MAL-ED           INDIA         1                    NA                0.2258065   0.0782988   0.3733141
NIH-Birth        BANGLADESH    0                    NA                0.0766536   0.0502275   0.1030797
NIH-Birth        BANGLADESH    1                    NA                0.3064129   0.1969520   0.4158739
NIH-Crypto       BANGLADESH    0                    NA                0.0295589   0.0158707   0.0432470
NIH-Crypto       BANGLADESH    1                    NA                0.2125007   0.0945040   0.3304975
PROVIDE          BANGLADESH    0                    NA                0.0495517   0.0309015   0.0682019
PROVIDE          BANGLADESH    1                    NA                0.2849765   0.1385818   0.4313712
SAS-CompFeed     INDIA         0                    NA                0.0688482   0.0583698   0.0793267
SAS-CompFeed     INDIA         1                    NA                0.2762252   0.2058203   0.3466301
SAS-FoodSuppl    INDIA         0                    NA                0.1360981   0.0929979   0.1791982
SAS-FoodSuppl    INDIA         1                    NA                0.3447887   0.2375698   0.4520076
ZVITAMBO         ZIMBABWE      0                    NA                0.0441515   0.0340145   0.0542884
ZVITAMBO         ZIMBABWE      1                    NA                0.1879059   0.1121245   0.2636872


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0336441   0.0639169
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH    NA                   NA                0.0961073   0.0860713   0.1061434
Keneba           GAMBIA        NA                   NA                0.0585078   0.0478474   0.0691682
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA         NA                   NA                0.1015873   0.0902183   0.1129563
SAS-FoodSuppl    INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ZVITAMBO         ZIMBABWE      NA                   NA                0.0537825   0.0430304   0.0645346


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ---------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 6.860000   2.985432   15.763079
CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
CMIN             BANGLADESH    1                    0                 3.490123   1.797302    6.777358
COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
COHORTS          GUATEMALA     1                    0                 4.672358   2.300923    9.487901
COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                 4.218802   3.032743    5.868709
EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                 3.464455   2.197443    5.462008
GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                 3.836089   2.402119    6.126083
IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
IRC              INDIA         1                    0                 3.678643   1.696141    7.978352
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 4.468584   3.594441    5.555312
Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                 6.468698   4.562312    9.171677
MAL-ED           INDIA         0                    0                 1.000000   1.000000    1.000000
MAL-ED           INDIA         1                    0                 4.448387   1.825847   10.837790
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 3.997374   2.430098    6.575454
NIH-Crypto       BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 7.189070   3.487317   14.820196
PROVIDE          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
PROVIDE          BANGLADESH    1                    0                 5.751095   3.047439   10.853405
SAS-CompFeed     INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                 4.012089   2.853116    5.641852
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.533384   1.631000    3.935030
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 4.255939   2.674943    6.771365


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
CMIN             BANGLADESH    0                    NA                0.0315704   0.0056450   0.0574958
COHORTS          GUATEMALA     0                    NA                0.0107978   0.0026728   0.0189228
COHORTS          PHILIPPINES   0                    NA                0.0124850   0.0077732   0.0171968
EE               PAKISTAN      0                    NA                0.1069876   0.0675155   0.1464596
GMS-Nepal        NEPAL         0                    NA                0.0307854   0.0147413   0.0468295
IRC              INDIA         0                    NA                0.0182308   0.0031822   0.0332794
JiVitA-4         BANGLADESH    0                    NA                0.0255468   0.0192550   0.0318386
Keneba           GAMBIA        0                    NA                0.0153625   0.0095965   0.0211285
MAL-ED           INDIA         0                    NA                0.0238000   0.0018774   0.0457226
NIH-Birth        BANGLADESH    0                    NA                0.0337361   0.0153454   0.0521267
NIH-Crypto       BANGLADESH    0                    NA                0.0161825   0.0058356   0.0265293
PROVIDE          BANGLADESH    0                    NA                0.0161677   0.0051997   0.0271356
SAS-CompFeed     INDIA         0                    NA                0.0327391   0.0214154   0.0440627
SAS-FoodSuppl    INDIA         0                    NA                0.0508178   0.0211343   0.0805014
ZVITAMBO         ZIMBABWE      0                    NA                0.0096311   0.0044890   0.0147731


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
CMIN             BANGLADESH    0                    NA                0.2877767   0.0336868   0.4750542
COHORTS          GUATEMALA     0                    NA                0.2213541   0.0521803   0.3603325
COHORTS          PHILIPPINES   0                    NA                0.1660437   0.1052298   0.2227242
EE               PAKISTAN      0                    NA                0.5002391   0.3060500   0.6400880
GMS-Nepal        NEPAL         0                    NA                0.2821997   0.1356619   0.4038938
IRC              INDIA         0                    NA                0.2953388   0.0389198   0.4833445
JiVitA-4         BANGLADESH    0                    NA                0.2658154   0.2079909   0.3194180
Keneba           GAMBIA        0                    NA                0.2625717   0.1693372   0.3453415
MAL-ED           INDIA         0                    NA                0.3191998   0.0031572   0.5350431
NIH-Birth        BANGLADESH    0                    NA                0.3056090   0.1380286   0.4406092
NIH-Crypto       BANGLADESH    0                    NA                0.3537821   0.1339495   0.5178138
PROVIDE          BANGLADESH    0                    NA                0.2460106   0.0788804   0.3828163
SAS-CompFeed     INDIA         0                    NA                0.3222753   0.2197575   0.4113231
SAS-FoodSuppl    INDIA         0                    NA                0.2718753   0.1053836   0.4073823
ZVITAMBO         ZIMBABWE      0                    NA                0.1790741   0.0846374   0.2637678
