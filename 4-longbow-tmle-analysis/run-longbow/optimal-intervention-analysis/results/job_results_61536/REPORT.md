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
Birth       CMC-V-BCS-2002   INDIA                          [20-30)        79      92
Birth       CMC-V-BCS-2002   INDIA                          <20             9      92
Birth       CMC-V-BCS-2002   INDIA                          >=30            4      92
Birth       COHORTS          GUATEMALA                      [20-30)       405     852
Birth       COHORTS          GUATEMALA                      <20           121     852
Birth       COHORTS          GUATEMALA                      >=30          326     852
Birth       COHORTS          INDIA                          [20-30)      3180    4715
Birth       COHORTS          INDIA                          <20           368    4715
Birth       COHORTS          INDIA                          >=30         1167    4715
Birth       COHORTS          PHILIPPINES                    [20-30)      1821    3050
Birth       COHORTS          PHILIPPINES                    <20           378    3050
Birth       COHORTS          PHILIPPINES                    >=30          851    3050
Birth       EE               PAKISTAN                       [20-30)        94     239
Birth       EE               PAKISTAN                       <20             1     239
Birth       EE               PAKISTAN                       >=30          144     239
Birth       GMS-Nepal        NEPAL                          [20-30)       446     696
Birth       GMS-Nepal        NEPAL                          <20           149     696
Birth       GMS-Nepal        NEPAL                          >=30          101     696
Birth       IRC              INDIA                          [20-30)       325     388
Birth       IRC              INDIA                          <20            35     388
Birth       IRC              INDIA                          >=30           28     388
Birth       JiVitA-3         BANGLADESH                     [20-30)     10853   22444
Birth       JiVitA-3         BANGLADESH                     <20          9472   22444
Birth       JiVitA-3         BANGLADESH                     >=30         2119   22444
Birth       Keneba           GAMBIA                         [20-30)       705    1543
Birth       Keneba           GAMBIA                         <20           238    1543
Birth       Keneba           GAMBIA                         >=30          600    1543
Birth       MAL-ED           BANGLADESH                     [20-30)       160     231
Birth       MAL-ED           BANGLADESH                     <20            30     231
Birth       MAL-ED           BANGLADESH                     >=30           41     231
Birth       MAL-ED           BRAZIL                         [20-30)        41      65
Birth       MAL-ED           BRAZIL                         <20             8      65
Birth       MAL-ED           BRAZIL                         >=30           16      65
Birth       MAL-ED           INDIA                          [20-30)        37      47
Birth       MAL-ED           INDIA                          <20             8      47
Birth       MAL-ED           INDIA                          >=30            2      47
Birth       MAL-ED           NEPAL                          [20-30)        22      27
Birth       MAL-ED           NEPAL                          <20             0      27
Birth       MAL-ED           NEPAL                          >=30            5      27
Birth       MAL-ED           PERU                           [20-30)       114     233
Birth       MAL-ED           PERU                           <20            66     233
Birth       MAL-ED           PERU                           >=30           53     233
Birth       MAL-ED           SOUTH AFRICA                   [20-30)        67     123
Birth       MAL-ED           SOUTH AFRICA                   <20            23     123
Birth       MAL-ED           SOUTH AFRICA                   >=30           33     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)        72     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           46     125
Birth       NIH-Birth        BANGLADESH                     [20-30)       410     606
Birth       NIH-Birth        BANGLADESH                     <20            70     606
Birth       NIH-Birth        BANGLADESH                     >=30          126     606
Birth       NIH-Crypto       BANGLADESH                     [20-30)       483     732
Birth       NIH-Crypto       BANGLADESH                     <20           130     732
Birth       NIH-Crypto       BANGLADESH                     >=30          119     732
Birth       PROBIT           BELARUS                        [20-30)      9943   13893
Birth       PROBIT           BELARUS                        <20          1408   13893
Birth       PROBIT           BELARUS                        >=30         2542   13893
Birth       PROVIDE          BANGLADESH                     [20-30)       371     539
Birth       PROVIDE          BANGLADESH                     <20            67     539
Birth       PROVIDE          BANGLADESH                     >=30          101     539
Birth       SAS-CompFeed     INDIA                          [20-30)       953    1252
Birth       SAS-CompFeed     INDIA                          <20           161    1252
Birth       SAS-CompFeed     INDIA                          >=30          138    1252
Birth       ZVITAMBO         ZIMBABWE                       [20-30)      9299   13835
Birth       ZVITAMBO         ZIMBABWE                       <20          2205   13835
Birth       ZVITAMBO         ZIMBABWE                       >=30         2331   13835
6 months    CMC-V-BCS-2002   INDIA                          [20-30)       293     369
6 months    CMC-V-BCS-2002   INDIA                          <20            33     369
6 months    CMC-V-BCS-2002   INDIA                          >=30           43     369
6 months    COHORTS          GUATEMALA                      [20-30)       470     961
6 months    COHORTS          GUATEMALA                      <20           118     961
6 months    COHORTS          GUATEMALA                      >=30          373     961
6 months    COHORTS          INDIA                          [20-30)      3331    4904
6 months    COHORTS          INDIA                          <20           371    4904
6 months    COHORTS          INDIA                          >=30         1202    4904
6 months    COHORTS          PHILIPPINES                    [20-30)      1601    2708
6 months    COHORTS          PHILIPPINES                    <20           331    2708
6 months    COHORTS          PHILIPPINES                    >=30          776    2708
6 months    EE               PAKISTAN                       [20-30)       159     371
6 months    EE               PAKISTAN                       <20             1     371
6 months    EE               PAKISTAN                       >=30          211     371
6 months    GMS-Nepal        NEPAL                          [20-30)       371     564
6 months    GMS-Nepal        NEPAL                          <20           108     564
6 months    GMS-Nepal        NEPAL                          >=30           85     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    Guatemala BSC    GUATEMALA                      <20            46     276
6 months    Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    IRC              INDIA                          [20-30)       342     407
6 months    IRC              INDIA                          <20            36     407
6 months    IRC              INDIA                          >=30           29     407
6 months    JiVitA-3         BANGLADESH                     [20-30)      7679   16805
6 months    JiVitA-3         BANGLADESH                     <20          7905   16805
6 months    JiVitA-3         BANGLADESH                     >=30         1221   16805
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
6 months    PROBIT           BELARUS                        [20-30)     11316   15760
6 months    PROBIT           BELARUS                        <20          1619   15760
6 months    PROBIT           BELARUS                        >=30         2825   15760
6 months    PROVIDE          BANGLADESH                     [20-30)       424     604
6 months    PROVIDE          BANGLADESH                     <20            66     604
6 months    PROVIDE          BANGLADESH                     >=30          114     604
6 months    SAS-CompFeed     INDIA                          [20-30)      1017    1336
6 months    SAS-CompFeed     INDIA                          <20           171    1336
6 months    SAS-CompFeed     INDIA                          >=30          148    1336
6 months    SAS-FoodSuppl    INDIA                          [20-30)       261     380
6 months    SAS-FoodSuppl    INDIA                          <20            36     380
6 months    SAS-FoodSuppl    INDIA                          >=30           83     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012
6 months    ZVITAMBO         ZIMBABWE                       [20-30)      5738    8653
6 months    ZVITAMBO         ZIMBABWE                       <20          1315    8653
6 months    ZVITAMBO         ZIMBABWE                       >=30         1600    8653
24 months   CMC-V-BCS-2002   INDIA                          [20-30)       295     371
24 months   CMC-V-BCS-2002   INDIA                          <20            34     371
24 months   CMC-V-BCS-2002   INDIA                          >=30           42     371
24 months   COHORTS          GUATEMALA                      [20-30)       527    1064
24 months   COHORTS          GUATEMALA                      <20           152    1064
24 months   COHORTS          GUATEMALA                      >=30          385    1064
24 months   COHORTS          INDIA                          [20-30)      2463    3692
24 months   COHORTS          INDIA                          <20           247    3692
24 months   COHORTS          INDIA                          >=30          982    3692
24 months   COHORTS          PHILIPPINES                    [20-30)      1460    2445
24 months   COHORTS          PHILIPPINES                    <20           292    2445
24 months   COHORTS          PHILIPPINES                    >=30          693    2445
24 months   EE               PAKISTAN                       [20-30)        65     167
24 months   EE               PAKISTAN                       <20             1     167
24 months   EE               PAKISTAN                       >=30          101     167
24 months   GMS-Nepal        NEPAL                          [20-30)       318     488
24 months   GMS-Nepal        NEPAL                          <20            94     488
24 months   GMS-Nepal        NEPAL                          >=30           76     488
24 months   IRC              INDIA                          [20-30)       343     409
24 months   IRC              INDIA                          <20            37     409
24 months   IRC              INDIA                          >=30           29     409
24 months   JiVitA-3         BANGLADESH                     [20-30)      4058    8627
24 months   JiVitA-3         BANGLADESH                     <20          3855    8627
24 months   JiVitA-3         BANGLADESH                     >=30          714    8627
24 months   Keneba           GAMBIA                         [20-30)       790    1714
24 months   Keneba           GAMBIA                         <20           217    1714
24 months   Keneba           GAMBIA                         >=30          707    1714
24 months   LCNI-5           MALAWI                         [20-30)       250     475
24 months   LCNI-5           MALAWI                         <20            80     475
24 months   LCNI-5           MALAWI                         >=30          145     475
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
24 months   NIH-Birth        BANGLADESH                     [20-30)       289     427
24 months   NIH-Birth        BANGLADESH                     <20            44     427
24 months   NIH-Birth        BANGLADESH                     >=30           94     427
24 months   NIH-Crypto       BANGLADESH                     [20-30)       334     514
24 months   NIH-Crypto       BANGLADESH                     <20           101     514
24 months   NIH-Crypto       BANGLADESH                     >=30           79     514
24 months   PROBIT           BELARUS                        [20-30)      2893    4035
24 months   PROBIT           BELARUS                        <20           369    4035
24 months   PROBIT           BELARUS                        >=30          773    4035
24 months   PROVIDE          BANGLADESH                     [20-30)       409     578
24 months   PROVIDE          BANGLADESH                     <20            64     578
24 months   PROVIDE          BANGLADESH                     >=30          105     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)      1101    1638
24 months   ZVITAMBO         ZIMBABWE                       <20           219    1638
24 months   ZVITAMBO         ZIMBABWE                       >=30          318    1638


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/58d0a02f-51e9-4dfa-998c-0691dc246b7d/6fcb5392-c125-438f-b638-abdd608eb63e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.2944233    0.1709459    0.4179007
Birth       COHORTS          INDIA                          optimal              observed          -0.4993118   -0.5651646   -0.4334590
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1737069   -0.2476742   -0.0997395
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.7796589   -0.9976066   -0.5617112
Birth       IRC              INDIA                          optimal              observed          -0.2699249   -0.8091278    0.2692781
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5107483   -1.5468536   -1.4746430
Birth       Keneba           GAMBIA                         optimal              observed           0.1923009    0.0923623    0.2922396
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.2356854   -1.5212478   -0.9501229
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.0164953   -0.8297065    0.7967160
Birth       MAL-ED           PERU                           optimal              observed          -0.6459466   -0.9290949   -0.3627983
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.6093498   -0.9688706   -0.2498290
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0807562   -1.6902103   -0.4713021
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.8622846   -1.1226750   -0.6018941
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.9614271   -1.1265181   -0.7963360
Birth       PROBIT           BELARUS                        optimal              observed           1.3933102    1.2113348    1.5752856
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8819770   -1.0200350   -0.7439191
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.4242223   -1.5807927   -1.2676519
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4444146   -0.5001686   -0.3886605
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8015861   -1.2711715   -0.3320006
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.9067083   -2.0238134   -1.7896032
6 months    COHORTS          INDIA                          optimal              observed          -0.9971791   -1.0622306   -0.9321275
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0817834   -1.1514417   -1.0121252
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.0979741   -1.3022739   -0.8936743
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.6967394   -1.8940434   -1.4994353
6 months    IRC              INDIA                          optimal              observed          -1.2878805   -1.9089374   -0.6668236
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2810895   -1.3286170   -1.2335619
6 months    Keneba           GAMBIA                         optimal              observed          -0.8757627   -0.9706561   -0.7808694
6 months    LCNI-5           MALAWI                         optimal              observed          -1.5579115   -1.7390902   -1.3767327
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.1250741   -1.2567203   -0.9934279
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0030915   -0.3075290    0.3137121
6 months    MAL-ED           INDIA                          optimal              observed          -0.9090994   -1.2274245   -0.5907743
6 months    MAL-ED           NEPAL                          optimal              observed          -0.6200464   -0.8646867   -0.3754061
6 months    MAL-ED           PERU                           optimal              observed          -1.5149728   -1.7181756   -1.3117699
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -1.0292244   -1.2593607   -0.7990881
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3148949   -1.4951560   -1.1346338
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.2050002   -1.4456069   -0.9643936
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1356415   -1.2818687   -0.9894142
6 months    PROBIT           BELARUS                        optimal              observed           0.1208617    0.0061861    0.2355372
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0335369   -1.1228261   -0.9442477
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.4299346   -1.5248287   -1.3350404
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.7607973   -2.1231440   -1.3984506
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4814895   -0.5976149   -0.3653641
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8506402   -0.8828824   -0.8183980
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2390748   -2.5351460   -1.9430036
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.9764676   -3.1116245   -2.8413106
24 months   COHORTS          INDIA                          optimal              observed          -2.1989293   -2.2784707   -2.1193879
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.4534343   -2.5449007   -2.3619679
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.9538593   -2.1593492   -1.7483693
24 months   IRC              INDIA                          optimal              observed          -1.8892204   -2.0654292   -1.7130115
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9400789   -2.0067842   -1.8733736
24 months   Keneba           GAMBIA                         optimal              observed          -1.5420660   -1.6143196   -1.4698124
24 months   LCNI-5           MALAWI                         optimal              observed          -1.8009467   -2.0230582   -1.5788352
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.8791324   -2.0283892   -1.7298755
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.1690805   -0.5169260    0.1787650
24 months   MAL-ED           INDIA                          optimal              observed          -1.9477398   -2.2715954   -1.6238842
24 months   MAL-ED           PERU                           optimal              observed          -1.7454066   -1.9372153   -1.5535979
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.4581184   -1.7296468   -1.1865899
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5138642   -2.7095357   -2.3181928
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.9640834   -2.2489614   -1.6792053
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.3910995   -1.6078913   -1.1743078
24 months   PROBIT           BELARUS                        optimal              observed          -0.0046211   -0.2979342    0.2886920
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.4807512   -1.6693691   -1.2921332
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4878701   -1.6003238   -1.3754164


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          observed             observed          -0.6779343   -0.7109987   -0.6448698
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894137   -1.6086318   -1.5701955
Birth       Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9312706   -1.0202524   -0.8422889
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4999118   -0.5204765   -0.4793472
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          observed             observed          -1.0441293   -1.0769738   -1.0112848
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5617391   -1.6780690   -1.4454093
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3135466   -1.3366721   -1.2904210
6 months    Keneba           GAMBIA                         observed             observed          -0.9040346   -0.9513522   -0.8567171
6 months    LCNI-5           MALAWI                         observed             observed          -1.6498804   -1.7271669   -1.5725940
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2016239   -1.3201698   -1.0830780
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4062134   -1.4951703   -1.3172565
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5410317   -0.5901099   -0.4919536
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8672235   -0.8928135   -0.8416336
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          observed             observed          -2.2182259   -2.2576094   -2.1788424
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0137151   -2.0414318   -1.9859984
24 months   Keneba           GAMBIA                         observed             observed          -1.5798251   -1.6298520   -1.5297981
24 months   LCNI-5           MALAWI                         observed             observed          -1.8966105   -1.9881282   -1.8050928
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8901556   -2.0155338   -1.7647773
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2200371   -2.3231580   -2.1169161
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6052656   -1.6623196   -1.5482116


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1646933   -0.2694326   -0.0599539
Birth       COHORTS          INDIA                          optimal              observed          -0.1786224   -0.2362998   -0.1209451
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0753423   -0.1379677   -0.0127169
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.3054992   -0.5090840   -0.1019143
Birth       IRC              INDIA                          optimal              observed          -0.0381164   -0.5570353    0.4808026
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0786653   -0.1096246   -0.0477060
Birth       Keneba           GAMBIA                         optimal              observed          -0.1614973   -0.2412208   -0.0817738
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.1175901   -0.1265142    0.3616944
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.6595047   -1.4322730    0.1132635
Birth       MAL-ED           PERU                           optimal              observed          -0.2368431   -0.4802466    0.0065603
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0223575   -0.3413514    0.2966364
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0748438   -0.6561819    0.5064942
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.0689861   -0.3108229    0.1728508
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.0519326   -0.0964653    0.2003304
Birth       PROBIT           BELARUS                        optimal              observed          -0.0818685   -0.1438729   -0.0198641
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0031250   -0.1157404    0.1094904
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0071994   -0.1211279    0.1067291
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0554973   -0.1073426   -0.0036519
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6218647   -1.0697806   -0.1739488
6 months    COHORTS          GUATEMALA                      optimal              observed           0.0909747   -0.0111517    0.1931010
6 months    COHORTS          INDIA                          optimal              observed          -0.0469502   -0.1036433    0.0097429
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0587889   -0.1145100   -0.0030679
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.2528652   -0.4409977   -0.0647326
6 months    Guatemala BSC    GUATEMALA                      optimal              observed           0.1350002   -0.0226441    0.2926445
6 months    IRC              INDIA                          optimal              observed           0.0534743   -0.5388522    0.6458008
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0324571   -0.0736595    0.0087453
6 months    Keneba           GAMBIA                         optimal              observed          -0.0282719   -0.1128423    0.0562984
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0919690   -0.2595390    0.0756011
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0799190   -0.1666420    0.0068040
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0444842   -0.2423619    0.3313304
6 months    MAL-ED           INDIA                          optimal              observed          -0.2925245   -0.6074489    0.0223999
6 months    MAL-ED           NEPAL                          optimal              observed           0.0584645   -0.1570178    0.2739469
6 months    MAL-ED           PERU                           optimal              observed           0.1913067    0.0375228    0.3450907
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0340958   -0.2235203    0.1553287
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0538501   -0.1959815    0.0882813
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.2012132   -0.4302810    0.0278546
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0630369   -0.1875780    0.0615043
6 months    PROBIT           BELARUS                        optimal              observed          -0.0228543   -0.0655752    0.0198667
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0581546   -0.1070678   -0.0092414
6 months    SAS-CompFeed     INDIA                          optimal              observed           0.0280783   -0.0405508    0.0967073
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.1378870   -0.4847674    0.2089935
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0595422   -0.1640455    0.0449610
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0165833   -0.0360434    0.0028767
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3197931   -0.6061692   -0.0334170
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0141246   -0.1335357    0.1052866
24 months   COHORTS          INDIA                          optimal              observed          -0.0192966   -0.0880845    0.0494913
24 months   COHORTS          PHILIPPINES                    optimal              observed           0.0393198   -0.0393492    0.1179888
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.0664412   -0.1196036    0.2524861
24 months   IRC              INDIA                          optimal              observed           0.0904429   -0.0737296    0.2546153
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0736361   -0.1336448   -0.0136275
24 months   Keneba           GAMBIA                         optimal              observed          -0.0377591   -0.0912109    0.0156928
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0956638   -0.2998567    0.1085291
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0992639   -0.1841221   -0.0144056
24 months   MAL-ED           BRAZIL                         optimal              observed           0.1751949   -0.1225440    0.4729338
24 months   MAL-ED           INDIA                          optimal              observed           0.0575843   -0.2633204    0.3784890
24 months   MAL-ED           PERU                           optimal              observed          -0.0070644   -0.1899218    0.1757930
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1869412   -0.4317735    0.0578912
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1316965   -0.2866423    0.0232492
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.2559537   -0.5288633    0.0169559
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0501651   -0.2459327    0.1456026
24 months   PROBIT           BELARUS                        optimal              observed          -0.1396681   -0.3530715    0.0737354
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1216710   -0.2911136    0.0477716
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1173955   -0.2185460   -0.0162450
