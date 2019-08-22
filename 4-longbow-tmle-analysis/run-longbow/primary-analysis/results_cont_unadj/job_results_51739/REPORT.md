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

unadjusted

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
![](/tmp/c456526e-e366-4484-ad84-97d6e8f9d7ec/d96ab389-4b2f-432f-ad5f-e8ecffe08823/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c456526e-e366-4484-ad84-97d6e8f9d7ec/d96ab389-4b2f-432f-ad5f-e8ecffe08823/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c456526e-e366-4484-ad84-97d6e8f9d7ec/d96ab389-4b2f-432f-ad5f-e8ecffe08823/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.8204762   -1.1357248   -0.5052276
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.2623810   -1.7741589   -0.7506030
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.3090000   -1.8003785   -0.8176215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.9375000   -1.3885076   -0.4864924
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0741667   -1.7739887   -0.3743446
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.6929412   -1.1427139   -0.2431684
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.1733333   -1.6938207   -0.6528460
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.5781818   -2.3009084   -0.8554552
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.8788889   -1.1434362   -0.6143415
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.6800000   -1.2219811   -0.1380189
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.8871429   -1.8180540    0.0437683
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.0900000   -1.7651391   -0.4148609
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.7340000   -1.4942378    0.0262378
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.2622222   -1.7251583   -0.7992862
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.4455556   -1.8778392   -1.0132719
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.7675000   -1.2626961   -0.2723039
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.4826667   -0.9996637    0.0343304
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.4537500   -0.9468798    0.0393798
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.2878571   -0.9025410    0.3268267
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.7525000   -1.1615973   -0.3434027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3460000   -0.9837324    0.2917324
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1416667   -0.9344057    0.6510723
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.8314286   -1.0437617   -0.6190954
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.5520000   -2.0330768   -1.0709232
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.9716129   -1.2949901   -0.6482357
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.7442857   -1.2874833   -0.2010881
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7965000   -1.2447030   -0.3482970
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2168000   -1.6234007   -0.8101993
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2161538   -0.5867320    0.1544243
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.1436735   -0.4437115    0.1563646
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.4218182   -0.7483191   -0.0953172
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.4401000   -0.7262494   -0.1539506
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2285666    0.0898567    0.3672764
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0414650   -0.1277325    0.2106624
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0906211   -0.1174167    0.2986590
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1487317   -0.0226652    0.3201286
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0586342   -0.1302466    0.0129782
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3503930   -0.4322723   -0.2685138
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.3358364   -0.4322314   -0.2394414
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2941853   -0.3624814   -0.2258892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.3791376   -1.4183946   -1.3398805
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.7035063   -1.7374166   -1.6695961
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.6080097   -1.6412937   -1.5747257
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.5686721   -1.6044145   -1.5329297
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.4706557   -1.6482884   -1.2930231
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5606220   -1.7182505   -1.4029935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4750685   -1.6338850   -1.3162520
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.4821801   -1.6528974   -1.3114627
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.0199206   -1.3243458   -0.7154955
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.2999206   -1.6725035   -0.9273378
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.5676316   -2.0955771   -1.0396861
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.2937500   -1.9605134   -0.6269866
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0806481   -1.4395791   -0.7217172
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.0731579   -1.5043884   -0.6419274
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.8765686   -1.2770606   -0.4760766
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.5824510   -2.1918478   -0.9730541
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.9572727   -1.3997993   -0.5147462
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.6059091   -1.1054265   -0.1063917
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.9166667   -1.4976636   -0.3356697
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.4843333   -0.7354047   -0.2332620
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.3860000   -2.2319969   -0.5400031
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.4966667   -2.0155653   -0.9777680
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -2.1162500   -2.6216415   -1.6108585
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.4027778   -1.7624187   -1.0431369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.8696078   -1.4338687   -0.3053470
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.8328125   -1.1654220   -0.5002030
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.8753125   -1.3916033   -0.3590217
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.8413542   -1.1982747   -0.4844336
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.2054444   -1.6067271   -0.8041618
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.1967949   -1.6307419   -0.7628479
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.4290000   -1.8217152   -1.0362848
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.7821111   -2.2228935   -1.3413287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7856738   -2.0590380   -1.5123096
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0471429   -1.2972695   -0.7970162
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4253369   -1.7163029   -1.1343708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4236481   -1.7153131   -1.1319832
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.0400673   -1.3237556   -0.7563791
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.4291111   -1.6771035   -1.1811187
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.4369667   -1.6864659   -1.1874674
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.0260518   -1.2847563   -0.7673473
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.8797419   -1.0355948   -0.7238891
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.4598913   -1.6166594   -1.3031232
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.0789048   -1.2161470   -0.9416625
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.9858784   -1.1255696   -0.8461872
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7437317   -0.8439695   -0.6434940
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.3980565   -0.4900073   -0.3061057
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5505990   -0.6615406   -0.4396575
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5157903   -0.6042773   -0.4273034
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.2680024   -1.4069813   -1.1290234
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4205747   -1.5756679   -1.2654815
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3291487   -1.5008132   -1.1574842
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3078140   -1.4654398   -1.1501882
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.2484391   -0.6018949    0.1050167
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.3799633   -0.7051247   -0.0548018
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.2523365   -0.6044144    0.0997413
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.3660577   -0.7196607   -0.0124547
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6775811   -1.7826026   -1.5725596
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9522286   -2.1091839   -1.7952732
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -1.9009231   -2.0507620   -1.7510841
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8257870   -1.9870835   -1.6644906
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8903096   -0.9707503   -0.8098688
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2539123   -1.3480338   -1.1597908
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1810309   -1.2750353   -1.0870265
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2523516   -1.3227651   -1.1819382
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.5994931   -1.7307591   -1.4682271
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.6273892   -1.7847471   -1.4700313
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -1.6961809   -1.8330768   -1.5592850
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.6520305   -1.7790138   -1.5250471
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.0760164   -1.1148100   -1.0372229
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.4929339   -1.5306335   -1.4552342
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.4083426   -1.4442838   -1.3724013
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3283115   -1.3665764   -1.2900466
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1572675   -1.2339952   -1.0805399
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5209559   -1.5856074   -1.4563045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4194674   -1.4883145   -1.3506203
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2722738   -1.3419130   -1.2026346
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.7892857   -2.1805479   -1.3980236
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -2.1169048   -2.5450366   -1.6887730
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -2.2358824   -2.8492767   -1.6224880
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.9533333   -2.5415288   -1.3651378
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.7691667   -2.1331899   -1.4051435
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.9610526   -2.4002162   -1.5218890
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.3638235   -1.7170650   -1.0105821
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -2.1920588   -2.6965818   -1.6875359
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -1.6636364   -2.0522856   -1.2749871
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.3100000   -1.6328434   -0.9871566
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.8270000   -2.5621105   -1.0918895
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.2285000   -1.7606592   -0.6963408
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -2.1210000   -2.7985948   -1.4434052
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.9035714   -2.4951007   -1.3120421
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -2.4987500   -3.1739283   -1.8235717
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.9864286   -2.4361409   -1.5367163
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -1.6828125   -2.3247217   -1.0409033
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.8540625   -2.2801894   -1.4279356
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.4735294   -2.0751848   -0.8718740
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.0188235   -1.5126687   -0.5249783
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6520000   -3.0812072   -2.2227928
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.5986667   -3.1444833   -2.0528500
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.5460000   -2.9947606   -2.0972394
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.9171429   -3.5297842   -2.3045015
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6298596   -2.8381639   -2.4215554
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5033150   -2.6879460   -2.3186840
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6141930   -2.8103775   -2.4180084
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4845971   -2.6979696   -2.2712245
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.5036833   -1.6940605   -1.3133062
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.9627619   -2.1483569   -1.7771670
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.8841914   -2.0689307   -1.6994522
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.7696278   -1.9494842   -1.5897715
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.2024359   -1.3623726   -1.0424992
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -2.1196124   -2.2787588   -1.9604660
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.6592958   -1.8031745   -1.5154171
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.4534228   -1.6181732   -1.2886725
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.7524278   -1.9068712   -1.5979844
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0533596   -2.2256912   -1.8810280
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9192857   -2.0916284   -1.7469430
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.8045938   -1.9766433   -1.6325443
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.5382927   -0.8638664   -0.2127190
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.8150000   -1.1748067   -0.4551933
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.6228571   -0.9686122   -0.2771021
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.8134146   -1.1432134   -0.4836159
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -2.6674194   -2.7663358   -2.5685029
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -3.0049261   -3.1508058   -2.8590464
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -2.9439906   -3.0940778   -2.7939034
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -2.9895434   -3.1371893   -2.8418974
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -1.9567006   -2.0383582   -1.8750429
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6440900   -2.7416719   -2.5465081
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5158392   -2.6217349   -2.4099436
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5323669   -2.6059102   -2.4588235
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.7426875   -1.8936202   -1.5917548
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.8744186   -2.0595167   -1.6893205
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -2.0594863   -2.2205957   -1.8983769
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.8194604   -1.9711465   -1.6677744
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.7103407   -1.7596288   -1.6610526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -2.2251287   -2.2732071   -2.1770503
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -2.1195376   -2.1667081   -2.0723671
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -2.0166390   -2.0654330   -1.9678449
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.5279404   -1.5987761   -1.4571047
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.9620427   -2.0260968   -1.8979886
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.8536106   -1.9162590   -1.7909623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.6885354   -1.7502690   -1.6268018


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.4419048   -1.0429857    0.1591762
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4885238   -1.0723342    0.0952865
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1170238   -0.6672869    0.4332393
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.3812255   -0.4506678    1.2131188
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0991667   -0.9713238    0.7729904
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.5040152   -1.5100394    0.5020091
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1988889   -0.4042105    0.8019883
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0082540   -0.9760250    0.9595171
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2111111   -0.9362305    0.5140083
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.5282222   -1.4183185    0.3618740
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.7115556   -1.5861016    0.1629905
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0335000   -0.9407931    0.8737931
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0289167   -0.6855502    0.7433835
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1948095   -0.6083855    0.9980045
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2698333   -0.9291106    0.3894440
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.2043333   -0.8130839    1.2217505
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.4854286   -1.1575804    0.1867232
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -1.2060000   -2.0048351   -0.4071649
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2273272   -0.4048408    0.8594952
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1751129   -0.3775703    0.7277961
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2451871   -0.7647032    0.2743290
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0724804   -0.4043330    0.5492937
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.2056643   -0.6995581    0.2882294
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2239462   -0.6921444    0.2442521
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1871016   -0.4058896    0.0316864
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1379454   -0.3879858    0.1120949
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0798348   -0.3003282    0.1406585
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2917588   -0.4005363   -0.1829813
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2772022   -0.3972869   -0.1571175
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2355511   -0.3345092   -0.1365931
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3243688   -0.3735082   -0.2752293
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2288722   -0.2777422   -0.1800021
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1895346   -0.2418010   -0.1372681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0899663   -0.3264430    0.1465104
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0044128   -0.2419601    0.2331345
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0115244   -0.2565129    0.2334641
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2800000   -0.7611369    0.2011369
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5477109   -1.1571379    0.0617160
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2738294   -1.0068015    0.4591428
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0074903   -0.5535723    0.5685528
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.2040795   -0.3337171    0.7418762
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.5018028   -1.2090481    0.2054425
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.3513636   -0.3159799    1.0187072
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0406061   -0.6897275    0.7709397
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.4729394   -0.0358499    0.9817287
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1106667   -1.1031215    0.8817882
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.7302500   -1.7157100    0.2552100
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0167778   -0.9360451    0.9024895
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0367953   -0.6182003    0.6917910
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0057047   -0.7705226    0.7591133
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0282537   -0.6394158    0.6959232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0086496   -0.5823985    0.5996976
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2235556   -0.7850296    0.3379185
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.5766667   -1.1727513    0.0194180
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7385309    0.3680025    1.1090593
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3603369   -0.0388989    0.7595727
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3620256   -0.0377199    0.7617711
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3890438   -0.7658451   -0.0122424
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3968993   -0.7746941   -0.0191046
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0140156   -0.3699207    0.3979518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.5801494   -0.8012067   -0.3590920
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1991628   -0.4068298    0.0085041
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.1061364   -0.3154299    0.1031570
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3456753    0.2096511    0.4816994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1931327    0.0436147    0.3426508
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2279414    0.0942344    0.3616483
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1525723   -0.3608248    0.0556801
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0611463   -0.2820170    0.1597244
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0398116   -0.2499569    0.1703336
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1315242   -0.6117960    0.3487476
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0038974   -0.5027860    0.4949911
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1176186   -0.6175847    0.3823475
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2746475   -0.4634979   -0.0857970
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2233420   -0.4063207   -0.0403632
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1482059   -0.3406795    0.0442676
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3636027   -0.4874154   -0.2397901
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2907214   -0.4144450   -0.1669977
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.3620421   -0.4689475   -0.2551367
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0278961   -0.2328162    0.1770241
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0966878   -0.2863487    0.0929730
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0525374   -0.2351723    0.1300976
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.4169174   -0.4678546   -0.3659803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3323261   -0.3824120   -0.2822402
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2522951   -0.3024451   -0.2021450
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3636884   -0.4619490   -0.2654278
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2621998   -0.3611170   -0.1632827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1150063   -0.2213766   -0.0086359
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3276190   -0.9076043    0.2523662
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4465966   -1.1741533    0.2809600
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1640476   -0.8704894    0.5423942
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1918860   -0.7623047    0.3785328
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.4053431   -0.1018969    0.9125831
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.4228922   -1.0450306    0.1992463
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.3536364   -0.1516122    0.8588849
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.1633636   -0.9948897    0.6681624
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.4351364   -0.2238337    1.0941065
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.2174286   -0.6820389    1.1168960
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.3777500   -1.3343066    0.5788066
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1345714   -0.6786788    0.9478216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1712500   -0.9417249    0.5992249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.2092831   -0.6705104    1.0890766
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.6639890   -0.1459064    1.4738844
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0533333   -0.6410258    0.7476925
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1060000   -0.5149709    0.7269709
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2651429   -1.0131724    0.4828867
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1265446   -0.1518064    0.4048956
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0156667   -0.2704785    0.3018118
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1452626   -0.1529295    0.4434546
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4590786   -0.7249525   -0.1932046
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3805081   -0.6457854   -0.1152308
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2659445   -0.5278448   -0.0040442
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.9171765   -1.1428030   -0.6915500
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.4568599   -0.6719897   -0.2417301
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.2509869   -0.4806005   -0.0213733
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.3009318   -0.5323425   -0.0695210
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1668579   -0.3982769    0.0645611
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0521660   -0.2833668    0.1790347
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2767073   -0.7619486    0.2085340
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0845645   -0.5594800    0.3903511
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2751220   -0.7385499    0.1883060
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3375068   -0.5137604   -0.1612531
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2765713   -0.4563228   -0.0968197
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3221240   -0.4998423   -0.1444058
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.6873894   -0.8146301   -0.5601487
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.5591387   -0.6928617   -0.4254156
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.5756663   -0.6855598   -0.4657727
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1317311   -0.3705657    0.1071035
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3167988   -0.5375632   -0.0960344
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0767729   -0.2907573    0.1372114
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.5147881   -0.5822668   -0.4473093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4091970   -0.4759973   -0.3423967
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.3062983   -0.3739606   -0.2386360
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.4341023   -0.5280582   -0.3401465
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3256702   -0.4172380   -0.2341024
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1605950   -0.2521098   -0.0690802


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2608653   -0.5782017    0.0564712
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0100152   -0.6155884    0.5955581
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0017921   -0.3515280    0.3551122
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.3173889   -0.9082955    0.2735177
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0184809   -0.4678306    0.4308688
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3566087   -0.9519273    0.2387100
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0061685   -0.2697252    0.2820621
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0918874   -0.4061365    0.2223617
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0832724   -0.1951957    0.0286509
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1905163   -0.2523107   -0.1287220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1959114   -0.2291383   -0.1626846
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0270085   -0.1826200    0.1286030
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2686802   -0.5917881    0.0544277
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0692814   -0.4145131    0.2759502
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.2142965   -0.1733414    0.6019344
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.1941389   -0.8422573    0.4539796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0146078   -0.4372981    0.4665138
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2050153   -0.5587299    0.1486993
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3622230    0.1243626    0.6000834
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1943389   -0.4364239    0.0477461
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2128255   -0.3436566   -0.0819944
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1995086    0.1131602    0.2858569
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0641498   -0.1896819    0.0613823
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0654826   -0.3727333    0.2417681
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1336513   -0.2218265   -0.0454761
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2502628   -0.3186550   -0.1818707
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0432030   -0.1566832    0.0702772
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.2371925   -0.2669557   -0.2074293
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1867801   -0.2521204   -0.1214398
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2262987   -0.5913820    0.1387846
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0555516   -0.3936027    0.2824995
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1573268   -0.2190976    0.5337513
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0174375   -0.5447713    0.5098963
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1834186   -0.3580250    0.7248621
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0224068   -0.4188542    0.3740406
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0704914   -0.1066419    0.2476246
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2787943   -0.4442391   -0.1133494
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3829634   -0.5196256   -0.2463012
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1311627   -0.2685001    0.0061747
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1579268   -0.4448160    0.1289624
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1907213   -0.2712297   -0.1102129
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4331644   -0.5033395   -0.3629894
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1287759   -0.2580251    0.0004733
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.3022153   -0.3436439   -0.2607867
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2299530   -0.2886263   -0.1712797
