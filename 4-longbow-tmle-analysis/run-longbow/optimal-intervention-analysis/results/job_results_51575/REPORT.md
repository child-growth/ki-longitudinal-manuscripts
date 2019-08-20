---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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







# Results Detail

## Results Plots
![](/tmp/1b0ecffd-27ad-4bf3-9fbd-ae85cb009347/1e1427f4-71b8-4255-88de-fe232dfe8f34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6836062   -1.0579813   -0.3092311
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1241515   -1.4812212   -0.7670819
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3857957   -1.2353255    0.4637342
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1458978   -0.3413285    0.6331241
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2771692   -0.4110752    0.9654136
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6288351   -1.2225233    2.4801934
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6905237   -1.1527747   -0.2282727
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9003910   -1.2110045   -0.5897775
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0617651   -1.2505075   -0.8730227
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6953794   -0.7874935   -0.6032653
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7109370   -0.7493574   -0.6725167
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2485679   -0.3952287   -0.1019071
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1915221   -0.6389235    0.2558793
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4237229   -2.1158097   -0.7316360
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0031100   -0.6549406    0.6487207
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.3623949   -0.5576587    1.2824485
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5931858    0.1217440    1.0646276
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1742923   -0.2160223    0.5646069
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0045534   -0.3289777    0.3380846
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5950871   -0.8575431   -0.3326310
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2184661   -0.3884719   -0.0484602
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0137075   -0.0978670    0.1252819
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6176734   -0.7811476   -0.4541991
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1190084    0.8861480    1.3518688
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.4642739    0.3373001    0.5912478
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2354854   -0.3132223   -0.1577486
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.6409090    0.5043850    0.7774330
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5643518   -0.6000419   -0.5286617
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2693256   -0.3430420   -0.1956092
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7126076   -1.1159133   -0.3093019
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6032615   -1.0488507   -0.1576722
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5073493   -0.9877261   -0.0269725
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4759519   -1.0325305    0.0806267
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4404508    0.1918323    0.6890693
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4308106   -0.1099902    0.9716113
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3170814   -0.5257567   -0.1084061
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6538273   -0.8439595   -0.4636950
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8597586   -1.0133209   -0.7061963
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0636955   -1.2395853   -0.8878056
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.4653303    0.2258450    0.7048155
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1808799   -0.2698170   -0.0919427
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4714809   -0.5381496   -0.4048122
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0806469   -0.2307951    0.0695013
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3083187   -1.3532060   -1.2634313
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1710248   -1.2376828   -1.1043669


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9414474   -1.1655223   -0.7173724
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0992593   -1.4060416   -0.7924769
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8496667   -1.2385841   -0.4607492
Birth       ki0047075b-MAL-ED          PERU                           observed             observed           0.0766667   -0.2519852    0.4053186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1047541   -0.4290621    0.2195539
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5930435    0.1251922    1.0608948
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7239386   -0.7437757   -0.7041015
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.2054115   -0.4495784    0.0387554
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7227934   -0.9900648   -0.4555221
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0465079   -0.2108391    0.3038550
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           0.8727778    0.5137098    1.2318457
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4787179    0.2126042    0.7448317
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5033333    0.2619074    0.7447593
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2080201   -0.2927357   -0.1233045
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4418137    0.3703100    0.5133174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7648701   -0.9729655   -0.5567748
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9125352   -1.1472376   -0.6778328
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3526190   -0.5782459   -0.1269921
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -0.0095312   -0.3657847    0.3467222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3131818    0.1018345    0.5245291
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0049153   -0.2462498    0.2364193
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8896187   -0.9726240   -0.8066134
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478674   -0.1301904    0.0344557
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2973086   -1.3206115   -1.2740057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2578411   -0.6068770    0.0911947
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0248923   -0.3885114    0.4382959
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4638710   -1.1620533    0.2343113
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0692311   -0.5747583    0.4362960
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3819233   -0.9758550    0.2120085
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0357916   -1.5810044    1.5094212
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0630237   -0.3490718    0.4751193
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1101921   -0.3684030    0.1480188
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0044811   -0.1522569    0.1612191
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0469118   -0.1277174    0.0338938
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0130015   -0.0451664    0.0191633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1197483   -0.2435489    0.0040523
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0138894   -0.4156949    0.3879161
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.7009294    0.1126872    1.2891717
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0496179   -0.4725415    0.5717773
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.5103829   -0.2888197    1.3095855
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1144678   -0.5528287    0.3238931
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3290411   -0.0330907    0.6911728
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5072301   -0.7868982   -0.2275619
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0038427   -0.2334954    0.2258100
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0104459   -0.1330823    0.1539742
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0664605   -0.0320926    0.1650137
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0128747   -0.1317691    0.1575185
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0505766   -0.2573413    0.1561880
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2728269   -0.3847612   -0.1608925
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0583579   -0.1253065    0.0085908
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1990953   -0.3189223   -0.0792683
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0288984   -0.0586713    0.0008746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1208339   -0.1831675   -0.0585004
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0522625   -0.4145004    0.3099753
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3092737   -0.7120724    0.0935249
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1547303   -0.2574276    0.5668881
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4664206   -0.0988347    1.0316759
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1272690   -0.4011114    0.1465734
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4357258   -0.9037374    0.0322858
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2400691   -0.4183416   -0.0617966
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0919877   -0.2551194    0.0711439
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0298601   -0.1637420    0.1040217
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0678909   -0.2208114    0.0850296
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1014990   -0.1156306    0.3186286
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0982597   -0.1673376   -0.0291817
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1384783   -0.1951175   -0.0818390
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0327795   -0.0986394    0.1641984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0110101   -0.0265159    0.0485360
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0521528   -0.1095892    0.0052836
