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

**Intervention Variable:** ever_sstunted06

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

studyid          country                        ever_sstunted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ----------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      261    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                             1       11    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             0       83    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             1       11    366  co_occurence     
CMIN             BANGLADESH                     0                             0      166    237  co_occurence     
CMIN             BANGLADESH                     0                             1       15    237  co_occurence     
CMIN             BANGLADESH                     1                             0       45    237  co_occurence     
CMIN             BANGLADESH                     1                             1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                             0      637    778  co_occurence     
COHORTS          GUATEMALA                      0                             1       29    778  co_occurence     
COHORTS          GUATEMALA                      1                             0      103    778  co_occurence     
COHORTS          GUATEMALA                      1                             1        9    778  co_occurence     
COHORTS          PHILIPPINES                    0                             0     2166   2487  co_occurence     
COHORTS          PHILIPPINES                    0                             1      152   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             0      134   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             1       35   2487  co_occurence     
CONTENT          PERU                           0                             0      193    200  co_occurence     
CONTENT          PERU                           0                             1        0    200  co_occurence     
CONTENT          PERU                           1                             0        7    200  co_occurence     
CONTENT          PERU                           1                             1        0    200  co_occurence     
EE               PAKISTAN                       0                             0      169    346  co_occurence     
EE               PAKISTAN                       0                             1       27    346  co_occurence     
EE               PAKISTAN                       1                             0      103    346  co_occurence     
EE               PAKISTAN                       1                             1       47    346  co_occurence     
GMS-Nepal        NEPAL                          0                             0      462    550  co_occurence     
GMS-Nepal        NEPAL                          0                             1       47    550  co_occurence     
GMS-Nepal        NEPAL                          1                             0       28    550  co_occurence     
GMS-Nepal        NEPAL                          1                             1       13    550  co_occurence     
IRC              INDIA                          0                             0      331    405  co_occurence     
IRC              INDIA                          0                             1       13    405  co_occurence     
IRC              INDIA                          1                             0       49    405  co_occurence     
IRC              INDIA                          1                             1       12    405  co_occurence     
JiVitA-4         BANGLADESH                     0                             0     3719   4541  co_occurence     
JiVitA-4         BANGLADESH                     0                             1      311   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             0      386   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             1      125   4541  co_occurence     
Keneba           GAMBIA                         0                             0     1489   1776  co_occurence     
Keneba           GAMBIA                         0                             1       72   1776  co_occurence     
Keneba           GAMBIA                         1                             0      187   1776  co_occurence     
Keneba           GAMBIA                         1                             1       28   1776  co_occurence     
LCNI-5           MALAWI                         0                             0      630    693  co_occurence     
LCNI-5           MALAWI                         0                             1       14    693  co_occurence     
LCNI-5           MALAWI                         1                             0       45    693  co_occurence     
LCNI-5           MALAWI                         1                             1        4    693  co_occurence     
MAL-ED           BANGLADESH                     0                             0      193    221  co_occurence     
MAL-ED           BANGLADESH                     0                             1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                             0       14    221  co_occurence     
MAL-ED           BANGLADESH                     1                             1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                             0      165    180  co_occurence     
MAL-ED           BRAZIL                         0                             1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                             0       14    180  co_occurence     
MAL-ED           BRAZIL                         1                             1        1    180  co_occurence     
MAL-ED           INDIA                          0                             0      195    228  co_occurence     
MAL-ED           INDIA                          0                             1       14    228  co_occurence     
MAL-ED           INDIA                          1                             0       16    228  co_occurence     
MAL-ED           INDIA                          1                             1        3    228  co_occurence     
MAL-ED           NEPAL                          0                             0      217    229  co_occurence     
MAL-ED           NEPAL                          0                             1        3    229  co_occurence     
MAL-ED           NEPAL                          1                             0        8    229  co_occurence     
MAL-ED           NEPAL                          1                             1        1    229  co_occurence     
MAL-ED           PERU                           0                             0      188    222  co_occurence     
MAL-ED           PERU                           0                             1        2    222  co_occurence     
MAL-ED           PERU                           1                             0       28    222  co_occurence     
MAL-ED           PERU                           1                             1        4    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             0      213    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             0       24    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      191    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       33    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                             0      368    462  co_occurence     
NIH-Birth        BANGLADESH                     0                             1       41    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             0       43    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             1       10    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                             0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                             1       23    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             1        6    634  co_occurence     
PROBIT           BELARUS                        0                             0     2127   2146  co_occurence     
PROBIT           BELARUS                        0                             1        1   2146  co_occurence     
PROBIT           BELARUS                        1                             0       18   2146  co_occurence     
PROBIT           BELARUS                        1                             1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                             0      503    563  co_occurence     
PROVIDE          BANGLADESH                     0                             1       33    563  co_occurence     
PROVIDE          BANGLADESH                     1                             0       23    563  co_occurence     
PROVIDE          BANGLADESH                     1                             1        4    563  co_occurence     
ResPak           PAKISTAN                       0                             0        3      9  co_occurence     
ResPak           PAKISTAN                       0                             1        0      9  co_occurence     
ResPak           PAKISTAN                       1                             0        5      9  co_occurence     
ResPak           PAKISTAN                       1                             1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                             0      990   1259  co_occurence     
SAS-CompFeed     INDIA                          0                             1       84   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             0      141   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             1       44   1259  co_occurence     
SAS-FoodSuppl    INDIA                          0                             0      228    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                             1       46    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             0       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             1       14    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             0     1363   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             1       63   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             0      238   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             1       27   1691  co_occurence     


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
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN

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
![](/tmp/8c9c68d5-095f-4bde-86d6-6844e728783e/790a63b7-2758-4c10-b0c3-2806dfb7c472/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c9c68d5-095f-4bde-86d6-6844e728783e/790a63b7-2758-4c10-b0c3-2806dfb7c472/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c9c68d5-095f-4bde-86d6-6844e728783e/790a63b7-2758-4c10-b0c3-2806dfb7c472/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c9c68d5-095f-4bde-86d6-6844e728783e/790a63b7-2758-4c10-b0c3-2806dfb7c472/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0400715   0.0168316   0.0633115
CMC-V-BCS-2002   INDIA                          1                    NA                0.1172326   0.0532267   0.1812386
CMIN             BANGLADESH                     0                    NA                0.0817093   0.0412181   0.1222006
CMIN             BANGLADESH                     1                    NA                0.2324184   0.1102386   0.3545982
COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
COHORTS          PHILIPPINES                    0                    NA                0.0666032   0.0564527   0.0767538
COHORTS          PHILIPPINES                    1                    NA                0.1736032   0.1122003   0.2350062
EE               PAKISTAN                       0                    NA                0.1371114   0.0889743   0.1852485
EE               PAKISTAN                       1                    NA                0.3158736   0.2405909   0.3911563
GMS-Nepal        NEPAL                          0                    NA                0.0928021   0.0676299   0.1179743
GMS-Nepal        NEPAL                          1                    NA                0.3060135   0.1576876   0.4543393
IRC              INDIA                          0                    NA                0.0375636   0.0174002   0.0577269
IRC              INDIA                          1                    NA                0.2059047   0.1049516   0.3068577
JiVitA-4         BANGLADESH                     0                    NA                0.0780094   0.0687721   0.0872467
JiVitA-4         BANGLADESH                     1                    NA                0.2310595   0.1823140   0.2798049
Keneba           GAMBIA                         0                    NA                0.0468008   0.0363665   0.0572351
Keneba           GAMBIA                         1                    NA                0.1188851   0.0744756   0.1632947
NIH-Birth        BANGLADESH                     0                    NA                0.0999778   0.0707750   0.1291806
NIH-Birth        BANGLADESH                     1                    NA                0.1575442   0.0500073   0.2650811
NIH-Crypto       BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
NIH-Crypto       BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
SAS-CompFeed     INDIA                          0                    NA                0.0787667   0.0676066   0.0899268
SAS-CompFeed     INDIA                          1                    NA                0.2382946   0.1891000   0.2874892
SAS-FoodSuppl    INDIA                          0                    NA                0.1694384   0.1251980   0.2136788
SAS-FoodSuppl    INDIA                          1                    NA                0.2801564   0.1543129   0.4059999
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ZVITAMBO         ZIMBABWE                       0                    NA                0.0441321   0.0334571   0.0548071
ZVITAMBO         ZIMBABWE                       1                    NA                0.1016446   0.0648331   0.1384561


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0601093   0.0357249   0.0844936
CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA                      NA                   NA                0.0488432   0.0336878   0.0639985
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH                     NA                   NA                0.0960141   0.0859500   0.1060782
Keneba           GAMBIA                         NA                   NA                0.0563063   0.0455826   0.0670300
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
SAS-CompFeed     INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
SAS-FoodSuppl    INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0532229   0.0425206   0.0639253


### Parameter: RR


studyid          country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.925583   1.3144590    6.511452
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
CMIN             BANGLADESH                     1                    0                 2.844453   1.3771444    5.875139
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973427    3.795274
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES                    1                    0                 2.606529   1.7740869    3.829572
EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN                       1                    0                 2.303773   1.5073208    3.521063
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL                          1                    0                 3.297485   1.8919381    5.747232
IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA                          1                    0                 5.481496   2.6517230   11.331047
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.961944   2.3244958    3.774199
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA                         1                    0                 2.540237   1.6457236    3.920952
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.575792   0.7484501    3.317684
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA                          1                    0                 3.025321   2.2876465    4.000867
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.653441   0.9882445    2.766388
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177450   15.234013
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.303191   1.4895243    3.561330


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0200378    0.0019228   0.0381527
CMIN             BANGLADESH                     0                    NA                0.0279953    0.0009247   0.0550659
COHORTS          GUATEMALA                      0                    NA                0.0052996   -0.0023428   0.0129421
COHORTS          PHILIPPINES                    0                    NA                0.0085878    0.0041909   0.0129846
EE               PAKISTAN                       0                    NA                0.0767614    0.0372457   0.1162771
GMS-Nepal        NEPAL                          0                    NA                0.0162888    0.0044680   0.0281096
IRC              INDIA                          0                    NA                0.0241648    0.0079082   0.0404214
JiVitA-4         BANGLADESH                     0                    NA                0.0180047    0.0121168   0.0238925
Keneba           GAMBIA                         0                    NA                0.0095055    0.0038306   0.0151804
NIH-Birth        BANGLADESH                     0                    NA                0.0104118   -0.0025139   0.0233376
NIH-Crypto       BANGLADESH                     0                    NA                0.0066257   -0.0007663   0.0140176
SAS-CompFeed     INDIA                          0                    NA                0.0229013    0.0128360   0.0329666
SAS-FoodSuppl    INDIA                          0                    NA                0.0163201   -0.0038103   0.0364505
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0042243   -0.0001918   0.0086404
ZVITAMBO         ZIMBABWE                       0                    NA                0.0090909    0.0030424   0.0151394


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3333553   -0.0020237   0.5564824
CMIN             BANGLADESH                     0                    NA                0.2551879   -0.0204805   0.4563884
COHORTS          GUATEMALA                      0                    NA                0.1085032   -0.0585805   0.2492149
COHORTS          PHILIPPINES                    0                    NA                0.1142127    0.0559164   0.1689092
EE               PAKISTAN                       0                    NA                0.3589115    0.1576040   0.5121126
GMS-Nepal        NEPAL                          0                    NA                0.1493143    0.0394320   0.2466268
IRC              INDIA                          0                    NA                0.3914698    0.1227226   0.5778883
JiVitA-4         BANGLADESH                     0                    NA                0.1875213    0.1297277   0.2414769
Keneba           GAMBIA                         0                    NA                0.1688178    0.0674356   0.2591783
NIH-Birth        BANGLADESH                     0                    NA                0.0943190   -0.0285807   0.2025340
NIH-Crypto       BANGLADESH                     0                    NA                0.1448510   -0.0237354   0.2856751
SAS-CompFeed     INDIA                          0                    NA                0.2252557    0.1298229   0.3102224
SAS-FoodSuppl    INDIA                          0                    NA                0.0878567   -0.0259640   0.1890500
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1971326   -0.0160720   0.3656001
ZVITAMBO         ZIMBABWE                       0                    NA                0.1708074    0.0544625   0.2728365
