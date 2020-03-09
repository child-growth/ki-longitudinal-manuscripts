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

studyid          country                        ever_sstunted06    co_occurence   n_cell      n
---------------  -----------------------------  ----------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                             0      261    366
CMC-V-BCS-2002   INDIA                          0                             1       11    366
CMC-V-BCS-2002   INDIA                          1                             0       83    366
CMC-V-BCS-2002   INDIA                          1                             1       11    366
CMIN             BANGLADESH                     0                             0      166    237
CMIN             BANGLADESH                     0                             1       15    237
CMIN             BANGLADESH                     1                             0       45    237
CMIN             BANGLADESH                     1                             1       11    237
COHORTS          GUATEMALA                      0                             0      637    778
COHORTS          GUATEMALA                      0                             1       29    778
COHORTS          GUATEMALA                      1                             0      103    778
COHORTS          GUATEMALA                      1                             1        9    778
COHORTS          PHILIPPINES                    0                             0     2166   2487
COHORTS          PHILIPPINES                    0                             1      152   2487
COHORTS          PHILIPPINES                    1                             0      134   2487
COHORTS          PHILIPPINES                    1                             1       35   2487
CONTENT          PERU                           0                             0      193    200
CONTENT          PERU                           0                             1        0    200
CONTENT          PERU                           1                             0        7    200
CONTENT          PERU                           1                             1        0    200
EE               PAKISTAN                       0                             0      169    346
EE               PAKISTAN                       0                             1       27    346
EE               PAKISTAN                       1                             0      103    346
EE               PAKISTAN                       1                             1       47    346
GMS-Nepal        NEPAL                          0                             0      462    550
GMS-Nepal        NEPAL                          0                             1       47    550
GMS-Nepal        NEPAL                          1                             0       28    550
GMS-Nepal        NEPAL                          1                             1       13    550
IRC              INDIA                          0                             0      331    405
IRC              INDIA                          0                             1       13    405
IRC              INDIA                          1                             0       49    405
IRC              INDIA                          1                             1       12    405
JiVitA-4         BANGLADESH                     0                             0     3719   4541
JiVitA-4         BANGLADESH                     0                             1      311   4541
JiVitA-4         BANGLADESH                     1                             0      386   4541
JiVitA-4         BANGLADESH                     1                             1      125   4541
Keneba           GAMBIA                         0                             0     1489   1776
Keneba           GAMBIA                         0                             1       72   1776
Keneba           GAMBIA                         1                             0      187   1776
Keneba           GAMBIA                         1                             1       28   1776
LCNI-5           MALAWI                         0                             0      630    693
LCNI-5           MALAWI                         0                             1       14    693
LCNI-5           MALAWI                         1                             0       45    693
LCNI-5           MALAWI                         1                             1        4    693
MAL-ED           BANGLADESH                     0                             0      193    221
MAL-ED           BANGLADESH                     0                             1       12    221
MAL-ED           BANGLADESH                     1                             0       14    221
MAL-ED           BANGLADESH                     1                             1        2    221
MAL-ED           BRAZIL                         0                             0      165    180
MAL-ED           BRAZIL                         0                             1        0    180
MAL-ED           BRAZIL                         1                             0       14    180
MAL-ED           BRAZIL                         1                             1        1    180
MAL-ED           INDIA                          0                             0      195    228
MAL-ED           INDIA                          0                             1       14    228
MAL-ED           INDIA                          1                             0       16    228
MAL-ED           INDIA                          1                             1        3    228
MAL-ED           NEPAL                          0                             0      217    229
MAL-ED           NEPAL                          0                             1        3    229
MAL-ED           NEPAL                          1                             0        8    229
MAL-ED           NEPAL                          1                             1        1    229
MAL-ED           PERU                           0                             0      188    222
MAL-ED           PERU                           0                             1        2    222
MAL-ED           PERU                           1                             0       28    222
MAL-ED           PERU                           1                             1        4    222
MAL-ED           SOUTH AFRICA                   0                             0      213    241
MAL-ED           SOUTH AFRICA                   0                             1        3    241
MAL-ED           SOUTH AFRICA                   1                             0       24    241
MAL-ED           SOUTH AFRICA                   1                             1        1    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      191    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       33    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1    225
NIH-Birth        BANGLADESH                     0                             0      368    462
NIH-Birth        BANGLADESH                     0                             1       41    462
NIH-Birth        BANGLADESH                     1                             0       43    462
NIH-Birth        BANGLADESH                     1                             1       10    462
NIH-Crypto       BANGLADESH                     0                             0      565    634
NIH-Crypto       BANGLADESH                     0                             1       23    634
NIH-Crypto       BANGLADESH                     1                             0       40    634
NIH-Crypto       BANGLADESH                     1                             1        6    634
PROBIT           BELARUS                        0                             0     2127   2146
PROBIT           BELARUS                        0                             1        1   2146
PROBIT           BELARUS                        1                             0       18   2146
PROBIT           BELARUS                        1                             1        0   2146
PROVIDE          BANGLADESH                     0                             0      503    563
PROVIDE          BANGLADESH                     0                             1       33    563
PROVIDE          BANGLADESH                     1                             0       23    563
PROVIDE          BANGLADESH                     1                             1        4    563
ResPak           PAKISTAN                       0                             0        3      9
ResPak           PAKISTAN                       0                             1        0      9
ResPak           PAKISTAN                       1                             0        5      9
ResPak           PAKISTAN                       1                             1        1      9
SAS-CompFeed     INDIA                          0                             0      990   1259
SAS-CompFeed     INDIA                          0                             1       84   1259
SAS-CompFeed     INDIA                          1                             0      141   1259
SAS-CompFeed     INDIA                          1                             1       44   1259
SAS-FoodSuppl    INDIA                          0                             0      228    323
SAS-FoodSuppl    INDIA                          0                             1       46    323
SAS-FoodSuppl    INDIA                          1                             0       35    323
SAS-FoodSuppl    INDIA                          1                             1       14    323
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980
ZVITAMBO         ZIMBABWE                       0                             0     1363   1691
ZVITAMBO         ZIMBABWE                       0                             1       63   1691
ZVITAMBO         ZIMBABWE                       1                             0      238   1691
ZVITAMBO         ZIMBABWE                       1                             1       27   1691


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
![](/tmp/c366266d-6722-4542-aac3-1e4036d0b3d0/e66d4d83-1b97-4a84-951c-1591295c0bc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c366266d-6722-4542-aac3-1e4036d0b3d0/e66d4d83-1b97-4a84-951c-1591295c0bc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c366266d-6722-4542-aac3-1e4036d0b3d0/e66d4d83-1b97-4a84-951c-1591295c0bc2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c366266d-6722-4542-aac3-1e4036d0b3d0/e66d4d83-1b97-4a84-951c-1591295c0bc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0406810   0.0173173   0.0640446
CMC-V-BCS-2002   INDIA                          1                    NA                0.1275418   0.0622944   0.1927891
CMIN             BANGLADESH                     0                    NA                0.0816394   0.0413060   0.1219728
CMIN             BANGLADESH                     1                    NA                0.2302329   0.1112664   0.3491994
COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
COHORTS          PHILIPPINES                    0                    NA                0.0664528   0.0563050   0.0766005
COHORTS          PHILIPPINES                    1                    NA                0.1693747   0.1058014   0.2329480
EE               PAKISTAN                       0                    NA                0.1402219   0.0911783   0.1892655
EE               PAKISTAN                       1                    NA                0.3081627   0.2327181   0.3836073
GMS-Nepal        NEPAL                          0                    NA                0.0925577   0.0673809   0.1177345
GMS-Nepal        NEPAL                          1                    NA                0.2967986   0.1467642   0.4468330
IRC              INDIA                          0                    NA                0.0372818   0.0171939   0.0573697
IRC              INDIA                          1                    NA                0.2050953   0.1033225   0.3068681
JiVitA-4         BANGLADESH                     0                    NA                0.0779640   0.0687294   0.0871985
JiVitA-4         BANGLADESH                     1                    NA                0.2303583   0.1808506   0.2798660
Keneba           GAMBIA                         0                    NA                0.0468033   0.0363798   0.0572268
Keneba           GAMBIA                         1                    NA                0.1183553   0.0736310   0.1630797
NIH-Birth        BANGLADESH                     0                    NA                0.1002702   0.0710981   0.1294424
NIH-Birth        BANGLADESH                     1                    NA                0.1784656   0.0682325   0.2886986
NIH-Crypto       BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
NIH-Crypto       BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
SAS-CompFeed     INDIA                          0                    NA                0.0787667   0.0676066   0.0899268
SAS-CompFeed     INDIA                          1                    NA                0.2382946   0.1891000   0.2874892
SAS-FoodSuppl    INDIA                          0                    NA                0.1684846   0.1242273   0.2127420
SAS-FoodSuppl    INDIA                          1                    NA                0.2759819   0.1496915   0.4022722
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ZVITAMBO         ZIMBABWE                       0                    NA                0.0440869   0.0334128   0.0547609
ZVITAMBO         ZIMBABWE                       1                    NA                0.0998320   0.0629998   0.1366643


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
CMC-V-BCS-2002   INDIA                          1                    0                 3.135170   1.4484716    6.785976
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
CMIN             BANGLADESH                     1                    0                 2.820121   1.3781062    5.771021
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973427    3.795274
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES                    1                    0                 2.548799   1.7002396    3.820858
EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN                       1                    0                 2.197679   1.4332079    3.369917
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL                          1                    0                 3.206632   1.8050512    5.696509
IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA                          1                    0                 5.501216   2.6441332   11.445482
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.954677   2.3093873    3.780273
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA                         1                    0                 2.528783   1.6324320    3.917310
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.779846   0.8986933    3.524953
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA                          1                    0                 3.025321   2.2876465    4.000867
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.638024   0.9716975    2.761274
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177450   15.234013
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.264437   1.4557187    3.522436


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0194283    0.0012987   0.0375580
CMIN             BANGLADESH                     0                    NA                0.0280653    0.0012325   0.0548980
COHORTS          GUATEMALA                      0                    NA                0.0052996   -0.0023428   0.0129421
COHORTS          PHILIPPINES                    0                    NA                0.0087382    0.0043333   0.0131432
EE               PAKISTAN                       0                    NA                0.0736509    0.0336748   0.1136271
GMS-Nepal        NEPAL                          0                    NA                0.0165332    0.0046572   0.0284091
IRC              INDIA                          0                    NA                0.0244466    0.0080992   0.0407940
JiVitA-4         BANGLADESH                     0                    NA                0.0180501    0.0121649   0.0239353
Keneba           GAMBIA                         0                    NA                0.0095030    0.0038348   0.0151713
NIH-Birth        BANGLADESH                     0                    NA                0.0101194   -0.0027439   0.0229827
NIH-Crypto       BANGLADESH                     0                    NA                0.0066257   -0.0007663   0.0140176
SAS-CompFeed     INDIA                          0                    NA                0.0229013    0.0128360   0.0329666
SAS-FoodSuppl    INDIA                          0                    NA                0.0172739   -0.0031701   0.0377178
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0042243   -0.0001918   0.0086404
ZVITAMBO         ZIMBABWE                       0                    NA                0.0091360    0.0030811   0.0151910


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3232166   -0.0127024   0.5477094
CMIN             BANGLADESH                     0                    NA                0.2558257   -0.0167831   0.4553455
COHORTS          GUATEMALA                      0                    NA                0.1085032   -0.0585805   0.2492149
COHORTS          PHILIPPINES                    0                    NA                0.1162138    0.0578157   0.1709923
EE               PAKISTAN                       0                    NA                0.3443679    0.1395307   0.5004429
GMS-Nepal        NEPAL                          0                    NA                0.1515541    0.0411107   0.2492769
IRC              INDIA                          0                    NA                0.3960348    0.1262967   0.5824967
JiVitA-4         BANGLADESH                     0                    NA                0.1879945    0.1302422   0.2419120
Keneba           GAMBIA                         0                    NA                0.1687738    0.0675788   0.2589862
NIH-Birth        BANGLADESH                     0                    NA                0.0916696   -0.0305268   0.1993762
NIH-Crypto       BANGLADESH                     0                    NA                0.1448510   -0.0237354   0.2856751
SAS-CompFeed     INDIA                          0                    NA                0.2252557    0.1298229   0.3102224
SAS-FoodSuppl    INDIA                          0                    NA                0.0929911   -0.0226894   0.1955865
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1971326   -0.0160720   0.3656001
ZVITAMBO         ZIMBABWE                       0                    NA                0.1716562    0.0551862   0.2737685
