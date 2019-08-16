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




# Results Detail

## Results Plots
![](/tmp/8524e41d-a0ac-4cc6-b992-367548d551da/954a6621-8657-4137-840d-95ca55850c3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8524e41d-a0ac-4cc6-b992-367548d551da/954a6621-8657-4137-840d-95ca55850c3c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8524e41d-a0ac-4cc6-b992-367548d551da/954a6621-8657-4137-840d-95ca55850c3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.6780704   -1.0308947   -0.3252461
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3630564   -1.8198529   -0.9062598
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.9935790   -1.8212378   -0.1659202
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.8170066   -1.1065984   -0.5274147
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.8505149   -1.4500355   -0.2509944
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.4698745   -2.0346739   -0.9050751
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.9352965   -1.6183742   -0.2522188
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.7836739   -1.3991084   -0.1682394
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4188889   -1.1801639    0.3423862
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.1812500   -1.5597377   -0.8027623
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.0533333   -1.8600071   -0.2466596
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.8500000   -1.8133361    0.1133361
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2070000   -0.8370815    0.4230815
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.2566667   -1.0027650    0.4894317
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.4544444   -0.0496372    0.9585261
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.3812500   -0.1703600    0.9328600
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.2699569   -0.8961403    0.3562265
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0061296   -0.8559792    0.8437200
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.3693191   -0.9158238    0.1771855
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3080191   -0.3400622    0.9561005
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.4240000   -0.6034412    1.4514412
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 1.0250000    0.4445131    1.6054869
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.4742857   -0.1398244    1.0883959
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4100000   -1.0412048    1.8612048
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.6525060   -1.2900166   -0.0149953
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.7050227   -1.3799548   -0.0300906
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.9468858   -1.5051865   -0.3885852
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.5943075   -1.2269651    0.0383500
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.8548156   -1.1305196   -0.5791115
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.3455818   -1.6519808   -1.0391828
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.9644167   -1.3288934   -0.5999399
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.8996916   -1.2303735   -0.5690097
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0189185   -1.1951876   -0.8426494
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2598999   -1.4552468   -1.0645531
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9759446   -1.1872448   -0.7646444
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0162044   -1.2105775   -0.8218314
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8056282   -0.8919302   -0.7193262
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7844424   -0.8813697   -0.6875150
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6908820   -0.7944731   -0.5872909
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6979563   -0.7757235   -0.6201891
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.7010188   -0.7420854   -0.6599522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.7526933   -0.7887331   -0.7166536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.7435473   -0.7774567   -0.7096379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.7151533   -0.7504458   -0.6798608
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.3935704   -0.5502037   -0.2369371
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.4524301   -0.6099181   -0.2949420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.3749987   -0.5139278   -0.2360696
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.2506487   -0.3976000   -0.1036974
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1590197   -0.2555364    0.5735758
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.4062573   -0.9196508    0.1071363
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0170128   -0.5674146    0.5333890
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.5221273   -0.9628953   -0.0813592
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.7566509   -1.3486336   -0.1646682
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.5410152   -1.2115381    0.1295077
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.7311941   -1.4875948    0.0252066
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.4129748   -1.0473690    0.2214194
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.4279993   -0.3238311    1.1798297
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.1796518   -0.5907251    0.2314214
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.2312236   -0.6500863    0.1876391
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.1720186   -0.3121115    0.6561488
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.4385000   -0.0439073    0.9209073
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 1.1316667    0.5888514    1.6744819
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 1.1037500   -0.0732304    2.2807304
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.8911111    0.3971583    1.3850640
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2041559   -0.2751586    0.6834705
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.4260969   -0.3053029    1.1574966
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.6385590    0.0980328    1.1790851
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.8463710    0.3616129    1.3311292
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6223865    0.1946476    1.0501255
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.4408818   -0.0885256    0.9702892
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.4511005   -0.1176994    1.0199005
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.5236947    0.1581199    0.8892695
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0045125   -0.3285387    0.3375637
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8583979   -1.1380735   -0.5787222
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7458034   -1.0279126   -0.4636942
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.3805085   -0.6702318   -0.0907852
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.6660400   -0.9446486   -0.3874314
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.4812869   -0.7062224   -0.2563514
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.4542647   -0.7571394   -0.1513901
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.7721742   -1.0606187   -0.4837297
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1541451   -0.3127018    0.0044116
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.3217451   -0.4764326   -0.1670576
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.2551941   -0.4268375   -0.0835507
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.1220792   -0.2967559    0.0525975
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1050860    0.0003547    0.2098174
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0538908   -0.0479519    0.1557336
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.1006670   -0.0126523    0.2139864
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0714530   -0.0318269    0.1747330
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5086563   -0.6668092   -0.3505034
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.5989117   -0.7624847   -0.4353386
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.5684682   -0.7534740   -0.3834624
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6853044   -0.8774202   -0.4931886
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                 1.2308019    0.9977382    1.4638657
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.8952682    0.6585175    1.1320190
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                 1.0075910    0.7615401    1.2536419
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                 1.1081486    0.8867781    1.3295191
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2999562    0.1810476    0.4188648
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2334521    0.0777853    0.3891189
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0961824   -0.0615253    0.2538902
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0797316   -0.0820585    0.2415216
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2048087   -0.2790652   -0.1305522
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4529188   -0.5456954   -0.3601422
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2578249   -0.3573823   -0.1582675
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2810144   -0.3530075   -0.2090212
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5585276    0.4282803    0.6887748
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.3253308    0.1649894    0.4856722
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.3794408    0.2437436    0.5151381
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.5205110    0.3674311    0.6735909
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.5336253   -0.5687617   -0.4984889
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.6605022   -0.6976338   -0.6233706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.6311663   -0.6651349   -0.5971976
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.5701662   -0.6076825   -0.5326500
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2569119   -0.3322384   -0.1815854
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.5295196   -0.5964819   -0.4625573
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.4341931   -0.4998162   -0.3685701
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.3317836   -0.3969455   -0.2666217
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.5413169   -0.9038009   -0.1788329
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.8839792   -1.3084988   -0.4594596
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.9369864   -1.5558898   -0.3180829
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.6347412   -1.0589513   -0.2105311
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0101535   -1.4827186   -0.5375884
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.9223961   -1.5003324   -0.3444598
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.5722029   -1.0487361   -0.0956698
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.8649224   -1.3747633   -0.3550816
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.2047789   -0.7155320    0.3059741
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.3496084   -0.7517766    0.0525598
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.7155484   -1.2034834   -0.2276135
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.2097742   -0.6439373    0.2243888
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2165000   -0.9236253    0.4906253
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.1121429   -0.5860943    0.3618085
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0575000   -0.5741649    0.6891649
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.3121429   -0.5732417    1.1975274
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2070137   -0.2244350    0.6384623
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.1774297   -0.4085757    0.7634351
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.3464589   -0.0476589    0.7405767
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3530915   -0.0828235    0.7890066
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1358007   -0.7210721    0.4494708
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.1666433   -0.3040613    0.6373479
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.1485526   -0.4857046    0.7828099
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0141530   -0.3398261    0.3115201
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3167126   -0.5272039   -0.1062213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6244366   -0.8153518   -0.4335214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6610845   -0.8496869   -0.4724821
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6329687   -0.8623182   -0.4036191
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.7244525   -0.9237331   -0.5251720
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.8506159   -1.0070555   -0.6941763
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.7601553   -0.9444761   -0.5758344
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.6439448   -0.8360913   -0.4517984
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.7395216   -0.9092708   -0.5697724
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.1193064   -1.2706593   -0.9679535
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.9593357   -1.1243391   -0.7943323
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.7618861   -0.9222502   -0.6015220
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0432752   -1.2270877   -0.8594628
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1401307   -1.3148470   -0.9654143
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.2018599   -1.3768828   -1.0268370
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1405992   -1.3256292   -0.9555693
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.5323615    0.2309154    0.8338077
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.4219369    0.1919856    0.6518883
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.5701064    0.2504415    0.8897713
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.6580521    0.3668618    0.9492425
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1818649   -0.2707839   -0.0929459
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.3993670   -0.5159116   -0.2828225
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3430957   -0.4581372   -0.2280541
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2835727   -0.4114214   -0.1557240
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4726256   -0.5388359   -0.4064152
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7371086   -0.8173977   -0.6568196
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6218004   -0.7095891   -0.5340117
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6562147   -0.7183318   -0.5940976
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0242439   -0.1342354    0.1827233
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.1360388   -0.3102253    0.0381477
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0824419   -0.2482115    0.0833277
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0546770   -0.2158179    0.1064639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2766303   -1.3192282   -1.2340324
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.3385377   -1.3852355   -1.2918400
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.2939933   -1.3398448   -1.2481418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3006624   -1.3478481   -1.2534766
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1605201   -1.2324621   -1.0885781
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.2555368   -1.3183268   -1.1927468
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.2631976   -1.3208726   -1.2055225
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2047795   -1.2615562   -1.1480027


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.6849860   -1.2654130   -0.1045589
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3155086   -1.2200325    0.5890153
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1389362   -0.5846974    0.3068250
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.6193596   -1.4468155    0.2080964
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0847815   -0.9985522    0.8289891
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0668411   -0.7922809    0.9259630
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.7623611   -1.6125332    0.0878110
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.6344444   -1.7436163    0.4747274
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.4311111   -1.6589369    0.7967147
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0496667   -1.0262246    0.9268913
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.6614444   -0.1454639    1.4683527
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.5882500   -0.2491724    1.4256724
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.2638273   -0.7971825    1.3248371
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0993622   -0.9326086    0.7338841
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.5779760   -0.3203094    1.4762614
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.6010000   -0.5790849    1.7810849
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0502857   -1.1466966    1.2472680
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0140000   -1.7920975    1.7640975
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0525167   -0.9609293    0.8558959
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.2943799   -1.1115603    0.5228006
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0581984   -0.7698828    0.8862797
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4907662   -0.8775219   -0.1040105
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1096011   -0.5414124    0.3222102
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0448760   -0.4510348    0.3612828
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2409815   -0.4964925    0.0145295
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0429739   -0.2246014    0.3105491
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0027140   -0.2510921    0.2565202
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0211859   -0.1067842    0.1491560
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1147462   -0.0183868    0.2478792
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.1076719   -0.0064566    0.2218005
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0516745   -0.1023364   -0.0010126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0425285   -0.0918089    0.0067518
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0141345   -0.0658315    0.0375625
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0588597   -0.2751627    0.1574433
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0185717   -0.1848037    0.2219470
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.1429217   -0.0651859    0.3510292
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.5652770   -1.2302113    0.0996573
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1760325   -0.8713950    0.5193301
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.6811470   -1.2913884   -0.0709056
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.2156357   -0.7209974    1.1522688
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0254568   -0.9497586    1.0006722
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.3436761   -0.5331160    1.2204682
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.6076511   -1.4578969    0.2425947
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.6592229   -1.5166603    0.1982144
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2559806   -1.1533032    0.6413419
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.6931667   -0.0330325    1.4193658
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.6652500   -0.6067561    1.9372561
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.4526111   -0.2378280    1.1430502
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.2219409   -0.6549457    1.0988276
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.4344030   -0.2920765    1.1608826
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.6422151   -0.0443381    1.3287682
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1815047   -0.8719186    0.5089091
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1712860   -0.8795258    0.5369538
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0986919   -0.6563615    0.4589777
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8629103   -1.2985607   -0.4272599
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7503158   -1.1869073   -0.3137243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3850210   -0.8268237    0.0567818
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.1847531   -0.1721255    0.5416317
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.2117753   -0.2020078    0.6255583
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1061342   -0.5070583    0.2947900
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1676000   -0.3881977    0.0529978
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1010490   -0.3336658    0.1315678
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0320659   -0.2025817    0.2667135
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0511952   -0.1970357    0.0946453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0044190   -0.1585123    0.1496743
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0336330   -0.1807462    0.1134802
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0902554   -0.3171024    0.1365916
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0598119   -0.3034559    0.1838320
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.1766481   -0.4265166    0.0732204
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3355337   -0.6678626   -0.0032048
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2232109   -0.5630111    0.1165892
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1226533   -0.4427055    0.1973989
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0665041   -0.2620751    0.1290669
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2037737   -0.4013340   -0.0062135
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2202246   -0.4207839   -0.0196653
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2481101   -0.3664889   -0.1297313
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0530163   -0.1768436    0.0708111
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0762057   -0.1791223    0.0267109
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2331968   -0.4396309   -0.0267627
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1790867   -0.3674673    0.0092938
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0380166   -0.2397253    0.1636921
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1268769   -0.1759614   -0.0777924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0975410   -0.1453246   -0.0497574
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0365409   -0.0863087    0.0132268
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2726077   -0.3726436   -0.1725718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1772812   -0.2741645   -0.0803979
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0748717   -0.1726965    0.0229531
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3426623   -0.9144180    0.2290934
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3956695   -1.1188300    0.3274911
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0934243   -0.6490190    0.4621704
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0877573   -0.6802013    0.8557160
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.4379505   -0.2225409    1.0984420
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1452311   -0.5441920    0.8346541
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.1448295   -0.7983084    0.5086495
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.5107695   -1.2163879    0.1948489
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0049953   -0.6777742    0.6677837
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1043571   -0.7469102    0.9556245
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.2740000   -0.6741702    1.2221702
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.5286429   -0.6044644    1.6617501
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0295840   -0.7592841    0.7001162
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1394452   -0.4487992    0.7276896
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1460779   -0.4680323    0.7601880
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3024439   -0.4530393    1.0579272
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.2843533   -0.5774686    1.1461751
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1216477   -0.5527057    0.7960010
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3077240   -0.5920230   -0.0234249
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3443719   -0.6271614   -0.0615824
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3162560   -0.6275455   -0.0049666
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1261634   -0.3798272    0.1275005
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0357028   -0.3074554    0.2360499
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0805077   -0.1964645    0.3574799
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.3797848   -0.6055487   -0.1540209
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.2198141   -0.4554137    0.0157856
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0223645   -0.2545528    0.2098238
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0968554   -0.3512301    0.1575193
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1585846   -0.4134276    0.0962583
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0973240   -0.3590492    0.1644012
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1104246   -0.4894416    0.2685924
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0377449   -0.4018598    0.4773496
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.1256906   -0.2929197    0.5443009
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2175021   -0.3641607   -0.0708436
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1612308   -0.3066486   -0.0158129
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1017078   -0.2575157    0.0541001
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2644831   -0.3678486   -0.1611175
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1491748   -0.2586169   -0.0397328
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1835891   -0.2736606   -0.0935176
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1602827   -0.3954412    0.0748757
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1066859   -0.3360051    0.1226334
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0789209   -0.3048589    0.1470171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0619074   -0.1236781   -0.0001368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0173630   -0.0783404    0.0436144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0240320   -0.0885918    0.0405277
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0950167   -0.1898348   -0.0001985
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1026774   -0.1943616   -0.0109933
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0442593   -0.1385135    0.0499948


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2633770   -0.5955810    0.0688271
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.2487443   -0.8238527    0.3263641
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4307778   -1.0497064    0.1881508
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.2836667   -0.2496791    0.8170124
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1652028   -0.3971486    0.7275542
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1690435   -0.7340337    1.0721206
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0250060   -0.4253437    0.4753557
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1557675   -0.3992563    0.0877212
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0383655   -0.1702450    0.0935140
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0633370   -0.0081828    0.1348568
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0229198   -0.0567479    0.0109083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0252541   -0.1090181    0.1595264
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.3644312   -0.7486943    0.0198319
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0338575   -0.4971464    0.5648614
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.3814914   -0.9910548    0.2280721
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.4342778   -0.0477590    0.9163146
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2745620   -0.1601724    0.7092965
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1190532   -0.5143373    0.2762309
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5071891   -0.7843237   -0.2300545
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0671103   -0.1757025    0.3099231
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0538750   -0.1897803    0.0820303
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0249181   -0.1158865    0.0660504
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0961424   -0.2384060    0.0461212
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1623702   -0.3681038    0.0433635
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1085091   -0.2038087   -0.0132095
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0890346   -0.1532924   -0.0247768
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1167138   -0.2318792   -0.0015485
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0596249   -0.0890247   -0.0302250
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1332476   -0.1973070   -0.0691882
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2235532   -0.5627631    0.1156567
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0976183   -0.3142945    0.5095310
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1478401   -0.5826559    0.2869757
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.2069687   -0.3537686    0.7677061
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1061682   -0.2787310    0.4910673
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1308854   -0.3775436    0.6393144
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2404379   -0.4201807   -0.0606951
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0213625   -0.1915279    0.1488029
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1500971   -0.2926757   -0.0075185
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0883111   -0.2463681    0.0697459
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0344677   -0.2228280    0.2917634
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0972747   -0.1664132   -0.0281362
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1373336   -0.1937378   -0.0809294
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0721113   -0.2060612    0.0618386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0206783   -0.0581735    0.0168169
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0626575   -0.1241217   -0.0011932
