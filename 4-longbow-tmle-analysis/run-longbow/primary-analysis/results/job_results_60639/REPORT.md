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

studyid          country                        ever_sunderweight06    co_occurence   n_cell      n
---------------  -----------------------------  --------------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                                 0      286    369
CMC-V-BCS-2002   INDIA                          0                                 1        8    369
CMC-V-BCS-2002   INDIA                          1                                 0       61    369
CMC-V-BCS-2002   INDIA                          1                                 1       14    369
CMIN             BANGLADESH                     0                                 0      178    237
CMIN             BANGLADESH                     0                                 1       15    237
CMIN             BANGLADESH                     1                                 0       33    237
CMIN             BANGLADESH                     1                                 1       11    237
COHORTS          GUATEMALA                      0                                 0      693    779
COHORTS          GUATEMALA                      0                                 1       27    779
COHORTS          GUATEMALA                      1                                 0       48    779
COHORTS          GUATEMALA                      1                                 1       11    779
COHORTS          PHILIPPINES                    0                                 0     2203   2487
COHORTS          PHILIPPINES                    0                                 1      146   2487
COHORTS          PHILIPPINES                    1                                 0       97   2487
COHORTS          PHILIPPINES                    1                                 1       41   2487
CONTENT          PERU                           0                                 0      198    200
CONTENT          PERU                           0                                 1        0    200
CONTENT          PERU                           1                                 0        2    200
CONTENT          PERU                           1                                 1        0    200
EE               PAKISTAN                       0                                 0      180    346
EE               PAKISTAN                       0                                 1       22    346
EE               PAKISTAN                       1                                 0       92    346
EE               PAKISTAN                       1                                 1       52    346
GMS-Nepal        NEPAL                          0                                 0      438    550
GMS-Nepal        NEPAL                          0                                 1       37    550
GMS-Nepal        NEPAL                          1                                 0       52    550
GMS-Nepal        NEPAL                          1                                 1       23    550
IRC              INDIA                          0                                 0      327    405
IRC              INDIA                          0                                 1       15    405
IRC              INDIA                          1                                 0       53    405
IRC              INDIA                          1                                 1       10    405
JiVitA-4         BANGLADESH                     0                                 0     3809   4547
JiVitA-4         BANGLADESH                     0                                 1      286   4547
JiVitA-4         BANGLADESH                     1                                 0      301   4547
JiVitA-4         BANGLADESH                     1                                 1      151   4547
Keneba           GAMBIA                         0                                 0     1668   1863
Keneba           GAMBIA                         0                                 1       75   1863
Keneba           GAMBIA                         1                                 0       86   1863
Keneba           GAMBIA                         1                                 1       34   1863
LCNI-5           MALAWI                         0                                 0      669    692
LCNI-5           MALAWI                         0                                 1       14    692
LCNI-5           MALAWI                         1                                 0        5    692
LCNI-5           MALAWI                         1                                 1        4    692
MAL-ED           BANGLADESH                     0                                 0      196    221
MAL-ED           BANGLADESH                     0                                 1       11    221
MAL-ED           BANGLADESH                     1                                 0       11    221
MAL-ED           BANGLADESH                     1                                 1        3    221
MAL-ED           BRAZIL                         0                                 0      176    180
MAL-ED           BRAZIL                         0                                 1        1    180
MAL-ED           BRAZIL                         1                                 0        3    180
MAL-ED           BRAZIL                         1                                 1        0    180
MAL-ED           INDIA                          0                                 0      187    228
MAL-ED           INDIA                          0                                 1       10    228
MAL-ED           INDIA                          1                                 0       24    228
MAL-ED           INDIA                          1                                 1        7    228
MAL-ED           NEPAL                          0                                 0      215    229
MAL-ED           NEPAL                          0                                 1        2    229
MAL-ED           NEPAL                          1                                 0       10    229
MAL-ED           NEPAL                          1                                 1        2    229
MAL-ED           PERU                           0                                 0      210    222
MAL-ED           PERU                           0                                 1        4    222
MAL-ED           PERU                           1                                 0        6    222
MAL-ED           PERU                           1                                 1        2    222
MAL-ED           SOUTH AFRICA                   0                                 0      227    241
MAL-ED           SOUTH AFRICA                   0                                 1        3    241
MAL-ED           SOUTH AFRICA                   1                                 0       10    241
MAL-ED           SOUTH AFRICA                   1                                 1        1    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225
NIH-Birth        BANGLADESH                     0                                 0      362    462
NIH-Birth        BANGLADESH                     0                                 1       30    462
NIH-Birth        BANGLADESH                     1                                 0       49    462
NIH-Birth        BANGLADESH                     1                                 1       21    462
NIH-Crypto       BANGLADESH                     0                                 0      565    634
NIH-Crypto       BANGLADESH                     0                                 1       17    634
NIH-Crypto       BANGLADESH                     1                                 0       40    634
NIH-Crypto       BANGLADESH                     1                                 1       12    634
PROBIT           BELARUS                        0                                 0     2138   2146
PROBIT           BELARUS                        0                                 1        1   2146
PROBIT           BELARUS                        1                                 0        7   2146
PROBIT           BELARUS                        1                                 1        0   2146
PROVIDE          BANGLADESH                     0                                 0      497    563
PROVIDE          BANGLADESH                     0                                 1       26    563
PROVIDE          BANGLADESH                     1                                 0       29    563
PROVIDE          BANGLADESH                     1                                 1       11    563
ResPak           PAKISTAN                       0                                 0        6      9
ResPak           PAKISTAN                       0                                 1        0      9
ResPak           PAKISTAN                       1                                 0        2      9
ResPak           PAKISTAN                       1                                 1        1      9
SAS-CompFeed     INDIA                          0                                 0      992   1260
SAS-CompFeed     INDIA                          0                                 1       73   1260
SAS-CompFeed     INDIA                          1                                 0      140   1260
SAS-CompFeed     INDIA                          1                                 1       55   1260
SAS-FoodSuppl    INDIA                          0                                 0      207    321
SAS-FoodSuppl    INDIA                          0                                 1       32    321
SAS-FoodSuppl    INDIA                          1                                 0       54    321
SAS-FoodSuppl    INDIA                          1                                 1       28    321
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980
ZVITAMBO         ZIMBABWE                       0                                 0     1512   1692
ZVITAMBO         ZIMBABWE                       0                                 1       70   1692
ZVITAMBO         ZIMBABWE                       1                                 0       89   1692
ZVITAMBO         ZIMBABWE                       1                                 1       21   1692


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
![](/tmp/f0d4d46b-aeba-404b-a6e9-2af84155833f/1cf4f3d3-7aa5-4c7f-a597-445c048a8177/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f0d4d46b-aeba-404b-a6e9-2af84155833f/1cf4f3d3-7aa5-4c7f-a597-445c048a8177/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f0d4d46b-aeba-404b-a6e9-2af84155833f/1cf4f3d3-7aa5-4c7f-a597-445c048a8177/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f0d4d46b-aeba-404b-a6e9-2af84155833f/1cf4f3d3-7aa5-4c7f-a597-445c048a8177/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
CMIN             BANGLADESH    0                    NA                0.0764077   0.0384166   0.1143989
CMIN             BANGLADESH    1                    NA                0.2441319   0.1208071   0.3674567
COHORTS          GUATEMALA     0                    NA                0.0378382   0.0237903   0.0518861
COHORTS          GUATEMALA     1                    NA                0.1854166   0.0817507   0.2890825
COHORTS          PHILIPPINES   0                    NA                0.0626706   0.0528980   0.0724432
COHORTS          PHILIPPINES   1                    NA                0.2724178   0.1947129   0.3501226
EE               PAKISTAN      0                    NA                0.1089699   0.0658112   0.1521286
EE               PAKISTAN      1                    NA                0.3662956   0.2868033   0.4457880
GMS-Nepal        NEPAL         0                    NA                0.0782613   0.0541083   0.1024143
GMS-Nepal        NEPAL         1                    NA                0.3051348   0.1984939   0.4117758
IRC              INDIA         0                    NA                0.0432460   0.0217652   0.0647268
IRC              INDIA         1                    NA                0.1655217   0.0709378   0.2601055
JiVitA-4         BANGLADESH    0                    NA                0.0704741   0.0619816   0.0789667
JiVitA-4         BANGLADESH    1                    NA                0.3143583   0.2575581   0.3711586
Keneba           GAMBIA        0                    NA                0.0432555   0.0337113   0.0527996
Keneba           GAMBIA        1                    NA                0.2718388   0.1957702   0.3479074
MAL-ED           INDIA         0                    NA                0.0507614   0.0200412   0.0814816
MAL-ED           INDIA         1                    NA                0.2258065   0.0782988   0.3733141
NIH-Birth        BANGLADESH    0                    NA                0.0769169   0.0504867   0.1033471
NIH-Birth        BANGLADESH    1                    NA                0.3066497   0.1968882   0.4164111
NIH-Crypto       BANGLADESH    0                    NA                0.0297559   0.0160377   0.0434741
NIH-Crypto       BANGLADESH    1                    NA                0.2583742   0.1461989   0.3705496
PROVIDE          BANGLADESH    0                    NA                0.0498033   0.0311499   0.0684568
PROVIDE          BANGLADESH    1                    NA                0.3046282   0.1606291   0.4486273
SAS-CompFeed     INDIA         0                    NA                0.0688482   0.0583698   0.0793267
SAS-CompFeed     INDIA         1                    NA                0.2762252   0.2058203   0.3466301
SAS-FoodSuppl    INDIA         0                    NA                0.1385087   0.0952607   0.1817567
SAS-FoodSuppl    INDIA         1                    NA                0.3462157   0.2429497   0.4494816
ZVITAMBO         ZIMBABWE      0                    NA                0.0441664   0.0340306   0.0543021
ZVITAMBO         ZIMBABWE      1                    NA                0.1895099   0.1139444   0.2650755


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
CMIN             BANGLADESH    1                    0                 3.195121   1.579467    6.463445
COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
COHORTS          GUATEMALA     1                    0                 4.900245   2.504982    9.585860
COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                 4.346821   3.140915    6.015717
EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                 3.361439   2.140034    5.279950
GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                 3.898925   2.445900    6.215143
IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
IRC              INDIA         1                    0                 3.827441   1.794275    8.164471
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 4.460620   3.594452    5.535512
Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                 6.284495   4.408507    8.958788
MAL-ED           INDIA         0                    0                 1.000000   1.000000    1.000000
MAL-ED           INDIA         1                    0                 4.448387   1.825847   10.837790
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 3.986767   2.425733    6.552374
NIH-Crypto       BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 8.683129   4.609716   16.356046
PROVIDE          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
PROVIDE          BANGLADESH    1                    0                 6.116622   3.350158   11.167553
SAS-CompFeed     INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                 4.012089   2.853116    5.641852
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.499595   1.634518    3.822516
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 4.290819   2.707146    6.800936


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
CMIN             BANGLADESH    0                    NA                0.0332969   0.0073778   0.0592161
COHORTS          GUATEMALA     0                    NA                0.0109423   0.0028122   0.0190724
COHORTS          PHILIPPINES   0                    NA                0.0125204   0.0077976   0.0172433
EE               PAKISTAN      0                    NA                0.1049030   0.0654601   0.1443458
GMS-Nepal        NEPAL         0                    NA                0.0308296   0.0148410   0.0468183
IRC              INDIA         0                    NA                0.0184824   0.0035004   0.0334643
JiVitA-4         BANGLADESH    0                    NA                0.0256332   0.0193658   0.0319006
Keneba           GAMBIA        0                    NA                0.0152523   0.0094951   0.0210095
MAL-ED           INDIA         0                    NA                0.0238000   0.0018774   0.0457226
NIH-Birth        BANGLADESH    0                    NA                0.0334727   0.0150939   0.0518516
NIH-Crypto       BANGLADESH    0                    NA                0.0159854   0.0056090   0.0263619
PROVIDE          BANGLADESH    0                    NA                0.0159160   0.0049509   0.0268812
SAS-CompFeed     INDIA         0                    NA                0.0327391   0.0214154   0.0440627
SAS-FoodSuppl    INDIA         0                    NA                0.0484072   0.0191200   0.0776944
ZVITAMBO         ZIMBABWE      0                    NA                0.0096161   0.0044701   0.0147622


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
CMIN             BANGLADESH    0                    NA                0.3035143   0.0480777   0.4904076
COHORTS          GUATEMALA     0                    NA                0.2243164   0.0552318   0.3631399
COHORTS          PHILIPPINES   0                    NA                0.1665149   0.1055370   0.2233358
EE               PAKISTAN      0                    NA                0.4904922   0.2962722   0.6311099
GMS-Nepal        NEPAL         0                    NA                0.2826050   0.1365284   0.4039694
IRC              INDIA         0                    NA                0.2994142   0.0446709   0.4862288
JiVitA-4         BANGLADESH    0                    NA                0.2667143   0.2091763   0.3200660
Keneba           GAMBIA        0                    NA                0.2606885   0.1675374   0.3434162
MAL-ED           INDIA         0                    NA                0.3191998   0.0031572   0.5350431
NIH-Birth        BANGLADESH    0                    NA                0.3032236   0.1358198   0.4381990
NIH-Crypto       BANGLADESH    0                    NA                0.3494747   0.1287191   0.5142976
PROVIDE          BANGLADESH    0                    NA                0.2421817   0.0751996   0.3790134
SAS-CompFeed     INDIA         0                    NA                0.3222753   0.2197575   0.4113231
SAS-FoodSuppl    INDIA         0                    NA                0.2589784   0.0946214   0.3934989
ZVITAMBO         ZIMBABWE      0                    NA                0.1787967   0.0843004   0.2635413
