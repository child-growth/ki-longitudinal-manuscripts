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

studyid                    country                        ever_sunderweight06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  --------------------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                                 0      196    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                                 1       11    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                                 0       11    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                                 1        3    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                                 0      176    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                                 1        1    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                                 0        3    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                                 1        0    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                                 0      187    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                                 1       10    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                                 0       24    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                                 1        7    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                                 0      215    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                                 1        2    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                                 0       10    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                                 1        2    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                                 0      210    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                                 1        4    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                                 0        6    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                                 1        2    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                 0      227    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                 1        3    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                 0       10    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                 1        1    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                                 0      286    369  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                                 1        8    369  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                                 0       61    369  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                                 1       14    369  co_occurence     
ki1000108-IRC              INDIA                          0                                 0      327    405  co_occurence     
ki1000108-IRC              INDIA                          0                                 1       15    405  co_occurence     
ki1000108-IRC              INDIA                          1                                 0       53    405  co_occurence     
ki1000108-IRC              INDIA                          1                                 1       10    405  co_occurence     
ki1000109-EE               PAKISTAN                       0                                 0      180    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                                 1       22    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                                 0       92    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                                 1       52    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                                 0        6      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                                 1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                                 0        2      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                                 1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                                 0      992   1260  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                                 1       73   1260  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                                 0      140   1260  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                                 1       55   1260  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 0      207    321  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 1       32    321  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 0       54    321  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 1       28    321  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                                 0      362    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                                 1       30    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                                 0       49    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                                 1       21    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                                 0      497    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                                 1       26    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                                 0       29    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                                 1       11    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                                 0      565    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                                 1       17    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                                 0       40    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                                 1       12    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                                 0     1668   1863  co_occurence     
ki1101329-Keneba           GAMBIA                         0                                 1       75   1863  co_occurence     
ki1101329-Keneba           GAMBIA                         1                                 0       86   1863  co_occurence     
ki1101329-Keneba           GAMBIA                         1                                 1       34   1863  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                                 0      438    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                                 1       37    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                                 0       52    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                                 1       23    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                                 0      178    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                                 1       15    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                                 0       33    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                                 1       11    237  co_occurence     
ki1114097-CONTENT          PERU                           0                                 0      197    200  co_occurence     
ki1114097-CONTENT          PERU                           0                                 1        0    200  co_occurence     
ki1114097-CONTENT          PERU                           1                                 0        2    200  co_occurence     
ki1114097-CONTENT          PERU                           1                                 1        1    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                                 0     2134   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                                 1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                                 0       12   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                                 1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 0     1512   1692  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 1       70   1692  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 0       89   1692  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 1       21   1692  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                                 0      693    779  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                                 1       27    779  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                                 0       48    779  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                                 1       11    779  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                                 0     2203   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                                 1      146   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                                 0       97   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                                 1       41   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                                 0      669    692  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                                 1       14    692  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                                 0        5    692  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                                 1        4    692  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                                 0     3809   4547  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                                 1      286   4547  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                                 0      301   4547  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                                 1      151   4547  co_occurence     


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
![](/tmp/1d71450c-527c-4b1b-822c-ca23f8d467c8/e06769ef-f476-4a1f-a593-6cceb061784e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d71450c-527c-4b1b-822c-ca23f8d467c8/e06769ef-f476-4a1f-a593-6cceb061784e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d71450c-527c-4b1b-822c-ca23f8d467c8/e06769ef-f476-4a1f-a593-6cceb061784e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d71450c-527c-4b1b-822c-ca23f8d467c8/e06769ef-f476-4a1f-a593-6cceb061784e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0507614   0.0200412   0.0814816
ki0047075b-MAL-ED          INDIA         1                    NA                0.2258065   0.0782988   0.3733141
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
ki1000108-IRC              INDIA         0                    NA                0.0439211   0.0222264   0.0656158
ki1000108-IRC              INDIA         1                    NA                0.1651663   0.0726065   0.2577262
ki1000109-EE               PAKISTAN      0                    NA                0.1100302   0.0666470   0.1534134
ki1000109-EE               PAKISTAN      1                    NA                0.3603125   0.2801050   0.4405201
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0709384   0.0598083   0.0820685
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2483649   0.1768537   0.3198762
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1313464   0.0880542   0.1746386
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3259934   0.2206771   0.4313097
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0765156   0.0500850   0.1029463
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2505624   0.1399861   0.3611386
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0500306   0.0313862   0.0686750
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2464716   0.1021052   0.3908379
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0295636   0.0158457   0.0432814
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.2261254   0.1072945   0.3449563
ki1101329-Keneba           GAMBIA        0                    NA                0.0438271   0.0341822   0.0534719
ki1101329-Keneba           GAMBIA        1                    NA                0.2378628   0.1569295   0.3187960
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0782967   0.0541335   0.1024599
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3144567   0.2084382   0.4204752
ki1114097-CMIN             BANGLADESH    0                    NA                0.0772984   0.0394519   0.1151449
ki1114097-CMIN             BANGLADESH    1                    NA                0.2508871   0.1171694   0.3846048
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0441975   0.0340663   0.0543288
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1903991   0.1155826   0.2652156
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0379023   0.0238438   0.0519608
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1875583   0.0811690   0.2939476
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0629033   0.0531130   0.0726937
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2681030   0.1908481   0.3453579
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0702513   0.0617672   0.0787354
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3237705   0.2670680   0.3804730


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
ki1000108-IRC              INDIA         1                    0                 3.760524   1.781566    7.937702
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 3.274669   2.083114    5.147802
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.501136   2.402812    5.101503
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.481937   1.565846    3.933982
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.274656   1.863648    5.753967
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.926418   2.462206    9.856850
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 7.648788   3.798134   15.403344
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 5.427305   3.624397    8.127045
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.016220   2.539181    6.352451
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.245695   1.572725    6.698268
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.307913   2.733501    6.789138
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 4.948466   2.512902    9.744635
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 4.262142   3.072784    5.911855
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.608747   3.729192    5.695751


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0238000   0.0018774   0.0457226
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
ki1000108-IRC              INDIA         0                    NA                0.0178073   0.0028034   0.0328112
ki1000109-EE               PAKISTAN      0                    NA                0.1038426   0.0640964   0.1435889
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0306489   0.0185479   0.0427500
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0555695   0.0250894   0.0860496
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0338740   0.0154442   0.0523038
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0156888   0.0047089   0.0266686
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0161778   0.0058344   0.0265212
ki1101329-Keneba           GAMBIA        0                    NA                0.0146807   0.0088678   0.0204937
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0307942   0.0146697   0.0469188
ki1114097-CMIN             BANGLADESH    0                    NA                0.0324062   0.0060857   0.0587268
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0095850   0.0044677   0.0147023
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0108782   0.0027492   0.0190072
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0122876   0.0075908   0.0169845
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0258560   0.0195526   0.0321594


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3191998   0.0031572   0.5350431
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
ki1000108-IRC              INDIA         0                    NA                0.2884783   0.0319026   0.4770536
ki1000109-EE               PAKISTAN      0                    NA                0.4855344   0.2897633   0.6273428
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.3017002   0.1891365   0.3986379
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2972969   0.1250827   0.4356134
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.3068584   0.1388616   0.4420812
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2387238   0.0716980   0.3756973
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.3536794   0.1334443   0.5179418
ki1101329-Keneba           GAMBIA        0                    NA                0.2509192   0.1560887   0.3350936
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.2822804   0.1349741   0.4045017
ki1114097-CMIN             BANGLADESH    0                    NA                0.2953952   0.0377339   0.4840637
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1782173   0.0842863   0.2625132
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2230026   0.0538693   0.3619011
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1634191   0.1026945   0.2200342
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.2690327   0.2112135   0.3226137
