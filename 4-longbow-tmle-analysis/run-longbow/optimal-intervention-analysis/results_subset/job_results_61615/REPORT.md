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

agecat      studyid          country                        hhwealth_quart    n_cell       n
----------  ---------------  -----------------------------  ---------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4             32      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1             13      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2             19      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3             22      86
Birth       COHORTS          GUATEMALA                      Wealth Q4            258     729
Birth       COHORTS          GUATEMALA                      Wealth Q1            144     729
Birth       COHORTS          GUATEMALA                      Wealth Q2            141     729
Birth       COHORTS          GUATEMALA                      Wealth Q3            186     729
Birth       COHORTS          PHILIPPINES                    Wealth Q4            815    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q1            647    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q2            506    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q3            930    2898
Birth       CONTENT          PERU                           Wealth Q4              0       2
Birth       CONTENT          PERU                           Wealth Q1              0       2
Birth       CONTENT          PERU                           Wealth Q2              1       2
Birth       CONTENT          PERU                           Wealth Q3              1       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4            161     641
Birth       GMS-Nepal        NEPAL                          Wealth Q1            164     641
Birth       GMS-Nepal        NEPAL                          Wealth Q2            160     641
Birth       GMS-Nepal        NEPAL                          Wealth Q3            156     641
Birth       IRC              INDIA                          Wealth Q4             79     343
Birth       IRC              INDIA                          Wealth Q1             90     343
Birth       IRC              INDIA                          Wealth Q2             83     343
Birth       IRC              INDIA                          Wealth Q3             91     343
Birth       JiVitA-3         BANGLADESH                     Wealth Q4           4505   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q1           4435   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q2           4476   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q3           4578   17994
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            572    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            560    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            617    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            645    2394
Birth       MAL-ED           BANGLADESH                     Wealth Q4             56     201
Birth       MAL-ED           BANGLADESH                     Wealth Q1             48     201
Birth       MAL-ED           BANGLADESH                     Wealth Q2             46     201
Birth       MAL-ED           BANGLADESH                     Wealth Q3             51     201
Birth       MAL-ED           BRAZIL                         Wealth Q4             10      57
Birth       MAL-ED           BRAZIL                         Wealth Q1             20      57
Birth       MAL-ED           BRAZIL                         Wealth Q2             16      57
Birth       MAL-ED           BRAZIL                         Wealth Q3             11      57
Birth       MAL-ED           INDIA                          Wealth Q4              8      39
Birth       MAL-ED           INDIA                          Wealth Q1             13      39
Birth       MAL-ED           INDIA                          Wealth Q2              9      39
Birth       MAL-ED           INDIA                          Wealth Q3              9      39
Birth       MAL-ED           NEPAL                          Wealth Q4              6      25
Birth       MAL-ED           NEPAL                          Wealth Q1              8      25
Birth       MAL-ED           NEPAL                          Wealth Q2              3      25
Birth       MAL-ED           NEPAL                          Wealth Q3              8      25
Birth       MAL-ED           PERU                           Wealth Q4             53     210
Birth       MAL-ED           PERU                           Wealth Q1             55     210
Birth       MAL-ED           PERU                           Wealth Q2             51     210
Birth       MAL-ED           PERU                           Wealth Q3             51     210
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4             17      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1             26      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2             24      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3             28      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             23     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             30     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             33     112
Birth       PROVIDE          BANGLADESH                     Wealth Q4            132     532
Birth       PROVIDE          BANGLADESH                     Wealth Q1            129     532
Birth       PROVIDE          BANGLADESH                     Wealth Q2            136     532
Birth       PROVIDE          BANGLADESH                     Wealth Q3            135     532
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368
6 months    COHORTS          GUATEMALA                      Wealth Q4            339     926
6 months    COHORTS          GUATEMALA                      Wealth Q1            176     926
6 months    COHORTS          GUATEMALA                      Wealth Q2            194     926
6 months    COHORTS          GUATEMALA                      Wealth Q3            217     926
6 months    COHORTS          PHILIPPINES                    Wealth Q4            744    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q1            569    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q2            485    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q3            908    2706
6 months    CONTENT          PERU                           Wealth Q4             52     215
6 months    CONTENT          PERU                           Wealth Q1             59     215
6 months    CONTENT          PERU                           Wealth Q2             52     215
6 months    CONTENT          PERU                           Wealth Q3             52     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    IRC              INDIA                          Wealth Q4            100     408
6 months    IRC              INDIA                          Wealth Q1            104     408
6 months    IRC              INDIA                          Wealth Q2            102     408
6 months    IRC              INDIA                          Wealth Q3            102     408
6 months    JiVitA-3         BANGLADESH                     Wealth Q4           4971   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q1           3585   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q2           3902   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q3           4318   16776
6 months    JiVitA-4         BANGLADESH                     Wealth Q4           1199    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q1           1199    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q2           1201    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q3           1228    4827
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
6 months    PROVIDE          BANGLADESH                     Wealth Q4            134     603
6 months    PROVIDE          BANGLADESH                     Wealth Q1            156     603
6 months    PROVIDE          BANGLADESH                     Wealth Q2            164     603
6 months    PROVIDE          BANGLADESH                     Wealth Q3            149     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372
24 months   COHORTS          GUATEMALA                      Wealth Q4            405    1046
24 months   COHORTS          GUATEMALA                      Wealth Q1            203    1046
24 months   COHORTS          GUATEMALA                      Wealth Q2            215    1046
24 months   COHORTS          GUATEMALA                      Wealth Q3            223    1046
24 months   COHORTS          PHILIPPINES                    Wealth Q4            685    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q1            492    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q2            424    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q3            848    2449
24 months   CONTENT          PERU                           Wealth Q4             41     164
24 months   CONTENT          PERU                           Wealth Q1             40     164
24 months   CONTENT          PERU                           Wealth Q2             42     164
24 months   CONTENT          PERU                           Wealth Q3             41     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4            124     487
24 months   GMS-Nepal        NEPAL                          Wealth Q1            121     487
24 months   GMS-Nepal        NEPAL                          Wealth Q2            128     487
24 months   GMS-Nepal        NEPAL                          Wealth Q3            114     487
24 months   IRC              INDIA                          Wealth Q4            100     409
24 months   IRC              INDIA                          Wealth Q1            105     409
24 months   IRC              INDIA                          Wealth Q2            101     409
24 months   IRC              INDIA                          Wealth Q3            103     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4           2351    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q1           1996    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q2           2103    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q3           2144    8594
24 months   JiVitA-4         BANGLADESH                     Wealth Q4           1187    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q1           1153    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q2           1169    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q3           1221    4730
24 months   LCNI-5           MALAWI                         Wealth Q4            155     558
24 months   LCNI-5           MALAWI                         Wealth Q1            127     558
24 months   LCNI-5           MALAWI                         Wealth Q2            140     558
24 months   LCNI-5           MALAWI                         Wealth Q3            136     558
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
24 months   PROVIDE          BANGLADESH                     Wealth Q4            122     579
24 months   PROVIDE          BANGLADESH                     Wealth Q1            155     579
24 months   PROVIDE          BANGLADESH                     Wealth Q2            157     579
24 months   PROVIDE          BANGLADESH                     Wealth Q3            145     579
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
## lf_uuid: 1cbaac64-63b4-11ea-a792-ac1f6b41467c
## task_uuid: 2a6d117c93970b62a1a122e01d4e38d1
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```




# Results Detail

## Results Plots
![](/tmp/af56c2aa-6f02-4956-ac99-2cc2771ef7e9/bc4eb387-4700-45f4-a85f-b1ec8f87a049/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2251553   -0.7706974    0.3203869
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.0511230   -1.2583216   -0.8439243
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.7522851   -0.8489381   -0.6556321
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0941675   -1.2735566   -0.9147784
Birth       IRC              INDIA                          optimal              observed          -1.2937837   -1.5996058   -0.9879616
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7927813   -0.8371803   -0.7483822
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.7872391   -0.8936650   -0.6808133
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7733265   -1.0783677   -0.4682854
Birth       MAL-ED           BRAZIL                         optimal              observed           0.6934232    0.2324663    1.1543802
Birth       MAL-ED           INDIA                          optimal              observed          -1.1234649   -1.7088449   -0.5380850
Birth       MAL-ED           PERU                           optimal              observed          -0.1055411   -0.3560699    0.1449878
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.1970855   -0.2921738    0.6863448
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6056928    0.2001894    1.0111962
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2413724   -1.3818903   -1.1008546
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1189549   -0.4440036    0.2060937
6 months    COHORTS          GUATEMALA                      optimal              observed           0.3702838    0.2469359    0.4936317
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1784411   -0.2553711   -0.1015112
6 months    CONTENT          PERU                           optimal              observed           1.1155862    0.8724042    1.3587683
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.5491088   -0.7099792   -0.3882384
6 months    IRC              INDIA                          optimal              observed          -0.4536726   -0.7231133   -0.1842319
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.2714427   -0.3533932   -0.1894922
6 months    LCNI-5           MALAWI                         optimal              observed           0.5502671    0.4161701    0.6843640
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.1386090   -0.0998814    0.3770994
6 months    MAL-ED           BRAZIL                         optimal              observed           1.1403394    0.7941771    1.4865016
6 months    MAL-ED           INDIA                          optimal              observed          -0.6809937   -0.9285807   -0.4334067
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1197160   -0.4185326    0.1791005
6 months    MAL-ED           PERU                           optimal              observed           1.2348296    1.0071698    1.4624895
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.7742011    0.4444120    1.1039901
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4237603    0.1668898    0.6806309
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.1291329   -0.0419952    0.3002610
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0075278   -0.1214691    0.1064135
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3210181   -0.5307308   -0.1113053
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1839832   -0.2731075   -0.0948590
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4832504   -0.5488332   -0.4176676
24 months   CONTENT          PERU                           optimal              observed           0.7107620    0.4587352    0.9627887
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.0355630   -1.2145602   -0.8565658
24 months   IRC              INDIA                          optimal              observed          -0.7353464   -0.9285777   -0.5421152
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.3175504   -1.3670806   -1.2680203
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1875617   -1.2583575   -1.1167658
24 months   LCNI-5           MALAWI                         optimal              observed           0.0150095   -0.1466903    0.1767093
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.5961786   -0.8864592   -0.3058980
24 months   MAL-ED           BRAZIL                         optimal              observed           0.4358818    0.0309519    0.8408117
24 months   MAL-ED           INDIA                          optimal              observed          -0.9257818   -1.1193628   -0.7322008
24 months   MAL-ED           NEPAL                          optimal              observed          -0.1576203   -0.3990071    0.0837664
24 months   MAL-ED           PERU                           optimal              observed          -0.1260393   -0.4393994    0.1873209
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.6342232    0.4128660    0.8555805
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2340072    0.0099204    0.4580939
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.7102403   -0.8981982   -0.5222824


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0572840   -1.1606089   -0.9539590
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7422912   -0.7886598   -0.6959226
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7777103   -0.7967006   -0.7587201
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED           BRAZIL                         observed             observed           0.4643860    0.1360519    0.7927200
Birth       MAL-ED           INDIA                          observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED           PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7637500    0.5676177    0.9598823
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      observed             observed           0.1914471    0.1185005    0.2643936
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    CONTENT          PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
6 months    LCNI-5           MALAWI                         observed             observed           0.4417647    0.3702742    0.5132552
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          observed             observed          -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0512099    0.9285617    1.1738581
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5404351    0.3867005    0.6941696
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2791396   -0.3336899   -0.2245893
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   CONTENT          PERU                           observed             observed           0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2973086   -1.3206115   -1.2740057
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220
24 months   LCNI-5           MALAWI                         observed             observed          -0.0477867   -0.1301103    0.0345368
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2396703   -0.7360325    0.2566919
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.0061610   -0.1767260    0.1644041
Birth       COHORTS          PHILIPPINES                    optimal              observed           0.0099938   -0.0756471    0.0956348
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0222756   -0.1675375    0.1229864
Birth       IRC              INDIA                          optimal              observed           0.2832006    0.0256877    0.5407135
Birth       JiVitA-3         BANGLADESH                     optimal              observed           0.0150709   -0.0256286    0.0557705
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.0989893    0.0034300    0.1945487
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.1995093   -0.4668239    0.0678053
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.2290373   -0.6686467    0.2105721
Birth       MAL-ED           INDIA                          optimal              observed           0.1793624   -0.3655418    0.7242665
Birth       MAL-ED           PERU                           optimal              observed           0.0587316   -0.1622359    0.2796990
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3700329   -0.8393272    0.0992615
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1580572   -0.1842972    0.5004115
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0570862   -0.1752417    0.0610693
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3837217   -0.6562176   -0.1112258
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1788367   -0.2884809   -0.0691925
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1154022   -0.1834410   -0.0473633
6 months    CONTENT          PERU                           optimal              observed          -0.0511583   -0.2636396    0.1613230
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0547328   -0.1984027    0.0889371
6 months    IRC              INDIA                          optimal              observed          -0.1452571   -0.3820514    0.0915372
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.1187168   -0.1935097   -0.0439239
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1085024   -0.2268948    0.0098901
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2719423   -0.4792067   -0.0646780
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.1682620   -0.4659245    0.1294005
6 months    MAL-ED           INDIA                          optimal              observed          -0.0292935   -0.2471810    0.1885939
6 months    MAL-ED           NEPAL                          optimal              observed           0.2301468   -0.0211551    0.4814487
6 months    MAL-ED           PERU                           optimal              observed          -0.1836197   -0.3861197    0.0188803
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2337660   -0.5214095    0.0538774
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1124610   -0.1116561    0.3365781
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.3282235   -0.4742529   -0.1821941
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0876958   -0.0130251    0.1884166
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2361325   -0.4150723   -0.0571927
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0951563   -0.1647155   -0.0255972
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.1267088   -0.1831878   -0.0702298
24 months   CONTENT          PERU                           optimal              observed          -0.1205181   -0.3446428    0.1036067
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1007478   -0.2603384    0.0588428
24 months   IRC              INDIA                          optimal              observed          -0.0104686   -0.1748068    0.1538697
24 months   JiVitA-3         BANGLADESH                     optimal              observed           0.0202418   -0.0233225    0.0638062
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0356159   -0.0995930    0.0283612
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0627963   -0.1991462    0.0735537
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.2231138   -0.4889683    0.0427407
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0267415   -0.3325862    0.3860691
24 months   MAL-ED           INDIA                          optimal              observed          -0.0258702   -0.2078096    0.1560693
24 months   MAL-ED           NEPAL                          optimal              observed          -0.2172919   -0.4267591   -0.0078248
24 months   MAL-ED           PERU                           optimal              observed           0.2372374   -0.0335489    0.5080238
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2251931   -0.4196628   -0.0307235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1792097   -0.3707850    0.0123657
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1826267   -0.3344710   -0.0307824
