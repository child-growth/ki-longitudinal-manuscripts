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







# Results Detail

## Results Plots
![](/tmp/07def217-2f8f-4b6f-9abd-27d076a3d768/b41c39e8-cfbf-46de-9407-4497369be690/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9575490   -1.3059190   -0.6091789
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7343752   -1.1541938   -0.3145567
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1371338   -2.1337128   -0.1405548
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0494910   -1.8479516   -0.2510304
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4166114   -1.0027523    0.1695295
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7928528   -1.6673650    0.0816593
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1307879   -1.6687795   -0.5927963
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3404291   -0.6390826   -0.0417756
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1375782   -0.0171094    0.2922658
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1155544   -0.1850049   -0.0461039
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5398187   -1.5763997   -1.5032377
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6061162   -1.7547480   -1.4574844
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3360390   -1.5333363   -1.1387416
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9171626   -1.3380942   -0.4962310
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6677188   -0.9921473   -0.3432903
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8817639   -2.7278864   -1.0356414
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3583008   -1.8771674   -0.8394342
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.9250968   -2.3104339   -1.5397596
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1713887   -1.4334615   -0.9093159
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3290325   -1.5889350   -1.0691301
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8761511   -1.0254154   -0.7268867
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4112923   -0.5000612   -0.3225235
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3566819   -1.5055768   -1.2077870
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.5335191   -0.8743555   -0.1926826
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6991734   -1.8050140   -1.5933328
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9178863   -0.9993574   -0.8364153
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7385897   -1.8890002   -1.5881793
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1949488   -1.2361229   -1.1537747
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1796584   -1.2553502   -1.1039666
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9658800   -2.5122707   -1.4194894
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3604185   -1.7274813   -0.9933558
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4809262   -1.8777824   -1.0840700
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -2.2769334   -3.0878896   -1.4659771
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0170807   -1.4901168   -0.5440446
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4214165   -2.9698327   -1.8730003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6964653   -2.8898431   -2.5030876
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5245856   -1.7201703   -1.3290009
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2277595   -1.3907617   -1.0647574
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8876392   -2.0486581   -1.7266203
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.7775538   -1.1700339   -0.3850736
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6658792   -2.7633364   -2.5684221
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0005229   -2.0829767   -1.9180691
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7400394   -1.8911333   -1.5889454
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8239679   -1.8704972   -1.7774387
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5564313   -1.6252581   -1.4876044


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0813415   -1.3098662   -0.8528167
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0841818   -1.3853089   -0.7830548
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8770968   -1.1861056   -0.5680880
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -1.0513889   -1.3551960   -0.7475818
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5011475   -0.7582104   -0.2440847
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.7026087   -1.0554952   -0.3497222
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1452941    0.0610109    0.2295774
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2491505   -0.2881717   -0.2101294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5750490   -1.5948262   -1.5552718
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2886008   -1.5330953   -1.0441063
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1499296   -1.3858882   -0.9139710
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7429762   -0.9817457   -0.5042067
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.5801389   -1.8994566   -1.2608211
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.8550000   -1.0838479   -0.6261521
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4104598   -1.6281211   -1.1927984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0925674   -1.1686395   -1.0164954
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8112324   -1.8807284   -1.7417365
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132090   -1.3363486   -1.2900693
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -2.0155844   -2.2679754   -1.7631934
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8247183   -2.0459767   -1.6034599
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5063095   -1.7704452   -1.2421738
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -2.1384375   -2.4638687   -1.8130063
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.4993939   -1.7838130   -1.2149749
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6744068   -2.9325198   -2.4162938
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5853993   -1.6687810   -1.5020176
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8581407   -2.9236747   -2.7926066
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8714634   -1.9528558   -1.7900711
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0125560   -2.0402683   -1.9848436
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7578934   -1.7933205   -1.7224663


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1237925   -0.4393238    0.1917388
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3498066   -0.7102167    0.0106035
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2600370   -0.5777550    1.0978291
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0018979   -0.7114831    0.7076874
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0845361   -0.6143065    0.4452343
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0902442   -0.6763967    0.8568850
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1653434   -0.3180815    0.6487684
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0323879   -0.2123572    0.2771329
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0077159   -0.1279559    0.1433878
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1335961   -0.1924761   -0.0747162
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0352303   -0.0671580   -0.0033026
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1084520   -0.0127952    0.2296991
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0474382   -0.2342618    0.3291381
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2327670   -0.6261556    0.1606216
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0752574   -0.3968393    0.2463245
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.3016250   -0.3846549    0.9879050
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5033008    0.0555116    0.9510900
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5146370    0.1754739    0.8538001
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2520620   -0.4854818   -0.0186423
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0946263   -0.1338697    0.3231223
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2164163   -0.3448993   -0.0879334
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1329308   -0.2050024   -0.0608593
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0245297   -0.1074135    0.1564730
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.2195974   -0.0788528    0.5180475
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1120590   -0.2022202   -0.0218978
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2226860   -0.2922855   -0.1530866
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0958937   -0.0300783    0.2218656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1182601   -0.1508042   -0.0857161
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1643893   -0.2286307   -0.1001478
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0497044   -0.5106491    0.4112403
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4642998   -0.8141523   -0.1144472
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0253833   -0.4200687    0.3693020
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1384959   -0.6128612    0.8898529
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4823133   -0.9245686   -0.0400580
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2529903   -0.7379767    0.2319962
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1370971   -0.0346500    0.3088441
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2578920   -0.4280881   -0.0876958
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3576398   -0.4969032   -0.2183763
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0040487   -0.1380250    0.1461223
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.0813342   -0.2493062    0.4119747
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1922614   -0.2713101   -0.1132127
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3893421   -0.4610281   -0.3176561
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1314241   -0.2608546   -0.0019935
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1885880   -0.2269664   -0.1502097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2014621   -0.2581696   -0.1447547
