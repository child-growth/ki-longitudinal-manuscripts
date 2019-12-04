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

studyid                    country                        ever_sunderweight06    co_occurence   n_cell      n
-------------------------  -----------------------------  --------------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                                 0      196    221
ki0047075b-MAL-ED          BANGLADESH                     0                                 1       11    221
ki0047075b-MAL-ED          BANGLADESH                     1                                 0       11    221
ki0047075b-MAL-ED          BANGLADESH                     1                                 1        3    221
ki0047075b-MAL-ED          BRAZIL                         0                                 0      176    180
ki0047075b-MAL-ED          BRAZIL                         0                                 1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                                 0        3    180
ki0047075b-MAL-ED          BRAZIL                         1                                 1        0    180
ki0047075b-MAL-ED          INDIA                          0                                 0      187    228
ki0047075b-MAL-ED          INDIA                          0                                 1       10    228
ki0047075b-MAL-ED          INDIA                          1                                 0       24    228
ki0047075b-MAL-ED          INDIA                          1                                 1        7    228
ki0047075b-MAL-ED          NEPAL                          0                                 0      215    229
ki0047075b-MAL-ED          NEPAL                          0                                 1        2    229
ki0047075b-MAL-ED          NEPAL                          1                                 0       10    229
ki0047075b-MAL-ED          NEPAL                          1                                 1        2    229
ki0047075b-MAL-ED          PERU                           0                                 0      210    222
ki0047075b-MAL-ED          PERU                           0                                 1        4    222
ki0047075b-MAL-ED          PERU                           1                                 0        6    222
ki0047075b-MAL-ED          PERU                           1                                 1        2    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                 0      227    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                 1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                 0       10    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                 1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                                 0      286    369
ki1000108-CMC-V-BCS-2002   INDIA                          0                                 1        8    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                 0       61    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                 1       14    369
ki1000108-IRC              INDIA                          0                                 0      327    405
ki1000108-IRC              INDIA                          0                                 1       15    405
ki1000108-IRC              INDIA                          1                                 0       53    405
ki1000108-IRC              INDIA                          1                                 1       10    405
ki1000109-EE               PAKISTAN                       0                                 0      180    346
ki1000109-EE               PAKISTAN                       0                                 1       22    346
ki1000109-EE               PAKISTAN                       1                                 0       92    346
ki1000109-EE               PAKISTAN                       1                                 1       52    346
ki1000109-ResPak           PAKISTAN                       0                                 0        6      9
ki1000109-ResPak           PAKISTAN                       0                                 1        0      9
ki1000109-ResPak           PAKISTAN                       1                                 0        2      9
ki1000109-ResPak           PAKISTAN                       1                                 1        1      9
ki1000304b-SAS-CompFeed    INDIA                          0                                 0      992   1260
ki1000304b-SAS-CompFeed    INDIA                          0                                 1       73   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                 0      140   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                 1       55   1260
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 0      207    321
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 1       32    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 0       54    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 1       28    321
ki1017093-NIH-Birth        BANGLADESH                     0                                 0      362    462
ki1017093-NIH-Birth        BANGLADESH                     0                                 1       30    462
ki1017093-NIH-Birth        BANGLADESH                     1                                 0       49    462
ki1017093-NIH-Birth        BANGLADESH                     1                                 1       21    462
ki1017093b-PROVIDE         BANGLADESH                     0                                 0      497    563
ki1017093b-PROVIDE         BANGLADESH                     0                                 1       26    563
ki1017093b-PROVIDE         BANGLADESH                     1                                 0       29    563
ki1017093b-PROVIDE         BANGLADESH                     1                                 1       11    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                                 0      565    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                                 1       17    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                 0       40    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                 1       12    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980
ki1101329-Keneba           GAMBIA                         0                                 0     1668   1863
ki1101329-Keneba           GAMBIA                         0                                 1       75   1863
ki1101329-Keneba           GAMBIA                         1                                 0       86   1863
ki1101329-Keneba           GAMBIA                         1                                 1       34   1863
ki1113344-GMS-Nepal        NEPAL                          0                                 0      438    550
ki1113344-GMS-Nepal        NEPAL                          0                                 1       37    550
ki1113344-GMS-Nepal        NEPAL                          1                                 0       52    550
ki1113344-GMS-Nepal        NEPAL                          1                                 1       23    550
ki1114097-CMIN             BANGLADESH                     0                                 0      178    237
ki1114097-CMIN             BANGLADESH                     0                                 1       15    237
ki1114097-CMIN             BANGLADESH                     1                                 0       33    237
ki1114097-CMIN             BANGLADESH                     1                                 1       11    237
ki1114097-CONTENT          PERU                           0                                 0      197    200
ki1114097-CONTENT          PERU                           0                                 1        0    200
ki1114097-CONTENT          PERU                           1                                 0        2    200
ki1114097-CONTENT          PERU                           1                                 1        1    200
ki1119695-PROBIT           BELARUS                        0                                 0     2134   2146
ki1119695-PROBIT           BELARUS                        0                                 1        0   2146
ki1119695-PROBIT           BELARUS                        1                                 0       12   2146
ki1119695-PROBIT           BELARUS                        1                                 1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 0     1512   1692
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 1       70   1692
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 0       89   1692
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 1       21   1692
ki1135781-COHORTS          GUATEMALA                      0                                 0      693    779
ki1135781-COHORTS          GUATEMALA                      0                                 1       27    779
ki1135781-COHORTS          GUATEMALA                      1                                 0       48    779
ki1135781-COHORTS          GUATEMALA                      1                                 1       11    779
ki1135781-COHORTS          PHILIPPINES                    0                                 0     2203   2487
ki1135781-COHORTS          PHILIPPINES                    0                                 1      146   2487
ki1135781-COHORTS          PHILIPPINES                    1                                 0       97   2487
ki1135781-COHORTS          PHILIPPINES                    1                                 1       41   2487
ki1148112-LCNI-5           MALAWI                         0                                 0      669    692
ki1148112-LCNI-5           MALAWI                         0                                 1       14    692
ki1148112-LCNI-5           MALAWI                         1                                 0        5    692
ki1148112-LCNI-5           MALAWI                         1                                 1        4    692
kiGH5241-JiVitA-4          BANGLADESH                     0                                 0     3809   4547
kiGH5241-JiVitA-4          BANGLADESH                     0                                 1      286   4547
kiGH5241-JiVitA-4          BANGLADESH                     1                                 0      301   4547
kiGH5241-JiVitA-4          BANGLADESH                     1                                 1      151   4547


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/500f9414-f277-4768-967b-54093dae313a/1d1aa4b5-06d7-45eb-a42c-b41413211eeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/500f9414-f277-4768-967b-54093dae313a/1d1aa4b5-06d7-45eb-a42c-b41413211eeb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/500f9414-f277-4768-967b-54093dae313a/1d1aa4b5-06d7-45eb-a42c-b41413211eeb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/500f9414-f277-4768-967b-54093dae313a/1d1aa4b5-06d7-45eb-a42c-b41413211eeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0507614   0.0200412   0.0814816
ki0047075b-MAL-ED          INDIA         1                    NA                0.2258065   0.0782988   0.3733141
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
ki1000108-IRC              INDIA         0                    NA                0.0440790   0.0222864   0.0658716
ki1000108-IRC              INDIA         1                    NA                0.1517135   0.0579941   0.2454328
ki1000109-EE               PAKISTAN      0                    NA                0.1110455   0.0673070   0.1547841
ki1000109-EE               PAKISTAN      1                    NA                0.3598716   0.2801209   0.4396223
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0709384   0.0598083   0.0820685
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2483649   0.1768537   0.3198762
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1335744   0.0902108   0.1769380
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3417200   0.2371524   0.4462876
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0764780   0.0501010   0.1028550
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2736847   0.1647151   0.3826544
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0501864   0.0315356   0.0688371
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2613846   0.1149184   0.4078507
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0296242   0.0158959   0.0433524
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.2270025   0.1083698   0.3456352
ki1101329-Keneba           GAMBIA        0                    NA                0.0437891   0.0341561   0.0534220
ki1101329-Keneba           GAMBIA        1                    NA                0.2471952   0.1658758   0.3285145
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0779917   0.0538570   0.1021264
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3218673   0.2133479   0.4303868
ki1114097-CMIN             BANGLADESH    0                    NA                0.0775832   0.0396441   0.1155223
ki1114097-CMIN             BANGLADESH    1                    NA                0.2517224   0.1155439   0.3879010
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0441825   0.0340483   0.0543167
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1918739   0.1163413   0.2674065
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0378661   0.0238281   0.0519041
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1989326   0.0893190   0.3085462
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0629215   0.0531366   0.0727064
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2632996   0.1860950   0.3405043
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0701919   0.0617078   0.0786760
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3277921   0.2711560   0.3844281


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0585078   0.0478474   0.0691682
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0537825   0.0430304   0.0645346
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0961073   0.0860713   0.1061434


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.448387   1.825847   10.837790
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 6.860000   2.985432   15.763079
ki1000108-IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                 3.441855   1.555706    7.614783
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 3.240758   2.060835    5.096239
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.501136   2.402812    5.101503
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.558275   1.636291    3.999759
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.578606   2.108371    6.074084
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 5.208280   2.658263   10.204474
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 7.662744   3.813918   15.395622
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 5.645135   3.805481    8.374120
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.126943   2.608107    6.530275
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.244549   1.560485    6.746043
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.342755   2.753110    6.850259
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 5.253578   2.703597   10.208653
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 4.184574   3.003690    5.829718
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.669942   3.786641    5.759287


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0238000   0.0018774   0.0457226
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
ki1000108-IRC              INDIA         0                    NA                0.0176494   0.0025415   0.0327573
ki1000109-EE               PAKISTAN      0                    NA                0.1028273   0.0628145   0.1428401
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0306489   0.0185479   0.0427500
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0533415   0.0230126   0.0836704
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0339116   0.0154632   0.0523600
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0155330   0.0045517   0.0265143
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0161171   0.0057696   0.0264647
ki1101329-Keneba           GAMBIA        0                    NA                0.0147187   0.0089169   0.0205206
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0310992   0.0149803   0.0472181
ki1114097-CMIN             BANGLADESH    0                    NA                0.0321215   0.0057044   0.0585385
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0096000   0.0044708   0.0147291
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0109144   0.0027900   0.0190388
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0122695   0.0075754   0.0169636
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0259154   0.0196319   0.0321989


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3191998   0.0031572   0.5350431
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
ki1000108-IRC              INDIA         0                    NA                0.2859204   0.0267147   0.4760944
ki1000109-EE               PAKISTAN      0                    NA                0.4807872   0.2830791   0.6239725
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.3017002   0.1891365   0.3986379
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2853770   0.1142966   0.4234119
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.3071991   0.1393223   0.4423311
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2363536   0.0693209   0.3734082
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.3523542   0.1319310   0.5168068
ki1101329-Keneba           GAMBIA        0                    NA                0.2515687   0.1570138   0.3355177
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.2850759   0.1378804   0.4071398
ki1114097-CMIN             BANGLADESH    0                    NA                0.2927995   0.0338930   0.4823217
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1784961   0.0843230   0.2629839
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2237447   0.0549018   0.3624236
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1631779   0.1025179   0.2197379
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.2696509   0.2120319   0.3230566
