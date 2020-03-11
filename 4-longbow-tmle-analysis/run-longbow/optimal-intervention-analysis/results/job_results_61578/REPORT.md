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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mage       n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)        75      86
Birth       CMC-V-BCS-2002   INDIA                          <20             7      86
Birth       CMC-V-BCS-2002   INDIA                          >=30            4      86
Birth       COHORTS          GUATEMALA                      [20-30)       367     756
Birth       COHORTS          GUATEMALA                      <20           101     756
Birth       COHORTS          GUATEMALA                      >=30          288     756
Birth       COHORTS          INDIA                          [20-30)      2965    4405
Birth       COHORTS          INDIA                          <20           337    4405
Birth       COHORTS          INDIA                          >=30         1103    4405
Birth       COHORTS          PHILIPPINES                    [20-30)      1744    2899
Birth       COHORTS          PHILIPPINES                    <20           354    2899
Birth       COHORTS          PHILIPPINES                    >=30          801    2899
Birth       EE               PAKISTAN                       [20-30)        68     177
Birth       EE               PAKISTAN                       <20             1     177
Birth       EE               PAKISTAN                       >=30          108     177
Birth       GMS-Nepal        NEPAL                          [20-30)       421     641
Birth       GMS-Nepal        NEPAL                          <20           125     641
Birth       GMS-Nepal        NEPAL                          >=30           95     641
Birth       IRC              INDIA                          [20-30)       289     343
Birth       IRC              INDIA                          <20            28     343
Birth       IRC              INDIA                          >=30           26     343
Birth       JiVitA-3         BANGLADESH                     [20-30)      9028   18006
Birth       JiVitA-3         BANGLADESH                     <20          7251   18006
Birth       JiVitA-3         BANGLADESH                     >=30         1727   18006
Birth       Keneba           GAMBIA                         [20-30)       670    1466
Birth       Keneba           GAMBIA                         <20           224    1466
Birth       Keneba           GAMBIA                         >=30          572    1466
Birth       MAL-ED           BANGLADESH                     [20-30)       148     215
Birth       MAL-ED           BANGLADESH                     <20            28     215
Birth       MAL-ED           BANGLADESH                     >=30           39     215
Birth       MAL-ED           BRAZIL                         [20-30)        39      62
Birth       MAL-ED           BRAZIL                         <20             8      62
Birth       MAL-ED           BRAZIL                         >=30           15      62
Birth       MAL-ED           INDIA                          [20-30)        36      45
Birth       MAL-ED           INDIA                          <20             7      45
Birth       MAL-ED           INDIA                          >=30            2      45
Birth       MAL-ED           NEPAL                          [20-30)        21      26
Birth       MAL-ED           NEPAL                          <20             0      26
Birth       MAL-ED           NEPAL                          >=30            5      26
Birth       MAL-ED           PERU                           [20-30)       113     228
Birth       MAL-ED           PERU                           <20            63     228
Birth       MAL-ED           PERU                           >=30           52     228
Birth       MAL-ED           SOUTH AFRICA                   [20-30)        65     120
Birth       MAL-ED           SOUTH AFRICA                   <20            22     120
Birth       MAL-ED           SOUTH AFRICA                   >=30           33     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)        66     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           42     115
Birth       NIH-Birth        BANGLADESH                     [20-30)       385     573
Birth       NIH-Birth        BANGLADESH                     <20            67     573
Birth       NIH-Birth        BANGLADESH                     >=30          121     573
Birth       NIH-Crypto       BANGLADESH                     [20-30)       469     707
Birth       NIH-Crypto       BANGLADESH                     <20           124     707
Birth       NIH-Crypto       BANGLADESH                     >=30          114     707
Birth       PROBIT           BELARUS                        [20-30)      9889   13817
Birth       PROBIT           BELARUS                        <20          1402   13817
Birth       PROBIT           BELARUS                        >=30         2526   13817
Birth       PROVIDE          BANGLADESH                     [20-30)       366     532
Birth       PROVIDE          BANGLADESH                     <20            67     532
Birth       PROVIDE          BANGLADESH                     >=30           99     532
Birth       SAS-CompFeed     INDIA                          [20-30)       841    1103
Birth       SAS-CompFeed     INDIA                          <20           138    1103
Birth       SAS-CompFeed     INDIA                          >=30          124    1103
Birth       ZVITAMBO         ZIMBABWE                       [20-30)      8680   12881
Birth       ZVITAMBO         ZIMBABWE                       <20          2030   12881
Birth       ZVITAMBO         ZIMBABWE                       >=30         2171   12881
6 months    CMC-V-BCS-2002   INDIA                          [20-30)       292     368
6 months    CMC-V-BCS-2002   INDIA                          <20            33     368
6 months    CMC-V-BCS-2002   INDIA                          >=30           43     368
6 months    COHORTS          GUATEMALA                      [20-30)       471     963
6 months    COHORTS          GUATEMALA                      <20           118     963
6 months    COHORTS          GUATEMALA                      >=30          374     963
6 months    COHORTS          INDIA                          [20-30)      3326    4897
6 months    COHORTS          INDIA                          <20           371    4897
6 months    COHORTS          INDIA                          >=30         1200    4897
6 months    COHORTS          PHILIPPINES                    [20-30)      1600    2706
6 months    COHORTS          PHILIPPINES                    <20           331    2706
6 months    COHORTS          PHILIPPINES                    >=30          775    2706
6 months    EE               PAKISTAN                       [20-30)       159     372
6 months    EE               PAKISTAN                       <20             1     372
6 months    EE               PAKISTAN                       >=30          212     372
6 months    GMS-Nepal        NEPAL                          [20-30)       371     564
6 months    GMS-Nepal        NEPAL                          <20           108     564
6 months    GMS-Nepal        NEPAL                          >=30           85     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    Guatemala BSC    GUATEMALA                      <20            46     276
6 months    Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    IRC              INDIA                          [20-30)       342     408
6 months    IRC              INDIA                          <20            37     408
6 months    IRC              INDIA                          >=30           29     408
6 months    JiVitA-3         BANGLADESH                     [20-30)      7656   16779
6 months    JiVitA-3         BANGLADESH                     <20          7904   16779
6 months    JiVitA-3         BANGLADESH                     >=30         1219   16779
6 months    Keneba           GAMBIA                         [20-30)       987    2080
6 months    Keneba           GAMBIA                         <20           288    2080
6 months    Keneba           GAMBIA                         >=30          805    2080
6 months    LCNI-5           MALAWI                         [20-30)       364     669
6 months    LCNI-5           MALAWI                         <20           107     669
6 months    LCNI-5           MALAWI                         >=30          198     669
6 months    MAL-ED           BANGLADESH                     [20-30)       165     241
6 months    MAL-ED           BANGLADESH                     <20            35     241
6 months    MAL-ED           BANGLADESH                     >=30           41     241
6 months    MAL-ED           BRAZIL                         [20-30)       125     209
6 months    MAL-ED           BRAZIL                         <20            37     209
6 months    MAL-ED           BRAZIL                         >=30           47     209
6 months    MAL-ED           INDIA                          [20-30)       179     234
6 months    MAL-ED           INDIA                          <20            34     234
6 months    MAL-ED           INDIA                          >=30           21     234
6 months    MAL-ED           NEPAL                          [20-30)       185     236
6 months    MAL-ED           NEPAL                          <20             5     236
6 months    MAL-ED           NEPAL                          >=30           46     236
6 months    MAL-ED           PERU                           [20-30)       136     273
6 months    MAL-ED           PERU                           <20            76     273
6 months    MAL-ED           PERU                           >=30           61     273
6 months    MAL-ED           SOUTH AFRICA                   [20-30)       118     254
6 months    MAL-ED           SOUTH AFRICA                   <20            42     254
6 months    MAL-ED           SOUTH AFRICA                   >=30           94     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30          104     247
6 months    NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    NIH-Birth        BANGLADESH                     <20            61     535
6 months    NIH-Birth        BANGLADESH                     >=30          117     535
6 months    NIH-Crypto       BANGLADESH                     [20-30)       462     715
6 months    NIH-Crypto       BANGLADESH                     <20           131     715
6 months    NIH-Crypto       BANGLADESH                     >=30          122     715
6 months    PROBIT           BELARUS                        [20-30)     11314   15757
6 months    PROBIT           BELARUS                        <20          1619   15757
6 months    PROBIT           BELARUS                        >=30         2824   15757
6 months    PROVIDE          BANGLADESH                     [20-30)       424     603
6 months    PROVIDE          BANGLADESH                     <20            66     603
6 months    PROVIDE          BANGLADESH                     >=30          113     603
6 months    SAS-CompFeed     INDIA                          [20-30)      1015    1334
6 months    SAS-CompFeed     INDIA                          <20           171    1334
6 months    SAS-CompFeed     INDIA                          >=30          148    1334
6 months    SAS-FoodSuppl    INDIA                          [20-30)       260     380
6 months    SAS-FoodSuppl    INDIA                          <20            36     380
6 months    SAS-FoodSuppl    INDIA                          >=30           84     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011
6 months    ZVITAMBO         ZIMBABWE                       [20-30)      5631    8489
6 months    ZVITAMBO         ZIMBABWE                       <20          1292    8489
6 months    ZVITAMBO         ZIMBABWE                       >=30         1566    8489
24 months   CMC-V-BCS-2002   INDIA                          [20-30)       296     372
24 months   CMC-V-BCS-2002   INDIA                          <20            34     372
24 months   CMC-V-BCS-2002   INDIA                          >=30           42     372
24 months   COHORTS          GUATEMALA                      [20-30)       532    1076
24 months   COHORTS          GUATEMALA                      <20           154    1076
24 months   COHORTS          GUATEMALA                      >=30          390    1076
24 months   COHORTS          INDIA                          [20-30)      2446    3665
24 months   COHORTS          INDIA                          <20           246    3665
24 months   COHORTS          INDIA                          >=30          973    3665
24 months   COHORTS          PHILIPPINES                    [20-30)      1461    2449
24 months   COHORTS          PHILIPPINES                    <20           293    2449
24 months   COHORTS          PHILIPPINES                    >=30          695    2449
24 months   EE               PAKISTAN                       [20-30)        66     168
24 months   EE               PAKISTAN                       <20             1     168
24 months   EE               PAKISTAN                       >=30          101     168
24 months   GMS-Nepal        NEPAL                          [20-30)       317     487
24 months   GMS-Nepal        NEPAL                          <20            94     487
24 months   GMS-Nepal        NEPAL                          >=30           76     487
24 months   IRC              INDIA                          [20-30)       343     409
24 months   IRC              INDIA                          <20            37     409
24 months   IRC              INDIA                          >=30           29     409
24 months   JiVitA-3         BANGLADESH                     [20-30)      4041    8598
24 months   JiVitA-3         BANGLADESH                     <20          3845    8598
24 months   JiVitA-3         BANGLADESH                     >=30          712    8598
24 months   Keneba           GAMBIA                         [20-30)       791    1715
24 months   Keneba           GAMBIA                         <20           217    1715
24 months   Keneba           GAMBIA                         >=30          707    1715
24 months   LCNI-5           MALAWI                         [20-30)       241     461
24 months   LCNI-5           MALAWI                         <20            78     461
24 months   LCNI-5           MALAWI                         >=30          142     461
24 months   MAL-ED           BANGLADESH                     [20-30)       146     212
24 months   MAL-ED           BANGLADESH                     <20            29     212
24 months   MAL-ED           BANGLADESH                     >=30           37     212
24 months   MAL-ED           BRAZIL                         [20-30)       102     169
24 months   MAL-ED           BRAZIL                         <20            27     169
24 months   MAL-ED           BRAZIL                         >=30           40     169
24 months   MAL-ED           INDIA                          [20-30)       172     225
24 months   MAL-ED           INDIA                          <20            33     225
24 months   MAL-ED           INDIA                          >=30           20     225
24 months   MAL-ED           NEPAL                          [20-30)       179     228
24 months   MAL-ED           NEPAL                          <20             4     228
24 months   MAL-ED           NEPAL                          >=30           45     228
24 months   MAL-ED           PERU                           [20-30)        98     201
24 months   MAL-ED           PERU                           <20            55     201
24 months   MAL-ED           PERU                           >=30           48     201
24 months   MAL-ED           SOUTH AFRICA                   [20-30)       106     238
24 months   MAL-ED           SOUTH AFRICA                   <20            39     238
24 months   MAL-ED           SOUTH AFRICA                   >=30           93     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           92     214
24 months   NIH-Birth        BANGLADESH                     [20-30)       288     426
24 months   NIH-Birth        BANGLADESH                     <20            44     426
24 months   NIH-Birth        BANGLADESH                     >=30           94     426
24 months   NIH-Crypto       BANGLADESH                     [20-30)       334     514
24 months   NIH-Crypto       BANGLADESH                     <20           101     514
24 months   NIH-Crypto       BANGLADESH                     >=30           79     514
24 months   PROBIT           BELARUS                        [20-30)      2845    3970
24 months   PROBIT           BELARUS                        <20           365    3970
24 months   PROBIT           BELARUS                        >=30          760    3970
24 months   PROVIDE          BANGLADESH                     [20-30)       409     579
24 months   PROVIDE          BANGLADESH                     <20            64     579
24 months   PROVIDE          BANGLADESH                     >=30          106     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)       276     432
24 months   ZVITAMBO         ZIMBABWE                       <20            69     432
24 months   ZVITAMBO         ZIMBABWE                       >=30           87     432


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: a7944bf0-6347-11ea-b56d-ac1f6b41467c
## task_uuid: 29453a7661cad56b77610cbec6512170
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: db6c927e-634d-11ea-b56d-ac1f6b41467c
## task_uuid: 74682735be1803c4f89e2e542b89d6b4
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```




# Results Detail

## Results Plots
![](/tmp/8115bb78-d09d-4322-b3bf-277ec6344fce/593db278-324f-42fe-81d2-968fd13b8c35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.0874943   -1.2569061   -0.9180826
Birth       COHORTS          INDIA                          optimal              observed          -0.9861391   -1.0563067   -0.9159715
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.6206956   -0.7078572   -0.5335340
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.9182739   -1.1299284   -0.7066195
Birth       IRC              INDIA                          optimal              observed          -1.0877959   -1.8316430   -0.3439488
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7208838   -0.7480622   -0.6937054
Birth       Keneba           GAMBIA                         optimal              observed          -1.2144037   -1.3113310   -1.1174763
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7140698   -1.0729377   -0.3552019
Birth       MAL-ED           BRAZIL                         optimal              observed           1.0296492    0.3428138    1.7164847
Birth       MAL-ED           PERU                           optimal              observed          -0.0787034   -0.3202024    0.1627957
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1873132   -0.6792593    0.3046330
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7860810   -0.0562944    1.6284563
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.1393913   -1.3130529   -0.9657297
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.4018327   -1.5662915   -1.2373739
Birth       PROBIT           BELARUS                        optimal              observed          -1.1226490   -1.3470911   -0.8982069
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2816876   -1.4266181   -1.1367572
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.6501254   -0.8222482   -0.4780027
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4645533   -0.5368249   -0.3922816
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3266249   -0.7337987    0.0805490
6 months    COHORTS          GUATEMALA                      optimal              observed           0.5156688    0.3399448    0.6913928
6 months    COHORTS          INDIA                          optimal              observed          -0.6470886   -0.7070421   -0.5871351
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2920562   -0.3628264   -0.2212861
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.4831312   -0.6505459   -0.3157166
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0208803   -0.2465605    0.2047998
6 months    IRC              INDIA                          optimal              observed          -0.3678806   -0.8580386    0.1222774
6 months    Keneba           GAMBIA                         optimal              observed          -0.1388779   -0.2377496   -0.0400062
6 months    LCNI-5           MALAWI                         optimal              observed           0.4628892    0.3060997    0.6196787
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.4793980   -0.7829617   -0.1758344
6 months    MAL-ED           BRAZIL                         optimal              observed           0.8801188    0.5948387    1.1653989
6 months    MAL-ED           INDIA                          optimal              observed          -0.4821290   -0.8267357   -0.1375222
6 months    MAL-ED           NEPAL                          optimal              observed          -0.2830097   -0.5761184    0.0100990
6 months    MAL-ED           PERU                           optimal              observed           0.9981418    0.7636771    1.2326066
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.3283536   -0.0388077    0.6955149
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5162961    0.2135235    0.8190687
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.3950953   -0.6268476   -0.1633430
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0039818   -0.1816821    0.1896457
6 months    PROBIT           BELARUS                        optimal              observed           0.5939559    0.5310668    0.6568450
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0799427   -0.2816624    0.1217770
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5686640   -0.6572595   -0.4800685
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.0027798   -1.2442726   -0.7612870
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2249605    0.0077244    0.4421965
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3389161    0.2742802    0.4035521
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4512643   -0.7026804   -0.1998482
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1829795   -0.3131409   -0.0528181
24 months   COHORTS          INDIA                          optimal              observed          -0.6249165   -0.6832640   -0.5665690
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.6170528   -0.6813458   -0.5527598
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.0567094   -1.2015993   -0.9118196
24 months   IRC              INDIA                          optimal              observed          -0.5064227   -0.7985306   -0.2143149
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.3526435   -1.4107247   -1.2945623
24 months   Keneba           GAMBIA                         optimal              observed          -0.7919996   -0.8648275   -0.7191716
24 months   LCNI-5           MALAWI                         optimal              observed           0.1255645   -0.0159361    0.2670652
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.7584412   -0.9240150   -0.5928674
24 months   MAL-ED           BRAZIL                         optimal              observed           0.2976767   -0.1174166    0.7127700
24 months   MAL-ED           INDIA                          optimal              observed          -0.6747850   -0.9166818   -0.4328881
24 months   MAL-ED           PERU                           optimal              observed           0.4699845    0.2327355    0.7072334
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.6576188    0.3497735    0.9654641
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1296180   -0.0619841    0.3212202
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.3472395   -0.6512535   -0.0432255
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.5678008   -0.7507642   -0.3848373
24 months   PROBIT           BELARUS                        optimal              observed           0.7694393    0.5260800    1.0127986
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.7259526   -0.8675885   -0.5843168


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          observed             observed          -0.9742815   -1.0093427   -0.9392203
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7777196   -0.7967334   -0.7587059
Birth       Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3545637   -1.4492090   -1.2599184
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5144298   -0.5403185   -0.4885410
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          observed             observed          -0.7119298   -0.7444861   -0.6793734
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0619988   -0.1773839    0.0533863
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    Keneba           GAMBIA                         observed             observed          -0.1833609   -0.2343611   -0.1323607
6 months    LCNI-5           MALAWI                         observed             observed           0.4409268    0.3613957    0.5204578
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          observed             observed          -0.7077885   -0.8346769   -0.5809000
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4495343   -0.5402027   -0.3588659
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0782666    0.0252568    0.1312764
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3103322    0.2846161    0.3360483
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          observed             observed          -0.6627749   -0.6962103   -0.6293395
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2977181   -1.3209986   -1.2744376
24 months   Keneba           GAMBIA                         observed             observed          -0.8079199   -0.8550714   -0.7607684
24 months   LCNI-5           MALAWI                         observed             observed          -0.0115944   -0.1019822    0.0787935
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          observed             observed          -0.9564667   -1.0725632   -0.8403701
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9097790   -1.0080462   -0.8115117
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.0253515   -0.1129816    0.1636845
Birth       COHORTS          INDIA                          optimal              observed           0.0118576   -0.0483796    0.0720948
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1220295   -0.1974641   -0.0465949
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.1981691   -0.3954052   -0.0009330
Birth       IRC              INDIA                          optimal              observed           0.0772128   -0.6463246    0.8007502
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0568359   -0.0764801   -0.0371917
Birth       Keneba           GAMBIA                         optimal              observed          -0.0205418   -0.0959789    0.0548953
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.2277907   -0.5393328    0.0837514
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.6267460   -1.2213521   -0.0321399
Birth       MAL-ED           PERU                           optimal              observed           0.0266858   -0.1820552    0.2354269
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0052702   -0.4195926    0.4090523
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0236462   -0.8465840    0.7992917
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.2151724   -0.3765653   -0.0537794
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.1576813    0.0102027    0.3051599
Birth       PROBIT           BELARUS                        optimal              observed          -0.0265292   -0.0977242    0.0446658
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0167710   -0.1400469    0.1065049
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0199199   -0.1616079    0.1217680
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0498765   -0.1179526    0.0181996
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1760518   -0.5707606    0.2186570
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.3215878   -0.4892297   -0.1539460
6 months    COHORTS          INDIA                          optimal              observed          -0.0648411   -0.1157427   -0.0139396
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0017871   -0.0593978    0.0558237
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.1207104   -0.2625323    0.0211116
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0411185   -0.2336415    0.1514045
6 months    IRC              INDIA                          optimal              observed          -0.2310491   -0.6993845    0.2372862
6 months    Keneba           GAMBIA                         optimal              observed          -0.0444830   -0.1326324    0.0436665
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0219624   -0.1580649    0.1141400
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.3417217    0.0744398    0.6090036
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0919586   -0.1513793    0.3352964
6 months    MAL-ED           INDIA                          optimal              observed          -0.2256595   -0.5604029    0.1090839
6 months    MAL-ED           NEPAL                          optimal              observed           0.3934405    0.0972250    0.6896560
6 months    MAL-ED           PERU                           optimal              observed           0.0547397   -0.1579927    0.2674721
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.2138249   -0.1263190    0.5539688
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0199252   -0.2465375    0.2863880
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0544390   -0.2748917    0.1660137
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0257804   -0.1425464    0.1941073
6 months    PROBIT           BELARUS                        optimal              observed          -0.0198460   -0.0785423    0.0388503
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1191480   -0.3064526    0.0681567
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0970444   -0.2098540    0.0157652
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.0093781   -0.2435808    0.2248246
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1466938   -0.3563230    0.0629353
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0285839   -0.0877967    0.0306289
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1058863   -0.3329860    0.1212135
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0983959   -0.2143535    0.0175617
24 months   COHORTS          INDIA                          optimal              observed          -0.0378584   -0.0876590    0.0119422
24 months   COHORTS          PHILIPPINES                    optimal              observed           0.0070937   -0.0465859    0.0607732
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0796013   -0.2025896    0.0433870
24 months   IRC              INDIA                          optimal              observed          -0.2393923   -0.5192495    0.0404650
24 months   JiVitA-3         BANGLADESH                     optimal              observed           0.0549254    0.0007131    0.1091378
24 months   Keneba           GAMBIA                         optimal              observed          -0.0159203   -0.0747499    0.0429093
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1371589   -0.2578053   -0.0165124
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0608513   -0.1697146    0.0480121
24 months   MAL-ED           BRAZIL                         optimal              observed           0.1649466   -0.1803691    0.5102623
24 months   MAL-ED           INDIA                          optimal              observed          -0.2816817   -0.5124731   -0.0508903
24 months   MAL-ED           PERU                           optimal              observed          -0.3587863   -0.5708812   -0.1466914
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2485887   -0.5307582    0.0335808
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0748205   -0.2201491    0.0705081
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.5625394   -0.8497730   -0.2753059
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0425494   -0.2020933    0.1169945
24 months   PROBIT           BELARUS                        optimal              observed          -0.0712987   -0.2337083    0.0911110
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1669144   -0.2911167   -0.0427121
