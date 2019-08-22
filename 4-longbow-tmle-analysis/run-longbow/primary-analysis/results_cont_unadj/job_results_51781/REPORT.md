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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             17      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             18      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4             11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             17      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2             15      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             11      54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              9      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              6      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              7      30
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      88
Birth       ki1000108-IRC              INDIA                          Wealth Q4             79     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1             90     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2             83     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3             91     343
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            258     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            144     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            141     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            815    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            647    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            506    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            930    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           3535   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3968   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4252   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           3936   15691
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            153     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            171     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            185     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            174     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4            100     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1            104     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2            102     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3            102     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            155     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            137     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            140     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            148     580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            141     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            145     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            139     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            138     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            176     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            194     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            217     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            744    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            908    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4731   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3700   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4153   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4192   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1140    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1205    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1212    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1270    4827
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            156     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            130     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            142     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            126     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            119     498
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            405    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            215    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            223    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            685    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            492    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            424    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            848    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            155     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            127     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            140     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            136     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2215    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2019    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2200    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2160    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1137    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1166    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1162    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1265    4730


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
![](/tmp/866eb92b-a986-4854-a01e-e394768106af/bee10477-713d-4f03-8d7d-33b1e0f99a36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/866eb92b-a986-4854-a01e-e394768106af/bee10477-713d-4f03-8d7d-33b1e0f99a36/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/866eb92b-a986-4854-a01e-e394768106af/bee10477-713d-4f03-8d7d-33b1e0f99a36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.5852381   -0.9155280   -0.2549482
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.2994118   -1.7134235   -0.8854000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.1105556   -1.7339535   -0.4871576
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.8590000   -1.1946541   -0.5233459
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.9381818   -1.4602711   -0.4160926
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.4947059   -2.0549431   -0.9344687
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.9780000   -1.6177530   -0.3382470
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.8145455   -1.4092012   -0.2198897
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4188889   -1.1801639    0.3423862
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.1812500   -1.5597377   -0.8027623
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.0533333   -1.8600071   -0.2466596
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.8500000   -1.8133361    0.1133361
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2070000   -0.8370815    0.4230815
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.2566667   -1.0027650    0.4894317
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.4544444   -0.0496372    0.9585261
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.3812500   -0.1703600    0.9328600
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.3646667   -0.9605402    0.2312068
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0531250   -0.8245563    0.7183063
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.4171429   -0.9422000    0.1079143
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3606250   -0.2056623    0.9269123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.4240000   -0.6034412    1.4514412
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 1.0250000    0.4445131    1.6054869
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.4742857   -0.1398244    1.0883959
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4100000   -1.0412048    1.8612048
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4383871   -1.0422176    0.1654435
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.4950000   -1.1313895    0.1413895
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.8770000   -1.5083693   -0.2456307
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.7260000   -1.4786744    0.0266744
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.8089873   -1.1314135   -0.4865611
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.4476667   -1.7995427   -1.0957906
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.9233735   -1.3377352   -0.5090118
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.8328571   -1.2095501   -0.4561642
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.9951550   -1.1817400   -0.8085701
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.3420139   -1.5518154   -1.1322123
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9657447   -1.1843212   -0.7471682
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.9924194   -1.1962585   -0.7885802
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8258405   -0.9156996   -0.7359814
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7875889   -0.8888141   -0.6863637
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6700791   -0.7769933   -0.5631648
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6768495   -0.7560494   -0.5976495
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.6345120   -0.6736181   -0.5954060
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.7964264   -0.8308841   -0.7619687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.7597860   -0.7934441   -0.7261279
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.6924517   -0.7260960   -0.6588075
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.3894118   -0.5654814   -0.2133421
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.4711111   -0.6403259   -0.3018963
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.3813514   -0.5283420   -0.2343607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.2348851   -0.3914867   -0.0782834
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1107143   -0.3000214    0.5214500
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.4299206   -0.9498205    0.0899792
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0418421   -0.5894614    0.5057772
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.4570000   -0.8756633   -0.0383367
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.7668519   -1.2939080   -0.2397957
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.6160526   -1.1197912   -0.1123140
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.8180392   -1.3958486   -0.2402299
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.7001961   -1.2276094   -0.1727828
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.4563636   -0.1939707    1.1066980
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.1989394   -0.5709405    0.1730617
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.2930000   -0.6778298    0.0918298
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.2051667   -0.2271597    0.6374930
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.4385000   -0.0439073    0.9209073
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 1.1316667    0.5888514    1.6744819
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 1.1037500   -0.0732304    2.2807304
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.8911111    0.3971583    1.3850640
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1497059   -0.3013631    0.6007749
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.4078125   -0.2626972    1.0783222
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.5935417    0.0907349    1.0963484
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.7843750    0.3584728    1.2102772
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6502222    0.2627341    1.0377103
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.4042308   -0.1031815    0.9116430
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.4133333   -0.2047406    1.0314073
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.5323333    0.1639201    0.9007465
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0044737   -0.3279235    0.3368708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8835926   -1.1552531   -0.6119321
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7475986   -1.0295263   -0.4656708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4040000   -0.6843157   -0.1236843
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.6425500   -0.9157414   -0.3693586
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.5085577   -0.7375943   -0.2795211
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.4725980   -0.7656889   -0.1795072
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.7746405   -1.0566371   -0.4926439
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1263226   -0.2878383    0.0351932
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.3425912   -0.5007381   -0.1844444
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.2709048   -0.4458016   -0.0960079
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.1095270   -0.2879565    0.0689025
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1125981    0.0064896    0.2187066
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0521446   -0.0495264    0.1538157
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0923105   -0.0206169    0.2052380
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0717163   -0.0301680    0.1736005
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5218085   -0.6780635   -0.3655536
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6310000   -0.7944528   -0.4675472
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.5813309   -0.7615005   -0.4011613
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6857005   -0.8734322   -0.4979687
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                 1.2487660    1.0208431    1.4766890
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.9077571    0.6725296    1.1429845
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                 1.0270256    0.7895455    1.2645058
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                 1.1118077    0.8899971    1.3336182
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2982006    0.1788339    0.4175672
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2025568    0.0459515    0.3591621
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1054639   -0.0488410    0.2597688
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0925346   -0.0698014    0.2548706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2008065   -0.2765391   -0.1250738
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4521090   -0.5436444   -0.3605736
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2628247   -0.3615385   -0.1641110
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2874670   -0.3594074   -0.2155265
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5427189    0.4136098    0.6718280
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.3364532    0.1796387    0.4932677
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.3824121    0.2481089    0.5167152
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.4992386    0.3495641    0.6489131
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.4944272   -0.5292355   -0.4596189
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.7012000   -0.7373648   -0.6650352
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.6440188   -0.6776255   -0.6104121
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.5592032   -0.5962170   -0.5221895
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2593991   -0.3361897   -0.1826086
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.5383817   -0.6068232   -0.4699403
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.4360272   -0.5025598   -0.3694947
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.3231260   -0.3889079   -0.2573441
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.5154762   -0.8266090   -0.2043434
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.9135714   -1.2842908   -0.5428521
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.8985294   -1.4586290   -0.3384298
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.7561111   -1.1670287   -0.3451935
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0572222   -1.5397627   -0.5746817
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.9913158   -1.4646682   -0.5179634
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.5938235   -1.0386079   -0.1490391
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.9900000   -1.4267578   -0.5532422
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1595455   -0.6219181    0.3028272
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.3168182   -0.6920916    0.0584552
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.7535000   -1.2210129   -0.2859871
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.2035000   -0.6055820    0.1985820
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2165000   -0.9236253    0.4906253
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.1121429   -0.5860943    0.3618085
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0575000   -0.5741649    0.6891649
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.3121429   -0.5732417    1.1975274
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2215625   -0.1785846    0.6217096
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.2487500   -0.2496578    0.7471578
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.3879412    0.0284611    0.7474213
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3852941   -0.0353850    0.8059733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2630000   -0.7625326    0.2365326
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0510000   -0.3578243    0.4598243
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.1486667   -0.4607119    0.7580452
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0471429   -0.2708590    0.3651447
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3197544   -0.5274837   -0.1120250
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6221978   -0.8064699   -0.4379257
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6710351   -0.8551222   -0.4869480
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6210440   -0.8455479   -0.3965400
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.7121667   -0.9082012   -0.5161322
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.8694444   -1.0240929   -0.7147960
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.7581683   -0.9447883   -0.5715483
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.6403398   -0.8273473   -0.4533323
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.7253846   -0.8935819   -0.5571873
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.1930769   -1.3543997   -1.0317541
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.9359155   -1.0955873   -0.7762437
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.7526846   -0.9139372   -0.5914319
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0499475   -1.2281025   -0.8717925
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1500000   -1.3226465   -0.9773535
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1810317   -1.3492867   -1.0127768
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1468627   -1.3281622   -0.9655633
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.5496341    0.2628856    0.8363827
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.4705000    0.2546621    0.6863379
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.6032143    0.3033359    0.9030926
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.6407317    0.3649913    0.9164721
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1814321   -0.2702931   -0.0925711
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.4054187   -0.5202913   -0.2905461
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3434419   -0.4595740   -0.2273097
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2796413   -0.4034828   -0.1557997
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4327445   -0.5010904   -0.3643987
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7455285   -0.8266882   -0.6643687
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6300708   -0.7178878   -0.5422537
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6643986   -0.7270155   -0.6017816
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0322581   -0.1256301    0.1901463
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.1329134   -0.3072701    0.0414434
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0595357   -0.2238377    0.1047662
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0477574   -0.2095822    0.1140675
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2207856   -1.2642983   -1.1772728
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.3686330   -1.4143953   -1.3228707
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3027682   -1.3476419   -1.2578944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3035509   -1.3497092   -1.2573927
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1491469   -1.2226296   -1.0756642
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.2692796   -1.3331562   -1.2054029
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.2680895   -1.3260018   -1.2101772
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2059684   -1.2636811   -1.1482556


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9414474   -1.1655223   -0.7173724
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0992593   -1.4060416   -0.7924769
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8496667   -1.2385841   -0.4607492
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0766667   -0.2519852    0.4053186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1047541   -0.4290621    0.2195539
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5930435    0.1251922    1.0608948
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7239386   -0.7437757   -0.7041015
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.2054115   -0.4495784    0.0387554
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7227934   -0.9900648   -0.4555221
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0465079   -0.2108391    0.3038550
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 0.8727778    0.5137098    1.2318457
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4787179    0.2126042    0.7448317
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5033333    0.2619074    0.7447593
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2080201   -0.2927357   -0.1233045
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4418137    0.3703100    0.5133174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.7648701   -0.9729655   -0.5567748
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9125352   -1.1472376   -0.6778328
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3526190   -0.5782459   -0.1269921
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0095313   -0.3657847    0.3467222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3131818    0.1018345    0.5245291
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0049153   -0.2462498    0.2364193
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8896187   -0.9726240   -0.8066134
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0478674   -0.1301904    0.0344557
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.7141737   -1.2437935   -0.1845539
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5253175   -1.2308076    0.1801727
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2737619   -0.7446707    0.1971469
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.5565241   -1.3223197    0.2092716
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0398182   -0.8655670    0.7859306
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1236364   -0.6676870    0.9149597
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.7623611   -1.6125332    0.0878110
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.6344444   -1.7436163    0.4747274
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.4311111   -1.6589369    0.7967147
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0496667   -1.0262246    0.9268913
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.6614444   -0.1454639    1.4683527
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.5882500   -0.2491724    1.4256724
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.3115417   -0.6632258    1.2863091
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0524762   -0.8466740    0.7417217
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.7252917   -0.0967463    1.5473297
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.6010000   -0.5790849    1.7810849
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0502857   -1.1466966    1.2472680
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0140000   -1.7920975    1.7640975
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0566129   -0.9338830    0.8206572
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.4386129   -1.3122482    0.4350224
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2876129   -1.2525637    0.6773379
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.6386793   -1.1159375   -0.1614211
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1143862   -0.6394140    0.4106417
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0238698   -0.5197087    0.4719691
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3468589   -0.6276268   -0.0660909
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0294104   -0.2579738    0.3167945
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0027357   -0.2736053    0.2790767
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0382516   -0.0971042    0.1736075
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1557614    0.0161000    0.2954229
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.1489910    0.0292109    0.2687712
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1619144   -0.2106554   -0.1131734
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1252740   -0.1737035   -0.0768444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0579397   -0.1082703   -0.0076091
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0816993   -0.3263157    0.1629170
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0080604   -0.2215347    0.2376556
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.1545267   -0.0811715    0.3902249
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.5406349   -1.2032054    0.1219356
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1525564   -0.8370932    0.5319805
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.5677143   -1.1542148    0.0187862
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1507992   -0.5782692    0.8798676
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0511874   -0.8332691    0.7308944
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0666558   -0.6789668    0.8122783
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.6553030   -1.4045157    0.0939096
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.7493636   -1.5050281    0.0063008
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2511970   -1.0321201    0.5297261
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.6931667   -0.0330325    1.4193658
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.6652500   -0.6067561    1.9372561
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.4526111   -0.2378280    1.1430502
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.2581066   -0.5500063    1.0662195
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.4438358   -0.2316477    1.1193192
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.6346691    0.0143015    1.2550367
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.2459915   -0.8844382    0.3924553
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2368889   -0.9663835    0.4926057
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1178889   -0.6525620    0.4167842
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8880663   -1.3173532   -0.4587793
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7520723   -1.1879290   -0.3162155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4084737   -0.8432894    0.0263421
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.1339923   -0.2225064    0.4904910
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.1699520   -0.2307173    0.5706212
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1320905   -0.5247171    0.2605361
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2162687   -0.4423168    0.0097795
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1445822   -0.3826499    0.0934855
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0167956   -0.2238794    0.2574705
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0604535   -0.2074093    0.0865023
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0202876   -0.1752445    0.1346692
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0408819   -0.1879853    0.1062215
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1091915   -0.3353163    0.1169333
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0595224   -0.2980108    0.1789659
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.1638920   -0.4081435    0.0803596
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3410090   -0.6685465   -0.0134715
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2217404   -0.5508994    0.1074187
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1369583   -0.4549973    0.1810806
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0956438   -0.2925540    0.1012664
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1927367   -0.3878223    0.0023489
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2056660   -0.4071639   -0.0041682
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2513025   -0.3701056   -0.1324994
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0620183   -0.1864363    0.0623998
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0866605   -0.1911156    0.0177946
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2062657   -0.4093912   -0.0031402
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1603068   -0.3466036    0.0259900
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0434803   -0.2411458    0.1541851
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2067728   -0.2550279   -0.1585177
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1495916   -0.1964868   -0.1026964
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0647761   -0.1138490   -0.0157031
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2789826   -0.3818039   -0.1761614
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1766281   -0.2750753   -0.0781809
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0637269   -0.1640858    0.0366321
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3980952   -0.8820751    0.0858846
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3830532   -1.0237678    0.2576614
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2406349   -0.7560541    0.2747842
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0659064   -0.6100431    0.7418560
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.4633987   -0.1928623    1.1196597
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0672222   -0.5836255    0.7180699
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.1572727   -0.7527714    0.4382259
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.5939545   -1.2514930    0.0635839
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0439545   -0.6567012    0.5687921
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1043571   -0.7469102    0.9556245
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.2740000   -0.6741702    1.2221702
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.5286429   -0.6044644    1.6617501
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0271875   -0.6119745    0.6663495
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1663787   -0.3715280    0.7042854
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1637316   -0.4168617    0.7443250
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3140000   -0.3314999    0.9594999
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.4116667   -0.3762895    1.1996229
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.3101429   -0.2820210    0.9023067
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3024434   -0.5801262   -0.0247607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3512807   -0.6288407   -0.0737207
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3012896   -0.6071547    0.0045756
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1572778   -0.4069689    0.0924133
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0460017   -0.3166611    0.2246578
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0718269   -0.1990999    0.3427536
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.4676923   -0.7007489   -0.2346357
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.2105309   -0.4424477    0.0213860
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0272999   -0.2603080    0.2057081
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1000525   -0.3481372    0.1480322
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1310842   -0.3761331    0.1139646
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0969152   -0.3510977    0.1572672
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0791341   -0.4380362    0.2797680
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0535801   -0.3613316    0.4684919
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0910976   -0.3067184    0.4889135
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2239866   -0.3692174   -0.0787558
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1620098   -0.3082389   -0.0157806
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0982092   -0.2506329    0.0542146
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3127839   -0.4188879   -0.2066799
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1973262   -0.3086051   -0.0860473
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2316541   -0.3243473   -0.1389608
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1651715   -0.4003925    0.0700496
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0917938   -0.3196618    0.1360742
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0800154   -0.3061038    0.1460730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1478474   -0.2090801   -0.0866148
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0819826   -0.1426908   -0.0212745
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0827654   -0.1473190   -0.0182117
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1201327   -0.2179570   -0.0223085
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1189426   -0.2117679   -0.0261173
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0568215   -0.1532671    0.0396241


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.3562093   -0.6708736   -0.0415450
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1610774   -0.6666886    0.3445337
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4307778   -1.0497064    0.1881508
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.2836667   -0.2496791    0.8170124
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2599126   -0.2745205    0.7943456
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1690435   -0.7340337    1.0721206
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1891129   -0.6668417    0.2886159
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2015957   -0.5031499    0.0999584
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0621289   -0.2065173    0.0822595
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0835493    0.0081632    0.1589353
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0894265   -0.1214488   -0.0574043
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0210955   -0.1330408    0.1752319
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.3161258   -0.6914193    0.0591677
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0440584   -0.4124192    0.5005360
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4098557   -0.9271805    0.1074691
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.4342778   -0.0477590    0.9163146
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.3290121   -0.0806864    0.7387105
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1468889   -0.5085120    0.2147342
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5071503   -0.7832770   -0.2310236
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0436203   -0.1938960    0.2811365
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0816975   -0.2206970    0.0573019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0324301   -0.1244301    0.0595698
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0829902   -0.2230285    0.0570481
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1803342   -0.3815475    0.0208790
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1067535   -0.2023421   -0.0111649
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0930369   -0.1585540   -0.0275197
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1009052   -0.2145548    0.0127444
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0988230   -0.1268986   -0.0707474
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1307604   -0.1962620   -0.0652588
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2493939   -0.5448687    0.0460808
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1446870   -0.2674636    0.5568376
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1930736   -0.5838568    0.1977096
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.2069687   -0.3537686    0.7677061
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0916193   -0.2649653    0.4482039
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2580847   -0.1672317    0.6834012
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2373962   -0.4145641   -0.0602282
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0336483   -0.2007385    0.1334418
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1642341   -0.3052406   -0.0232276
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0816388   -0.2340570    0.0707793
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0171951   -0.2272798    0.2616700
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0977075   -0.1666807   -0.0287343
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1772146   -0.2356263   -0.1188030
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0801254   -0.2137537    0.0535028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0765230   -0.1136168   -0.0394292
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0740307   -0.1369416   -0.0111198
