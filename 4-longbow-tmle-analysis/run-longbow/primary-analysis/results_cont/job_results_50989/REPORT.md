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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             20      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      82
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4             12      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             17      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2             15      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             11      55
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              7      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              7      31
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              8      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              5      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             14      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      90
Birth       ki1000108-IRC              INDIA                          Wealth Q4             91     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1             98     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2             99     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3            100     388
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            293     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            157     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            161     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            205     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            842    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            687    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            538    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            982    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4151   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5202   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5346   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4895   19594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            183     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            209     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            219     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            211     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             17      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             10      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              9      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             15      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4             99     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1            105     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2            100     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3            103     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            155     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            138     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            140     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            148     581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            141     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            145     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            139     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            138     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            175     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            195     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            216     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            743    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            570    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            910    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4742   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3705   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4157   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4199   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1140    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1203    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1211    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1271    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             17      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             18      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             18      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             17      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             10      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              8      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              7      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             17      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             14      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            156     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            129     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            142     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     576
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            127     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            119     499
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            403    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            213    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            219    1038
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            688    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            489    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            423    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            845    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            160     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            129     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            146     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            139     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2231    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2020    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2206    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2166    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1141    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1170    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1166    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1270    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/3e9c8c15-1c22-46fc-ab4a-16ee7880a12c/dcd69536-7675-48c9-a334-367c408b4adb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3e9c8c15-1c22-46fc-ab4a-16ee7880a12c/dcd69536-7675-48c9-a334-367c408b4adb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3e9c8c15-1c22-46fc-ab4a-16ee7880a12c/dcd69536-7675-48c9-a334-367c408b4adb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.8490478   -1.1576195   -0.5404761
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.1904762   -1.6458675   -0.7350848
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.3255748   -1.7912866   -0.8598629
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.9326454   -1.3620707   -0.5032201
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.1972317   -1.8092770   -0.5851864
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7953942   -1.2437001   -0.3470884
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.1506966   -1.6487447   -0.6526486
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.5069937   -2.2446314   -0.7693560
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.8788889   -1.1434362   -0.6143415
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.6800000   -1.2219811   -0.1380189
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.8871429   -1.8180540    0.0437683
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.0900000   -1.7651391   -0.4148609
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.7340000   -1.4942378    0.0262378
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.2622222   -1.7251583   -0.7992862
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.4455556   -1.8778392   -1.0132719
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.7675000   -1.2626961   -0.2723039
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.4155938   -1.0099977    0.1788101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.5551930   -1.1650100    0.0546241
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.4239166   -1.2196165    0.3717833
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.6213178   -1.0257950   -0.2168407
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3460000   -0.9837324    0.2917324
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1416667   -0.9344057    0.6510723
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.8314286   -1.0437617   -0.6190954
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.5520000   -2.0330768   -1.0709232
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.9572614   -1.2998237   -0.6146991
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.7202534   -1.3302475   -0.1102594
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.8687263   -1.3790463   -0.3584063
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2399081   -1.6680578   -0.8117585
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2598505   -0.5747638    0.0550627
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.2127573   -0.4971361    0.0716215
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.3952350   -0.6863659   -0.1041041
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.4294170   -0.6894904   -0.1693437
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2222469    0.0810939    0.3633998
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0514987   -0.1172477    0.2202450
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0946184   -0.1076200    0.2968569
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1447880   -0.0362473    0.3258233
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1160593   -0.1845994   -0.0475192
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3239100   -0.4030855   -0.2447344
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.3121961   -0.4037948   -0.2205974
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2841986   -0.3506261   -0.2177710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.5449821   -1.5812145   -1.5087497
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.6065823   -1.6360631   -1.5771016
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.5867131   -1.6166560   -1.5567701
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.5766840   -1.6089250   -1.5444431
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.4819761   -1.6367893   -1.3271629
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5439981   -1.6856557   -1.4023404
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4720655   -1.6161187   -1.3280122
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.4944039   -1.6368538   -1.3519540
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.0755098   -1.4127297   -0.7382898
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3801480   -1.8125805   -0.9477155
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.5737862   -2.1443498   -1.0032226
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.0780437   -1.5713840   -0.5847035
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.2626717   -1.6959764   -0.8293670
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.1515692   -1.6237133   -0.6794250
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.0596726   -1.4926284   -0.6267167
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.6518218   -2.3299904   -0.9736533
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -1.0148610   -1.4499858   -0.5797362
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.6438933   -1.1733006   -0.1144860
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.7854992   -1.5705648   -0.0004336
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.5186961   -0.7842816   -0.2531107
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.3860000   -2.2319969   -0.5400031
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.4966667   -2.0155653   -0.9777680
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -2.1162500   -2.6216415   -1.6108585
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.4027778   -1.7624187   -1.0431369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.8183752   -1.3976615   -0.2390889
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.7056046   -1.0963537   -0.3148556
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.8046228   -1.3530520   -0.2561936
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.8012616   -1.1651947   -0.4373284
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.1707714   -1.6384022   -0.7031405
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.1061424   -1.6368098   -0.5754749
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.5589071   -1.9511032   -1.1667110
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.7303023   -2.2257892   -1.2348155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7800844   -2.0490734   -1.5110954
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0612260   -1.3151516   -0.8073004
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4190258   -1.7088130   -1.1292386
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4373810   -1.7288225   -1.1459396
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.0560008   -1.3383657   -0.7736359
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.4226407   -1.6757922   -1.1694892
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.4316920   -1.6760193   -1.1873646
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.0247536   -1.2827965   -0.7667107
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.9033872   -1.0554149   -0.7513595
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.4477591   -1.6117522   -1.2837659
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.0684208   -1.2091777   -0.9276640
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.9906290   -1.1302591   -0.8509989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7292315   -0.8240671   -0.6343960
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4121668   -0.5008789   -0.3234546
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5472337   -0.6535731   -0.4408944
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5166370   -0.6027095   -0.4305645
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.2739354   -1.4149103   -1.1329604
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4173801   -1.5740882   -1.2606720
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3259539   -1.5021573   -1.1497506
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3038432   -1.4607760   -1.1469104
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.2377425   -0.5915412    0.1160562
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.3634191   -0.6918005   -0.0350377
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.2092897   -0.5746073    0.1560279
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.3645644   -0.7249477   -0.0041811
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6807687   -1.7861988   -1.5753386
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9416550   -2.0975096   -1.7858005
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -1.8949999   -2.0443071   -1.7456926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8350990   -1.9989864   -1.6712116
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9259126   -1.0071018   -0.8447234
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2488023   -1.3458894   -1.1517152
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1665068   -1.2643820   -1.0686316
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2367899   -1.3084029   -1.1651769
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.6137886   -1.7487914   -1.4787859
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.6098544   -1.7681490   -1.4515598
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -1.7027072   -1.8391563   -1.5662581
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.6414834   -1.7682198   -1.5147470
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.1938341   -1.2342238   -1.1534443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.4429045   -1.4827655   -1.4030435
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3745670   -1.4122110   -1.3369229
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3199295   -1.3595199   -1.2803391
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1691095   -1.2463599   -1.0918591
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5110050   -1.5757215   -1.4462886
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4181509   -1.4872715   -1.3490304
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2757375   -1.3456118   -1.2058632
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.9292917   -2.3403068   -1.5182767
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -2.1124198   -2.5548351   -1.6700046
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -2.4328798   -3.0578424   -1.8079172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.9378072   -2.4669663   -1.4086481
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.6696817   -2.0700469   -1.2693164
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.8770896   -2.3399693   -1.4142099
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.3084758   -1.6861817   -0.9307699
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -2.0990147   -2.6291626   -1.5688668
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -1.6466082   -2.0788550   -1.2143615
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.3284996   -1.6824847   -0.9745144
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.8731527   -2.6613980   -1.0849074
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.2345979   -1.7733526   -0.6958433
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -2.1210000   -2.7985948   -1.4434052
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.9035714   -2.4951007   -1.3120421
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -2.4987500   -3.1739283   -1.8235717
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.9864286   -2.4361409   -1.5367163
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -1.6992302   -2.3507732   -1.0476871
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.9049691   -2.3626913   -1.4472470
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.5764563   -2.2428439   -0.9100688
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.0355717   -1.5226412   -0.5485023
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6043044   -3.1965939   -2.0120149
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.7163803   -3.3527604   -2.0800002
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.5460985   -3.0384989   -2.0536981
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.9997022   -3.5790452   -2.4203591
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6249159   -2.8316260   -2.4182057
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5151158   -2.7035471   -2.3266844
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6208985   -2.8184966   -2.4233003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4895512   -2.7052966   -2.2738057
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.5036938   -1.6960483   -1.3113392
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.9627584   -2.1527665   -1.7727503
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.8855812   -2.0739646   -1.6971979
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.7644384   -1.9484714   -1.5804053
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.2506134   -1.4110010   -1.0902259
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -2.0811433   -2.2366780   -1.9256085
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.6488967   -1.7939943   -1.5037991
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.4572600   -1.6170299   -1.2974901
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.7588707   -1.9156223   -1.6021191
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0393461   -2.2111334   -1.8675588
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9218543   -2.0977850   -1.7459236
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.8122523   -1.9864574   -1.6380472
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.5751212   -0.9040845   -0.2461578
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.8605405   -1.2229504   -0.4981306
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.6721410   -1.0256692   -0.3186127
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.8195494   -1.1457553   -0.4933434
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -2.6716904   -2.7690947   -2.5742860
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -2.9851703   -3.1335971   -2.8367436
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -2.9447368   -3.0933209   -2.7961528
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -2.9986793   -3.1457652   -2.8515934
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0011338   -2.0830428   -1.9192248
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6437807   -2.7440563   -2.5435052
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.4948444   -2.6038353   -2.3858535
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5190268   -2.5934453   -2.4446083
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.7531140   -1.9061544   -1.6000736
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.8663029   -2.0536939   -1.6789118
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -2.0780695   -2.2411322   -1.9150068
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.8134428   -1.9683041   -1.6585816
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.8277331   -1.8743750   -1.7810911
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -2.1719576   -2.2195157   -2.1243995
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -2.0674978   -2.1144651   -2.0205305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -2.0239211   -2.0723536   -1.9754886
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.5577571   -1.6271241   -1.4883901
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.9408088   -2.0022262   -1.8793914
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.8430791   -1.9052300   -1.7809282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.6909907   -1.7514443   -1.6305370


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0813415   -1.3098662   -0.8528167
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0841818   -1.3853089   -0.7830548
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8770968   -1.1861056   -0.5680880
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -1.0513889   -1.3551960   -0.7475818
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5011475   -0.7582104   -0.2440847
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.7026087   -1.0554952   -0.3497222
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1452941    0.0610109    0.2295774
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2491505   -0.2881717   -0.2101294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5750490   -1.5948262   -1.5552718
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2886008   -1.5330953   -1.0441063
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1499296   -1.3858882   -0.9139710
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7429762   -0.9817457   -0.5042067
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.5801389   -1.8994566   -1.2608211
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.8550000   -1.0838479   -0.6261521
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4104598   -1.6281211   -1.1927984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0925674   -1.1686395   -1.0164954
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8112324   -1.8807284   -1.7417365
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -2.0155844   -2.2679754   -1.7631934
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8247183   -2.0459767   -1.6034599
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.5063095   -1.7704452   -1.2421738
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -2.1384375   -2.4638687   -1.8130063
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.4993939   -1.7838130   -1.2149749
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6744068   -2.9325198   -2.4162938
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5853993   -1.6687810   -1.5020176
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8581407   -2.9236747   -2.7926066
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8714634   -1.9528558   -1.7900711
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0125560   -2.0402683   -1.9848436
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7578934   -1.7933205   -1.7224663


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3414283   -0.8756311    0.1927745
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4765269   -1.0220896    0.0690357
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0835976   -0.6016183    0.4344232
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.4018375   -0.3267737    1.1304487
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0465351   -0.7069377    0.8000078
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.3097620   -1.2300442    0.6105202
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1988889   -0.4042105    0.8019883
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0082540   -0.9760250    0.9595171
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2111111   -0.9362305    0.5140083
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.5282222   -1.4183185    0.3618740
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.7115556   -1.5861016    0.1629905
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0335000   -0.9407931    0.8737931
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1395992   -1.0090787    0.7298804
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0083228   -1.0138512    0.9972056
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2057240   -0.9346004    0.5231524
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.2043333   -0.8130839    1.2217505
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.4854286   -1.1575804    0.1867232
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -1.2060000   -2.0048351   -0.4071649
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2370080   -0.4649186    0.9389345
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0885351   -0.5269574    0.7040276
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2826467   -0.8355798    0.2702864
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0470933   -0.3570984    0.4512850
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1353844   -0.5423769    0.2716080
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1695665   -0.5558693    0.2167363
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1707482   -0.3908409    0.0493445
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1276284   -0.3743050    0.1190481
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0774588   -0.3070795    0.1521619
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2078507   -0.3104828   -0.1052186
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1961368   -0.3083542   -0.0839195
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1681393   -0.2611064   -0.0751721
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0616002   -0.1031341   -0.0200664
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0417310   -0.0831808   -0.0002811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0317019   -0.0757389    0.0123350
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0620220   -0.2603795    0.1363356
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0099106   -0.1911484    0.2109696
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0124278   -0.2103083    0.1854526
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3046382   -0.8322799    0.2230035
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4982764   -1.1918390    0.1952862
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0025339   -0.6086679    0.6036000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1111025   -0.5251160    0.7473210
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.2029991   -0.4103682    0.8163664
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.3891502   -1.1959445    0.4176442
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.3709677   -0.3244922    1.0664276
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.2293618   -0.6795323    1.1382559
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.4961649   -0.0246447    1.0169745
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1106667   -1.1031215    0.8817882
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.7302500   -1.7157100    0.2552100
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0167778   -0.9360451    0.9024895
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.1127706   -0.5900570    0.8155982
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0137525   -0.7881075    0.8156125
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0171137   -0.6658336    0.7000609
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0646290   -0.6310728    0.7603308
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.3881357   -1.0050583    0.2287869
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.5595310   -1.2687439    0.1496820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7188583    0.3499356    1.0877811
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3610586   -0.0323055    0.7544227
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3427033   -0.0521405    0.7375472
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3666399   -0.7441688    0.0108889
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3756912   -0.7473889   -0.0039935
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0312472   -0.3497120    0.4122063
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.5443719   -0.7690706   -0.3196731
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1650336   -0.3720134    0.0419461
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0872418   -0.2935473    0.1190638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3170648    0.1895975    0.4445320
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1819978    0.0416858    0.3223097
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2125945    0.0866753    0.3385137
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1434448   -0.3540779    0.0671884
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0520186   -0.2777747    0.1737375
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0299079   -0.2407111    0.1808953
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1256766   -0.6091062    0.3577531
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0284528   -0.4812797    0.5381853
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1268219   -0.6321908    0.3785471
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2608863   -0.4491452   -0.0726275
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2142312   -0.3970998   -0.0313625
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1543303   -0.3492717    0.0406111
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3228897   -0.4495149   -0.1962644
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2405942   -0.3677823   -0.1134060
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.3108773   -0.4192095   -0.2025451
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0039342   -0.2050694    0.2129379
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0889186   -0.2815537    0.1037165
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0276947   -0.2131607    0.1577712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2490705   -0.3028452   -0.1952957
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1807329   -0.2330528   -0.1284130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1260954   -0.1778926   -0.0742982
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3418955   -0.4407563   -0.2430347
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2490414   -0.3486139   -0.1494690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1066280   -0.2135660    0.0003100
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1831281   -0.7778264    0.4115702
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5035881   -1.2745170    0.2673409
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0085155   -0.6747129    0.6576819
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.2074079   -0.8169034    0.4020876
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.3612059   -0.1917016    0.9141134
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.4293330   -1.0950926    0.2364266
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.3181087   -0.2469458    0.8831631
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.2265444   -1.1310808    0.6779920
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.4120103   -0.2822672    1.1062879
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.2174286   -0.6820389    1.1168960
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.3777500   -1.3343066    0.5788066
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1345714   -0.6786788    0.9478216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2057390   -1.0035978    0.5921198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1227739   -0.8107694    1.0563172
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.6636584   -0.1521922    1.4795090
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1120759   -0.9641904    0.7400385
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0582058   -0.7124425    0.8288542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.3953978   -1.2326655    0.4418699
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1098001   -0.1703955    0.3899956
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0040174   -0.2824305    0.2904652
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1353647   -0.1639017    0.4346311
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4590647   -0.7297279   -0.1884014
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3818875   -0.6512464   -0.1125286
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2607446   -0.5270382    0.0055489
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.8305298   -1.0521725   -0.6088871
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.3982833   -0.6123975   -0.1841691
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.2066466   -0.4308541    0.0175610
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2804754   -0.5126328   -0.0483181
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1629836   -0.3986345    0.0726673
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0533816   -0.2875339    0.1807706
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2854194   -0.7723203    0.2014815
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0970198   -0.5781913    0.3841516
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2444282   -0.7046429    0.2157865
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3134800   -0.4900698   -0.1368902
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2730465   -0.4499976   -0.0960954
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3269890   -0.5022946   -0.1516833
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.6426469   -0.7721657   -0.5131282
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.4937106   -0.6300332   -0.3573881
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.5178930   -0.6287610   -0.4070250
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1131888   -0.3551820    0.1288044
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3249555   -0.5487526   -0.1011583
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0603288   -0.2785454    0.1578878
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3442245   -0.4082203   -0.2802287
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2397647   -0.3021320   -0.1773975
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1961880   -0.2595627   -0.1328134
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3830517   -0.4739518   -0.2921516
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2853219   -0.3756323   -0.1950116
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1332335   -0.2213192   -0.0451479


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2322936   -0.5303639    0.0657767
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1130499   -0.4047797    0.6308795
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0017921   -0.3515280    0.3551122
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.3173889   -0.9082955    0.2735177
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0855537   -0.6104616    0.4393541
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3566087   -0.9519273    0.2387100
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0081830   -0.3007580    0.2843919
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0481907   -0.3034380    0.2070566
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0769527   -0.1910597    0.0371542
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1330913   -0.1907943   -0.0753882
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0300669   -0.0596631   -0.0004706
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0156882   -0.1447145    0.1133382
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2130910   -0.5848836    0.1587016
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1127421   -0.2972855    0.5227697
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.2718848   -0.1190699    0.6628396
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.1941389   -0.8422573    0.4539796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0366248   -0.5048605    0.4316109
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2396884   -0.6587881    0.1794113
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3566336    0.1230446    0.5902226
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1784055   -0.4186385    0.0618276
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1891802   -0.3169326   -0.0614278
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1850083    0.1044339    0.2655827
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0582168   -0.1854917    0.0690581
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0761792   -0.3840766    0.2317182
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1304637   -0.2190920   -0.0418355
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2146598   -0.2839797   -0.1453399
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0289074   -0.1454883    0.0876734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1193749   -0.1515662   -0.0871835
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1749382   -0.2410015   -0.1088748
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0862927   -0.4777208    0.3051354
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1550366   -0.5244419    0.2143687
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1402987   -0.2746890    0.5552865
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0174375   -0.5447713    0.5098963
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1998362   -0.3517352    0.7514077
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0701024   -0.6110720    0.4708672
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0655476   -0.1104044    0.2414995
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2787838   -0.4461872   -0.1113804
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3347859   -0.4709368   -0.1986350
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1247198   -0.2638246    0.0143850
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1210984   -0.4095956    0.1673989
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1864503   -0.2652335   -0.1076671
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3887312   -0.4594169   -0.3180456
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1183494   -0.2496612    0.0129624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1848229   -0.2231242   -0.1465216
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2001363   -0.2574387   -0.1428338
