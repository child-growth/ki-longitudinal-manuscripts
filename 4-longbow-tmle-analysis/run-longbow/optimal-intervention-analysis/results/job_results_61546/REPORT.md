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

agecat      studyid          country                        hhwealth_quart    n_cell       n
----------  ---------------  -----------------------------  ---------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4             32      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1             15      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2             20      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3             25      92
Birth       COHORTS          GUATEMALA                      Wealth Q4            293     816
Birth       COHORTS          GUATEMALA                      Wealth Q1            157     816
Birth       COHORTS          GUATEMALA                      Wealth Q2            161     816
Birth       COHORTS          GUATEMALA                      Wealth Q3            205     816
Birth       COHORTS          PHILIPPINES                    Wealth Q4            842    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q1            687    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q2            538    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q3            982    3049
Birth       CONTENT          PERU                           Wealth Q4              0       2
Birth       CONTENT          PERU                           Wealth Q1              0       2
Birth       CONTENT          PERU                           Wealth Q2              1       2
Birth       CONTENT          PERU                           Wealth Q3              1       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4            173     696
Birth       GMS-Nepal        NEPAL                          Wealth Q1            175     696
Birth       GMS-Nepal        NEPAL                          Wealth Q2            174     696
Birth       GMS-Nepal        NEPAL                          Wealth Q3            174     696
Birth       IRC              INDIA                          Wealth Q4             91     388
Birth       IRC              INDIA                          Wealth Q1             98     388
Birth       IRC              INDIA                          Wealth Q2             99     388
Birth       IRC              INDIA                          Wealth Q3            100     388
Birth       JiVitA-3         BANGLADESH                     Wealth Q4           5278   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q1           5772   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q2           5701   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q3           5683   22434
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            654    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            685    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            722    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            759    2820
Birth       MAL-ED           BANGLADESH                     Wealth Q4             56     213
Birth       MAL-ED           BANGLADESH                     Wealth Q1             52     213
Birth       MAL-ED           BANGLADESH                     Wealth Q2             51     213
Birth       MAL-ED           BANGLADESH                     Wealth Q3             54     213
Birth       MAL-ED           BRAZIL                         Wealth Q4             11      60
Birth       MAL-ED           BRAZIL                         Wealth Q1             21      60
Birth       MAL-ED           BRAZIL                         Wealth Q2             17      60
Birth       MAL-ED           BRAZIL                         Wealth Q3             11      60
Birth       MAL-ED           INDIA                          Wealth Q4              8      41
Birth       MAL-ED           INDIA                          Wealth Q1             14      41
Birth       MAL-ED           INDIA                          Wealth Q2              9      41
Birth       MAL-ED           INDIA                          Wealth Q3             10      41
Birth       MAL-ED           NEPAL                          Wealth Q4              6      26
Birth       MAL-ED           NEPAL                          Wealth Q1              9      26
Birth       MAL-ED           NEPAL                          Wealth Q2              3      26
Birth       MAL-ED           NEPAL                          Wealth Q3              8      26
Birth       MAL-ED           PERU                           Wealth Q4             54     215
Birth       MAL-ED           PERU                           Wealth Q1             55     215
Birth       MAL-ED           PERU                           Wealth Q2             54     215
Birth       MAL-ED           PERU                           Wealth Q3             52     215
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4             17      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1             27      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2             24      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3             28      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             26     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             32     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             34     120
Birth       PROVIDE          BANGLADESH                     Wealth Q4            132     539
Birth       PROVIDE          BANGLADESH                     Wealth Q1            134     539
Birth       PROVIDE          BANGLADESH                     Wealth Q2            136     539
Birth       PROVIDE          BANGLADESH                     Wealth Q3            137     539
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369
6 months    COHORTS          GUATEMALA                      Wealth Q4            339     925
6 months    COHORTS          GUATEMALA                      Wealth Q1            175     925
6 months    COHORTS          GUATEMALA                      Wealth Q2            195     925
6 months    COHORTS          GUATEMALA                      Wealth Q3            216     925
6 months    COHORTS          PHILIPPINES                    Wealth Q4            743    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q1            570    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q2            485    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q3            910    2708
6 months    CONTENT          PERU                           Wealth Q4             52     215
6 months    CONTENT          PERU                           Wealth Q1             59     215
6 months    CONTENT          PERU                           Wealth Q2             52     215
6 months    CONTENT          PERU                           Wealth Q3             52     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    IRC              INDIA                          Wealth Q4             99     407
6 months    IRC              INDIA                          Wealth Q1            105     407
6 months    IRC              INDIA                          Wealth Q2            100     407
6 months    IRC              INDIA                          Wealth Q3            103     407
6 months    JiVitA-3         BANGLADESH                     Wealth Q4           4984   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q1           3586   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q2           3907   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q3           4326   16803
6 months    JiVitA-4         BANGLADESH                     Wealth Q4           1199    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q1           1196    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q2           1201    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q3           1229    4825
6 months    LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    MAL-ED           BANGLADESH                     Wealth Q4             61     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1             59     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2             61     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3             59     240
6 months    MAL-ED           BRAZIL                         Wealth Q4             53     209
6 months    MAL-ED           BRAZIL                         Wealth Q1             53     209
6 months    MAL-ED           BRAZIL                         Wealth Q2             52     209
6 months    MAL-ED           BRAZIL                         Wealth Q3             51     209
6 months    MAL-ED           INDIA                          Wealth Q4             59     235
6 months    MAL-ED           INDIA                          Wealth Q1             60     235
6 months    MAL-ED           INDIA                          Wealth Q2             58     235
6 months    MAL-ED           INDIA                          Wealth Q3             58     235
6 months    MAL-ED           NEPAL                          Wealth Q4             59     236
6 months    MAL-ED           NEPAL                          Wealth Q1             59     236
6 months    MAL-ED           NEPAL                          Wealth Q2             59     236
6 months    MAL-ED           NEPAL                          Wealth Q3             59     236
6 months    MAL-ED           PERU                           Wealth Q4             67     270
6 months    MAL-ED           PERU                           Wealth Q1             68     270
6 months    MAL-ED           PERU                           Wealth Q2             71     270
6 months    MAL-ED           PERU                           Wealth Q3             64     270
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4             62     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1             60     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2             64     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3             63     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247
6 months    PROVIDE          BANGLADESH                     Wealth Q4            135     604
6 months    PROVIDE          BANGLADESH                     Wealth Q1            156     604
6 months    PROVIDE          BANGLADESH                     Wealth Q2            164     604
6 months    PROVIDE          BANGLADESH                     Wealth Q3            149     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             94     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             91     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             95     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             91     371
24 months   COHORTS          GUATEMALA                      Wealth Q4            402    1035
24 months   COHORTS          GUATEMALA                      Wealth Q1            202    1035
24 months   COHORTS          GUATEMALA                      Wealth Q2            212    1035
24 months   COHORTS          GUATEMALA                      Wealth Q3            219    1035
24 months   COHORTS          PHILIPPINES                    Wealth Q4            688    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q1            489    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q2            423    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q3            845    2445
24 months   CONTENT          PERU                           Wealth Q4             41     164
24 months   CONTENT          PERU                           Wealth Q1             40     164
24 months   CONTENT          PERU                           Wealth Q2             42     164
24 months   CONTENT          PERU                           Wealth Q3             41     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4            124     488
24 months   GMS-Nepal        NEPAL                          Wealth Q1            122     488
24 months   GMS-Nepal        NEPAL                          Wealth Q2            128     488
24 months   GMS-Nepal        NEPAL                          Wealth Q3            114     488
24 months   IRC              INDIA                          Wealth Q4            100     409
24 months   IRC              INDIA                          Wealth Q1            105     409
24 months   IRC              INDIA                          Wealth Q2            101     409
24 months   IRC              INDIA                          Wealth Q3            103     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4           2366    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q1           2001    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q2           2106    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q3           2150    8623
24 months   JiVitA-4         BANGLADESH                     Wealth Q4           1193    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q1           1156    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q2           1173    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q3           1225    4747
24 months   LCNI-5           MALAWI                         Wealth Q4            160     574
24 months   LCNI-5           MALAWI                         Wealth Q1            129     574
24 months   LCNI-5           MALAWI                         Wealth Q2            146     574
24 months   LCNI-5           MALAWI                         Wealth Q3            139     574
24 months   MAL-ED           BANGLADESH                     Wealth Q4             61     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1             30     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2             61     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3             60     212
24 months   MAL-ED           BRAZIL                         Wealth Q4             53     169
24 months   MAL-ED           BRAZIL                         Wealth Q1             26     169
24 months   MAL-ED           BRAZIL                         Wealth Q2             39     169
24 months   MAL-ED           BRAZIL                         Wealth Q3             51     169
24 months   MAL-ED           INDIA                          Wealth Q4             59     227
24 months   MAL-ED           INDIA                          Wealth Q1             52     227
24 months   MAL-ED           INDIA                          Wealth Q2             58     227
24 months   MAL-ED           INDIA                          Wealth Q3             58     227
24 months   MAL-ED           NEPAL                          Wealth Q4             59     228
24 months   MAL-ED           NEPAL                          Wealth Q1             55     228
24 months   MAL-ED           NEPAL                          Wealth Q2             55     228
24 months   MAL-ED           NEPAL                          Wealth Q3             59     228
24 months   MAL-ED           PERU                           Wealth Q4             65     201
24 months   MAL-ED           PERU                           Wealth Q1             42     201
24 months   MAL-ED           PERU                           Wealth Q2             38     201
24 months   MAL-ED           PERU                           Wealth Q3             56     201
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             63     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             49     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             63     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             63     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214
24 months   PROVIDE          BANGLADESH                     Wealth Q4            121     578
24 months   PROVIDE          BANGLADESH                     Wealth Q1            155     578
24 months   PROVIDE          BANGLADESH                     Wealth Q2            157     578
24 months   PROVIDE          BANGLADESH                     Wealth Q3            145     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: 65019846-62d5-11ea-827c-ac1f6b41467c
## task_uuid: 8cacecc5d6295f2ee45d0be4a1da1c94
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```




# Results Detail

## Results Plots
![](/tmp/a0e943e0-2a97-4e83-8e8b-f74ec9e1271c/7ecc3fb2-8d57-4a83-979d-20b90680c903/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6872939   -1.4499156    0.0753279
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1592233   -0.0001248    0.3185714
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1385354   -0.2090654   -0.0680055
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.2148410   -1.3715946   -1.0580873
Birth       IRC              INDIA                          optimal              observed          -0.4216926   -0.7053948   -0.1379905
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5796754   -1.6238104   -1.5355405
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.5002810   -1.6269799   -1.3735822
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.8059304   -1.0845991   -0.5272616
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.9960370   -1.6368506   -0.3552235
Birth       MAL-ED           INDIA                          optimal              observed          -1.5605608   -2.3207272   -0.8003945
Birth       MAL-ED           PERU                           optimal              observed          -0.8003923   -0.9981373   -0.6026473
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.6839363   -1.0888026   -0.2790700
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8864704   -1.2294797   -0.5434611
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0881666   -1.3378389   -0.8384943
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.7032202   -1.8225777   -1.5838626
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.9615325   -1.0441580   -0.8789070
6 months    CONTENT          PERU                           optimal              observed          -0.4091421   -0.6769286   -0.1413556
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.5267507   -1.7015411   -1.3519603
6 months    IRC              INDIA                          optimal              observed          -1.2598274   -1.5247920   -0.9948627
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2861731   -1.3394317   -1.2329145
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2411056   -1.3322735   -1.1499377
6 months    LCNI-5           MALAWI                         optimal              observed          -1.6172195   -1.7576315   -1.4768075
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.9282717   -1.1515629   -0.7049806
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0331917   -0.2221896    0.2885730
6 months    MAL-ED           INDIA                          optimal              observed          -1.2040743   -1.4137542   -0.9943944
6 months    MAL-ED           NEPAL                          optimal              observed          -0.3516043   -0.5437710   -0.1594376
6 months    MAL-ED           PERU                           optimal              observed          -1.3150213   -1.5273692   -1.1026734
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.8604779   -1.1502081   -0.5707476
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3082472   -1.5703380   -1.0461563
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.9160038   -1.0724049   -0.7596028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4144156   -0.5005984   -0.3282327
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.7783575   -2.9483035   -2.6084115
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.8263253   -2.9286534   -2.7239972
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.0575492   -2.1407733   -1.9743252
24 months   CONTENT          PERU                           optimal              observed          -0.5462744   -0.8428820   -0.2496668
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7858813   -1.9622890   -1.6094736
24 months   IRC              INDIA                          optimal              observed          -1.5334001   -1.7237700   -1.3430302
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.8887288   -1.9520400   -1.8254175
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.6798379   -1.7536451   -1.6060307
24 months   LCNI-5           MALAWI                         optimal              observed          -1.8987651   -2.0621083   -1.7354219
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.7156061   -1.9531087   -1.4781036
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0994233   -0.2371350    0.4359816
24 months   MAL-ED           INDIA                          optimal              observed          -2.0288141   -2.2569627   -1.8006655
24 months   MAL-ED           NEPAL                          optimal              observed          -0.9428780   -1.2076607   -0.6780953
24 months   MAL-ED           PERU                           optimal              observed          -1.7168631   -2.0134960   -1.4202302
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.1592815   -1.3976789   -0.9208842
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.2518037   -2.6683564   -1.8352509
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.3962871   -1.5763301   -1.2162441


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      observed             observed           0.1452941    0.0610109    0.2295774
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2491505   -0.2881717   -0.2101294
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5897094   -1.6089856   -1.5704331
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED           INDIA                          observed             observed          -1.2070732   -1.5254820   -0.8886644
Birth       MAL-ED           PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1225000   -1.3335666   -0.9114334
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8112324   -1.8807284   -1.7417365
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    CONTENT          PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3132090   -1.3363486   -1.2900693
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
6 months    LCNI-5           MALAWI                         observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9893430   -3.0546993   -2.9239867
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   CONTENT          PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0135591   -2.0412422   -1.9858759
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7803708   -1.8158650   -1.7448765
24 months   LCNI-5           MALAWI                         observed             observed          -1.8822648   -1.9637218   -1.8008078
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2739018   -0.9357736    0.3879700
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.0139292   -0.1431047    0.1152463
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1106151   -0.1712058   -0.0500244
Birth       GMS-Nepal        NEPAL                          optimal              observed           0.1296829   -0.0034045    0.2627703
Birth       IRC              INDIA                          optimal              observed           0.1136514   -0.1225426    0.3498454
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0100339   -0.0493798    0.0293119
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0233324   -0.1369715    0.0903066
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.2471213   -0.4892630   -0.0049795
Birth       MAL-ED           BRAZIL                         optimal              observed           0.2997037   -0.3130569    0.9124643
Birth       MAL-ED           INDIA                          optimal              observed           0.3534877   -0.2622365    0.9692119
Birth       MAL-ED           PERU                           optimal              observed          -0.1137473   -0.2756271    0.0481326
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.1315405   -0.2235217    0.4866026
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2360296   -0.5418550    0.0697958
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3352842   -0.5612019   -0.1093665
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1080123   -0.2095197   -0.0065048
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1790399   -0.2506469   -0.1074328
6 months    CONTENT          PERU                           optimal              observed           0.1306165   -0.1128427    0.3740757
6 months    GMS-Nepal        NEPAL                          optimal              observed           0.1759115    0.0286417    0.3231813
6 months    IRC              INDIA                          optimal              observed           0.0254211   -0.2003030    0.2511453
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0270358   -0.0731207    0.0190490
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.1029421   -0.1834598   -0.0224243
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0254766   -0.1458540    0.0949009
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2744088   -0.4718095   -0.0770082
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0143841   -0.2176926    0.2464608
6 months    MAL-ED           INDIA                          optimal              observed          -0.0029895   -0.1950388    0.1890597
6 months    MAL-ED           NEPAL                          optimal              observed          -0.2099776   -0.3903616   -0.0295936
6 months    MAL-ED           PERU                           optimal              observed          -0.0098337   -0.1967505    0.1770832
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1943146   -0.4422735    0.0536442
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0604978   -0.2821419    0.1611464
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1756877   -0.3083249   -0.0430504
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1298076   -0.2001166   -0.0594986
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.2194896    0.0623498    0.3766294
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1630177   -0.2491494   -0.0768860
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.3565653   -0.4302453   -0.2828852
24 months   CONTENT          PERU                           optimal              observed          -0.1405854   -0.4032469    0.1220761
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1015367   -0.2541361    0.0510627
24 months   IRC              INDIA                          optimal              observed          -0.2653774   -0.4301709   -0.1005839
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1248303   -0.1813878   -0.0682728
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.1005328   -0.1641346   -0.0369310
24 months   LCNI-5           MALAWI                         optimal              observed           0.0165003   -0.1236382    0.1566388
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.2627901   -0.4720594   -0.0535208
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0933089   -0.3795907    0.1929729
24 months   MAL-ED           INDIA                          optimal              observed           0.1426247   -0.0624915    0.3477409
24 months   MAL-ED           NEPAL                          optimal              observed          -0.3647097   -0.5995134   -0.1299061
24 months   MAL-ED           PERU                           optimal              observed          -0.0356079   -0.2830671    0.2118513
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4857780   -0.6972029   -0.2743531
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3937571   -0.7810246   -0.0064896
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.2061350   -0.3535928   -0.0586773
