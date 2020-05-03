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

agecat      studyid          country                        mage       n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)        75      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          <20             7      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          >=30            4      86  whz              
Birth       COHORTS          GUATEMALA                      [20-30)       367     756  whz              
Birth       COHORTS          GUATEMALA                      <20           101     756  whz              
Birth       COHORTS          GUATEMALA                      >=30          288     756  whz              
Birth       COHORTS          INDIA                          [20-30)      2965    4405  whz              
Birth       COHORTS          INDIA                          <20           337    4405  whz              
Birth       COHORTS          INDIA                          >=30         1103    4405  whz              
Birth       COHORTS          PHILIPPINES                    [20-30)      1744    2899  whz              
Birth       COHORTS          PHILIPPINES                    <20           354    2899  whz              
Birth       COHORTS          PHILIPPINES                    >=30          801    2899  whz              
Birth       EE               PAKISTAN                       [20-30)        68     177  whz              
Birth       EE               PAKISTAN                       <20             1     177  whz              
Birth       EE               PAKISTAN                       >=30          108     177  whz              
Birth       GMS-Nepal        NEPAL                          [20-30)       421     641  whz              
Birth       GMS-Nepal        NEPAL                          <20           125     641  whz              
Birth       GMS-Nepal        NEPAL                          >=30           95     641  whz              
Birth       IRC              INDIA                          [20-30)       289     343  whz              
Birth       IRC              INDIA                          <20            28     343  whz              
Birth       IRC              INDIA                          >=30           26     343  whz              
Birth       JiVitA-3         BANGLADESH                     [20-30)      9028   18006  whz              
Birth       JiVitA-3         BANGLADESH                     <20          7251   18006  whz              
Birth       JiVitA-3         BANGLADESH                     >=30         1727   18006  whz              
Birth       Keneba           GAMBIA                         [20-30)       670    1466  whz              
Birth       Keneba           GAMBIA                         <20           224    1466  whz              
Birth       Keneba           GAMBIA                         >=30          572    1466  whz              
Birth       MAL-ED           BANGLADESH                     [20-30)       148     215  whz              
Birth       MAL-ED           BANGLADESH                     <20            28     215  whz              
Birth       MAL-ED           BANGLADESH                     >=30           39     215  whz              
Birth       MAL-ED           BRAZIL                         [20-30)        39      62  whz              
Birth       MAL-ED           BRAZIL                         <20             8      62  whz              
Birth       MAL-ED           BRAZIL                         >=30           15      62  whz              
Birth       MAL-ED           INDIA                          [20-30)        36      45  whz              
Birth       MAL-ED           INDIA                          <20             7      45  whz              
Birth       MAL-ED           INDIA                          >=30            2      45  whz              
Birth       MAL-ED           NEPAL                          [20-30)        21      26  whz              
Birth       MAL-ED           NEPAL                          <20             0      26  whz              
Birth       MAL-ED           NEPAL                          >=30            5      26  whz              
Birth       MAL-ED           PERU                           [20-30)       113     228  whz              
Birth       MAL-ED           PERU                           <20            63     228  whz              
Birth       MAL-ED           PERU                           >=30           52     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   [20-30)        65     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   <20            22     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   >=30           33     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)        66     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             7     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           42     115  whz              
Birth       NIH-Birth        BANGLADESH                     [20-30)       385     573  whz              
Birth       NIH-Birth        BANGLADESH                     <20            67     573  whz              
Birth       NIH-Birth        BANGLADESH                     >=30          121     573  whz              
Birth       NIH-Crypto       BANGLADESH                     [20-30)       469     707  whz              
Birth       NIH-Crypto       BANGLADESH                     <20           124     707  whz              
Birth       NIH-Crypto       BANGLADESH                     >=30          114     707  whz              
Birth       PROBIT           BELARUS                        [20-30)      9889   13817  whz              
Birth       PROBIT           BELARUS                        <20          1402   13817  whz              
Birth       PROBIT           BELARUS                        >=30         2526   13817  whz              
Birth       PROVIDE          BANGLADESH                     [20-30)       366     532  whz              
Birth       PROVIDE          BANGLADESH                     <20            67     532  whz              
Birth       PROVIDE          BANGLADESH                     >=30           99     532  whz              
Birth       SAS-CompFeed     INDIA                          [20-30)       841    1103  whz              
Birth       SAS-CompFeed     INDIA                          <20           138    1103  whz              
Birth       SAS-CompFeed     INDIA                          >=30          124    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       [20-30)      8680   12881  whz              
Birth       ZVITAMBO         ZIMBABWE                       <20          2030   12881  whz              
Birth       ZVITAMBO         ZIMBABWE                       >=30         2171   12881  whz              
6 months    CMC-V-BCS-2002   INDIA                          [20-30)       292     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          <20            33     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          >=30           43     368  whz              
6 months    COHORTS          GUATEMALA                      [20-30)       471     963  whz              
6 months    COHORTS          GUATEMALA                      <20           118     963  whz              
6 months    COHORTS          GUATEMALA                      >=30          374     963  whz              
6 months    COHORTS          INDIA                          [20-30)      3326    4897  whz              
6 months    COHORTS          INDIA                          <20           371    4897  whz              
6 months    COHORTS          INDIA                          >=30         1200    4897  whz              
6 months    COHORTS          PHILIPPINES                    [20-30)      1600    2706  whz              
6 months    COHORTS          PHILIPPINES                    <20           331    2706  whz              
6 months    COHORTS          PHILIPPINES                    >=30          775    2706  whz              
6 months    EE               PAKISTAN                       [20-30)       159     372  whz              
6 months    EE               PAKISTAN                       <20             1     372  whz              
6 months    EE               PAKISTAN                       >=30          212     372  whz              
6 months    GMS-Nepal        NEPAL                          [20-30)       371     564  whz              
6 months    GMS-Nepal        NEPAL                          <20           108     564  whz              
6 months    GMS-Nepal        NEPAL                          >=30           85     564  whz              
6 months    Guatemala BSC    GUATEMALA                      [20-30)       171     276  whz              
6 months    Guatemala BSC    GUATEMALA                      <20            46     276  whz              
6 months    Guatemala BSC    GUATEMALA                      >=30           59     276  whz              
6 months    IRC              INDIA                          [20-30)       342     408  whz              
6 months    IRC              INDIA                          <20            37     408  whz              
6 months    IRC              INDIA                          >=30           29     408  whz              
6 months    JiVitA-3         BANGLADESH                     [20-30)      7656   16779  whz              
6 months    JiVitA-3         BANGLADESH                     <20          7904   16779  whz              
6 months    JiVitA-3         BANGLADESH                     >=30         1219   16779  whz              
6 months    Keneba           GAMBIA                         [20-30)       987    2080  whz              
6 months    Keneba           GAMBIA                         <20           288    2080  whz              
6 months    Keneba           GAMBIA                         >=30          805    2080  whz              
6 months    LCNI-5           MALAWI                         [20-30)       364     669  whz              
6 months    LCNI-5           MALAWI                         <20           107     669  whz              
6 months    LCNI-5           MALAWI                         >=30          198     669  whz              
6 months    MAL-ED           BANGLADESH                     [20-30)       165     241  whz              
6 months    MAL-ED           BANGLADESH                     <20            35     241  whz              
6 months    MAL-ED           BANGLADESH                     >=30           41     241  whz              
6 months    MAL-ED           BRAZIL                         [20-30)       125     209  whz              
6 months    MAL-ED           BRAZIL                         <20            37     209  whz              
6 months    MAL-ED           BRAZIL                         >=30           47     209  whz              
6 months    MAL-ED           INDIA                          [20-30)       179     234  whz              
6 months    MAL-ED           INDIA                          <20            34     234  whz              
6 months    MAL-ED           INDIA                          >=30           21     234  whz              
6 months    MAL-ED           NEPAL                          [20-30)       185     236  whz              
6 months    MAL-ED           NEPAL                          <20             5     236  whz              
6 months    MAL-ED           NEPAL                          >=30           46     236  whz              
6 months    MAL-ED           PERU                           [20-30)       136     273  whz              
6 months    MAL-ED           PERU                           <20            76     273  whz              
6 months    MAL-ED           PERU                           >=30           61     273  whz              
6 months    MAL-ED           SOUTH AFRICA                   [20-30)       118     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   <20            42     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   >=30           94     254  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            15     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30          104     247  whz              
6 months    NIH-Birth        BANGLADESH                     [20-30)       357     535  whz              
6 months    NIH-Birth        BANGLADESH                     <20            61     535  whz              
6 months    NIH-Birth        BANGLADESH                     >=30          117     535  whz              
6 months    NIH-Crypto       BANGLADESH                     [20-30)       462     715  whz              
6 months    NIH-Crypto       BANGLADESH                     <20           131     715  whz              
6 months    NIH-Crypto       BANGLADESH                     >=30          122     715  whz              
6 months    PROBIT           BELARUS                        [20-30)     11314   15757  whz              
6 months    PROBIT           BELARUS                        <20          1619   15757  whz              
6 months    PROBIT           BELARUS                        >=30         2824   15757  whz              
6 months    PROVIDE          BANGLADESH                     [20-30)       424     603  whz              
6 months    PROVIDE          BANGLADESH                     <20            66     603  whz              
6 months    PROVIDE          BANGLADESH                     >=30          113     603  whz              
6 months    SAS-CompFeed     INDIA                          [20-30)      1015    1334  whz              
6 months    SAS-CompFeed     INDIA                          <20           171    1334  whz              
6 months    SAS-CompFeed     INDIA                          >=30          148    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          [20-30)       260     380  whz              
6 months    SAS-FoodSuppl    INDIA                          <20            36     380  whz              
6 months    SAS-FoodSuppl    INDIA                          >=30           84     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011  whz              
6 months    ZVITAMBO         ZIMBABWE                       [20-30)      5631    8489  whz              
6 months    ZVITAMBO         ZIMBABWE                       <20          1292    8489  whz              
6 months    ZVITAMBO         ZIMBABWE                       >=30         1566    8489  whz              
24 months   CMC-V-BCS-2002   INDIA                          [20-30)       296     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          <20            34     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          >=30           42     372  whz              
24 months   COHORTS          GUATEMALA                      [20-30)       532    1076  whz              
24 months   COHORTS          GUATEMALA                      <20           154    1076  whz              
24 months   COHORTS          GUATEMALA                      >=30          390    1076  whz              
24 months   COHORTS          INDIA                          [20-30)      2446    3665  whz              
24 months   COHORTS          INDIA                          <20           246    3665  whz              
24 months   COHORTS          INDIA                          >=30          973    3665  whz              
24 months   COHORTS          PHILIPPINES                    [20-30)      1461    2449  whz              
24 months   COHORTS          PHILIPPINES                    <20           293    2449  whz              
24 months   COHORTS          PHILIPPINES                    >=30          695    2449  whz              
24 months   EE               PAKISTAN                       [20-30)        66     168  whz              
24 months   EE               PAKISTAN                       <20             1     168  whz              
24 months   EE               PAKISTAN                       >=30          101     168  whz              
24 months   GMS-Nepal        NEPAL                          [20-30)       317     487  whz              
24 months   GMS-Nepal        NEPAL                          <20            94     487  whz              
24 months   GMS-Nepal        NEPAL                          >=30           76     487  whz              
24 months   IRC              INDIA                          [20-30)       343     409  whz              
24 months   IRC              INDIA                          <20            37     409  whz              
24 months   IRC              INDIA                          >=30           29     409  whz              
24 months   JiVitA-3         BANGLADESH                     [20-30)      4041    8598  whz              
24 months   JiVitA-3         BANGLADESH                     <20          3845    8598  whz              
24 months   JiVitA-3         BANGLADESH                     >=30          712    8598  whz              
24 months   Keneba           GAMBIA                         [20-30)       791    1715  whz              
24 months   Keneba           GAMBIA                         <20           217    1715  whz              
24 months   Keneba           GAMBIA                         >=30          707    1715  whz              
24 months   LCNI-5           MALAWI                         [20-30)       241     461  whz              
24 months   LCNI-5           MALAWI                         <20            78     461  whz              
24 months   LCNI-5           MALAWI                         >=30          142     461  whz              
24 months   MAL-ED           BANGLADESH                     [20-30)       146     212  whz              
24 months   MAL-ED           BANGLADESH                     <20            29     212  whz              
24 months   MAL-ED           BANGLADESH                     >=30           37     212  whz              
24 months   MAL-ED           BRAZIL                         [20-30)       102     169  whz              
24 months   MAL-ED           BRAZIL                         <20            27     169  whz              
24 months   MAL-ED           BRAZIL                         >=30           40     169  whz              
24 months   MAL-ED           INDIA                          [20-30)       172     225  whz              
24 months   MAL-ED           INDIA                          <20            33     225  whz              
24 months   MAL-ED           INDIA                          >=30           20     225  whz              
24 months   MAL-ED           NEPAL                          [20-30)       179     228  whz              
24 months   MAL-ED           NEPAL                          <20             4     228  whz              
24 months   MAL-ED           NEPAL                          >=30           45     228  whz              
24 months   MAL-ED           PERU                           [20-30)        98     201  whz              
24 months   MAL-ED           PERU                           <20            55     201  whz              
24 months   MAL-ED           PERU                           >=30           48     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   [20-30)       106     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   <20            39     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   >=30           93     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             9     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           92     214  whz              
24 months   NIH-Birth        BANGLADESH                     [20-30)       288     426  whz              
24 months   NIH-Birth        BANGLADESH                     <20            44     426  whz              
24 months   NIH-Birth        BANGLADESH                     >=30           94     426  whz              
24 months   NIH-Crypto       BANGLADESH                     [20-30)       334     514  whz              
24 months   NIH-Crypto       BANGLADESH                     <20           101     514  whz              
24 months   NIH-Crypto       BANGLADESH                     >=30           79     514  whz              
24 months   PROBIT           BELARUS                        [20-30)      2845    3970  whz              
24 months   PROBIT           BELARUS                        <20           365    3970  whz              
24 months   PROBIT           BELARUS                        >=30          760    3970  whz              
24 months   PROVIDE          BANGLADESH                     [20-30)       409     579  whz              
24 months   PROVIDE          BANGLADESH                     <20            64     579  whz              
24 months   PROVIDE          BANGLADESH                     >=30          106     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       [20-30)       276     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       <20            69     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       >=30           87     432  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/c1aac11d-1e9f-4ca3-adcc-8712409cfd1d/e5d61825-dbd3-4099-8794-5eb007077ed8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c1aac11d-1e9f-4ca3-adcc-8712409cfd1d/e5d61825-dbd3-4099-8794-5eb007077ed8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c1aac11d-1e9f-4ca3-adcc-8712409cfd1d/e5d61825-dbd3-4099-8794-5eb007077ed8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -1.0778869   -1.2265912   -0.9291826
Birth       COHORTS          GUATEMALA                      <20                  NA                -1.1860185   -1.5216866   -0.8503504
Birth       COHORTS          GUATEMALA                      >=30                 NA                -0.9896351   -1.1620915   -0.8171787
Birth       COHORTS          INDIA                          [20-30)              NA                -0.9697878   -1.0122478   -0.9273279
Birth       COHORTS          INDIA                          <20                  NA                -1.0997777   -1.2249936   -0.9745619
Birth       COHORTS          INDIA                          >=30                 NA                -0.9358971   -1.0123145   -0.8594798
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.7636378   -0.8242948   -0.7029808
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.8908577   -1.0341395   -0.7475759
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.6172513   -0.7044444   -0.5300582
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -1.0661737   -1.1744105   -0.9579369
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.4323722   -1.6399607   -1.2247837
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.9031880   -1.1156952   -0.6906809
Birth       IRC              INDIA                          [20-30)              NA                -1.0349826   -1.2415777   -0.8283875
Birth       IRC              INDIA                          <20                  NA                -0.9128238   -1.5259269   -0.2997208
Birth       IRC              INDIA                          >=30                 NA                -0.8457175   -1.5695067   -0.1219282
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.7244262   -0.7497319   -0.6991205
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -0.8412887   -0.8695722   -0.8130052
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -0.8085069   -0.8756847   -0.7413292
Birth       Keneba           GAMBIA                         [20-30)              NA                -1.2355623   -1.3284615   -1.1426632
Birth       Keneba           GAMBIA                         <20                  NA                -1.4303961   -1.5922848   -1.2685073
Birth       Keneba           GAMBIA                         >=30                 NA                -1.2120679   -1.3179613   -1.1061746
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.8847138   -1.0536514   -0.7157763
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.1531012   -1.5635522   -0.7426503
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -0.9010384   -1.2797882   -0.5222885
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       MAL-ED           BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0284669   -0.1878372    0.1309035
Birth       MAL-ED           PERU                           <20                  NA                -0.1499737   -0.4230034    0.1230561
Birth       MAL-ED           PERU                           >=30                 NA                 0.0087038   -0.2447420    0.2621496
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1776207   -0.4574496    0.1022083
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.5741917   -1.0486220   -0.0997614
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0404362   -0.5737857    0.4929133
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3663627   -1.4890433   -1.2436820
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -1.5392382   -1.7773806   -1.3010957
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -1.2057817   -1.3897143   -1.0218491
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.2263258   -1.3279534   -1.1246981
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -1.3075035   -1.5297741   -1.0852328
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -1.2739760   -1.4940182   -1.0539338
Birth       PROBIT           BELARUS                        [20-30)              NA                -1.1630711   -1.3795229   -0.9466192
Birth       PROBIT           BELARUS                        <20                  NA                -1.1412539   -1.3369837   -0.9455242
Birth       PROBIT           BELARUS                        >=30                 NA                -1.1148009   -1.3289921   -0.9006096
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -1.2843388   -1.3761050   -1.1925725
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.4156384   -1.6307384   -1.2005384
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -1.2544101   -1.4551726   -1.0536476
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.6803546   -0.8652973   -0.4954120
Birth       SAS-CompFeed     INDIA                          <20                  NA                -0.6675463   -0.8865296   -0.4485631
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -0.5875985   -0.8484625   -0.3267345
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.4971560   -0.5296059   -0.4647060
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6519802   -0.7277116   -0.5762488
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4602461   -0.5331429   -0.3873492
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5330062   -0.7024284   -0.3635839
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -0.6839773   -1.2160781   -0.1518766
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1952981   -0.6441900    0.2535937
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.1999163    0.0937300    0.3061026
6 months    COHORTS          GUATEMALA                      <20                  NA                 0.2935138    0.0928561    0.4941714
6 months    COHORTS          GUATEMALA                      >=30                 NA                 0.1752497    0.0568312    0.2936682
6 months    COHORTS          INDIA                          [20-30)              NA                -0.6932683   -0.7330978   -0.6534388
6 months    COHORTS          INDIA                          <20                  NA                -0.8753362   -0.9966297   -0.7540427
6 months    COHORTS          INDIA                          >=30                 NA                -0.6960369   -0.7647725   -0.6273013
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.2386018   -0.2920672   -0.1851364
6 months    COHORTS          PHILIPPINES                    <20                  NA                -0.2709745   -0.4026726   -0.1392763
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -0.3917652   -0.4701743   -0.3133561
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.5780979   -0.6877950   -0.4684008
6 months    GMS-Nepal        NEPAL                          <20                  NA                -0.5402206   -0.7367127   -0.3437285
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -0.7497676   -0.9979584   -0.5015769
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0020715   -0.1393664    0.1435093
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -0.0489490   -0.3540291    0.2561310
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2546009   -0.5254296    0.0162277
6 months    IRC              INDIA                          [20-30)              NA                -0.6184726   -0.7602621   -0.4766831
6 months    IRC              INDIA                          <20                  NA                -0.2916209   -0.8590869    0.2758450
6 months    IRC              INDIA                          >=30                 NA                -0.8167623   -1.4518553   -0.1816694
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.5904340   -0.6192613   -0.5616068
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -0.5935870   -0.6215394   -0.5656346
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -0.6162067   -0.6815679   -0.5508454
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0861447   -0.1601327   -0.0121568
6 months    Keneba           GAMBIA                         <20                  NA                -0.1041730   -0.2341653    0.0258193
6 months    Keneba           GAMBIA                         >=30                 NA                -0.3698997   -0.4540817   -0.2857177
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.4135267    0.3049840    0.5220693
6 months    LCNI-5           MALAWI                         <20                  NA                 0.4569259    0.2690493    0.6448025
6 months    LCNI-5           MALAWI                         >=30                 NA                 0.5025944    0.3543921    0.6507967
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.1060737   -0.2614621    0.0493146
6 months    MAL-ED           BANGLADESH                     <20                  NA                -0.1331511   -0.5859463    0.3196442
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -0.2401969   -0.4930281    0.0126343
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 1.0241715    0.7955758    1.2527673
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.9690290    0.6302861    1.3077719
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.8091847    0.3905069    1.2278624
6 months    MAL-ED           INDIA                          [20-30)              NA                -0.7589084   -0.9106152   -0.6072017
6 months    MAL-ED           INDIA                          <20                  NA                -0.6424219   -0.9535704   -0.3312735
6 months    MAL-ED           INDIA                          >=30                 NA                -0.3846147   -0.7113011   -0.0579283
6 months    MAL-ED           NEPAL                          [20-30)              NA                 0.1162432   -0.0345491    0.2670356
6 months    MAL-ED           NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    MAL-ED           NEPAL                          >=30                 NA                 0.1206884   -0.1611060    0.4024828
6 months    MAL-ED           PERU                           [20-30)              NA                 0.9998877    0.8190652    1.1807102
6 months    MAL-ED           PERU                           <20                  NA                 1.1002818    0.8855829    1.3149806
6 months    MAL-ED           PERU                           >=30                 NA                 1.1459884    0.8869490    1.4050279
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.5334275    0.3014439    0.7654110
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                 0.6755895    0.2018706    1.1493085
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.4253591    0.2142160    0.6365022
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6181671    0.4438137    0.7925205
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.3773183   -0.2313342    0.9859709
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4058151    0.1904554    0.6211747
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4447273   -0.5563989   -0.3330557
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -0.3062263   -0.5805014   -0.0319512
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -0.5401468   -0.7290381   -0.3512555
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0457219   -0.0513388    0.1427827
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                 0.0248983   -0.1695489    0.2193456
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -0.1508739   -0.3487198    0.0469721
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.5706536    0.5089304    0.6323767
6 months    PROBIT           BELARUS                        <20                  NA                 0.5994996    0.5301759    0.6688233
6 months    PROBIT           BELARUS                        >=30                 NA                 0.5407299    0.4544241    0.6270358
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.1945577   -0.2970851   -0.0920303
6 months    PROVIDE          BANGLADESH                     <20                  NA                -0.1425089   -0.3838117    0.0987938
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -0.2621716   -0.4473493   -0.0769939
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.6650529   -0.8231873   -0.5069184
6 months    SAS-CompFeed     INDIA                          <20                  NA                -0.5719772   -0.6599546   -0.4839998
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -0.7704448   -0.9310761   -0.6098135
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.9249696   -1.0606752   -0.7892641
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -0.7981328   -1.0675762   -0.5286895
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -1.2923006   -1.5795755   -1.0050258
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0970921    0.0309771    0.1632072
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2043727   -0.0103681    0.4191134
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0008387   -0.1024637    0.1041411
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3197277    0.2864608    0.3529947
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3609895    0.2903465    0.4316324
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.1913121    0.1234652    0.2591591
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5627742   -0.6800481   -0.4455004
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.6092152   -0.9083965   -0.3100339
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.4768898   -0.7707600   -0.1830197
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.3065893   -0.3837277   -0.2294510
24 months   COHORTS          GUATEMALA                      <20                  NA                -0.2771627   -0.4344556   -0.1198697
24 months   COHORTS          GUATEMALA                      >=30                 NA                -0.3071445   -0.4090701   -0.2052189
24 months   COHORTS          INDIA                          [20-30)              NA                -0.6671699   -0.7083258   -0.6260141
24 months   COHORTS          INDIA                          <20                  NA                -0.7959102   -0.9127981   -0.6790223
24 months   COHORTS          INDIA                          >=30                 NA                -0.6411940   -0.7055202   -0.5768679
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.6000116   -0.6477965   -0.5522267
24 months   COHORTS          PHILIPPINES                    <20                  NA                -0.6599999   -0.7671399   -0.5528599
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -0.5855812   -0.6548103   -0.5163521
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.0672934   -1.1784819   -0.9561048
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.2922815   -1.5184063   -1.0661568
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.0386912   -1.2334815   -0.8439009
24 months   IRC              INDIA                          [20-30)              NA                -0.7562732   -0.8541199   -0.6584264
24 months   IRC              INDIA                          <20                  NA                -0.5057271   -0.7986367   -0.2128175
24 months   IRC              INDIA                          >=30                 NA                -0.9439427   -1.4010523   -0.4868331
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2972766   -1.3305171   -1.2640360
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -1.3055426   -1.3442954   -1.2667898
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.3015850   -1.3858824   -1.2172876
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.7948179   -0.8674842   -0.7221516
24 months   Keneba           GAMBIA                         <20                  NA                -0.8966032   -1.0322473   -0.7609590
24 months   Keneba           GAMBIA                         >=30                 NA                -0.8005329   -0.8733381   -0.7277278
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0047640   -0.1350322    0.1255043
24 months   LCNI-5           MALAWI                         <20                  NA                -0.2465838   -0.4806629   -0.0125047
24 months   LCNI-5           MALAWI                         >=30                 NA                 0.1112641   -0.0300996    0.2526278
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.7546482   -0.8992999   -0.6099965
24 months   MAL-ED           BANGLADESH                     <20                  NA                -1.0227634   -1.3742613   -0.6712655
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.9177031   -1.2135235   -0.6218828
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.5081519    0.2398517    0.7764521
24 months   MAL-ED           BRAZIL                         <20                  NA                 0.4262123   -0.0801877    0.9326123
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.3854318   -0.0941758    0.8650393
24 months   MAL-ED           INDIA                          [20-30)              NA                -0.9695498   -1.1116447   -0.8274549
24 months   MAL-ED           INDIA                          <20                  NA                -0.9597240   -1.2145462   -0.7049018
24 months   MAL-ED           INDIA                          >=30                 NA                -0.7727991   -1.0133614   -0.5322369
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0622296   -0.1091198    0.2335789
24 months   MAL-ED           PERU                           <20                  NA                -0.0880872   -0.3919711    0.2157966
24 months   MAL-ED           PERU                           >=30                 NA                 0.5038510    0.2528746    0.7548275
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.3909588    0.1981630    0.5837546
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                 0.6746427    0.3442796    1.0050058
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.3124913    0.1278301    0.4971525
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0147050   -0.1583772    0.1877873
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9574041   -1.0735780   -0.8412303
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.4722399   -0.7893254   -0.1551544
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.9442146   -1.1673412   -0.7210880
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.5993388   -0.7175023   -0.4811754
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.6187323   -0.8225596   -0.4149050
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.7372110   -0.9886008   -0.4858212
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.7095875    0.5957764    0.8233986
24 months   PROBIT           BELARUS                        <20                  NA                 0.7326406    0.5100096    0.9552716
24 months   PROBIT           BELARUS                        >=30                 NA                 0.6135288    0.4947925    0.7322652
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.8457041   -0.9468502   -0.7445579
24 months   PROVIDE          BANGLADESH                     <20                  NA                -1.0536057   -1.2949001   -0.8123113
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.9581221   -1.1283857   -0.7878585
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2529256   -1.3780969   -1.1277544
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0256226   -1.2582224   -0.7930228
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1709708   -1.3961854   -0.9457561


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9742815   -1.0093427   -0.9392203
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7777196   -0.7967334   -0.7587059
Birth       Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3545637   -1.4492090   -1.2599184
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5144298   -0.5403185   -0.4885410
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.7119298   -0.7444861   -0.6793734
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0619988   -0.1773839    0.0533863
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5933575   -0.6128938   -0.5738211
6 months    Keneba           GAMBIA                         NA                   NA                -0.1833609   -0.2343611   -0.1323607
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4409268    0.3613957    0.5204578
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7077885   -0.8346769   -0.5809000
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4495343   -0.5402027   -0.3588659
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0782666    0.0252568    0.1312764
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3103322    0.2846161    0.3360483
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          NA                   NA                -0.6627749   -0.6962103   -0.6293395
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2977181   -1.3209986   -1.2744376
24 months   Keneba           GAMBIA                         NA                   NA                -0.8079199   -0.8550714   -0.7607684
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0115944   -0.1019822    0.0787935
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9564667   -1.0725632   -0.8403701
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9097790   -1.0080462   -0.8115117
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1845602   -1.2836321   -1.0854883


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.1081316   -0.4752898    0.2590266
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)            0.0882518   -0.1394809    0.3159844
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.1299899   -0.2622830    0.0023032
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.0338907   -0.0535203    0.1213018
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1272199   -0.2829742    0.0285344
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1463865    0.0402650    0.2525080
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3661986   -0.6002473   -0.1321498
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1629856   -0.0750281    0.4009994
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)            0.1221588   -0.5250441    0.7693616
Birth       IRC              INDIA                          >=30                 [20-30)            0.1892651   -0.5639204    0.9424507
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1168625   -0.1518077   -0.0819173
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0840807   -0.1534699   -0.0146915
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.1948338   -0.3813795   -0.0082880
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0234944   -0.1172770    0.1642658
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2683874   -0.7125145    0.1757397
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0163245   -0.4313075    0.3986584
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.1215068   -0.4378793    0.1948657
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.0371706   -0.2623367    0.3366780
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.3965710   -0.9553141    0.1621720
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1371845   -0.4673299    0.7416988
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2985065   -0.6501530    1.2471660
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2036364   -0.6212610    0.2139882
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.1728755   -0.4406266    0.0948756
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1605810   -0.0616491    0.3828110
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0811777   -0.3253976    0.1630422
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0476502   -0.2891781    0.1938777
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)            0.0218171   -0.0814953    0.1251296
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0482702   -0.0136374    0.1101778
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.1312996   -0.3647814    0.1021821
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0299287   -0.1909837    0.2508411
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)            0.0128083   -0.1149937    0.1406103
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0927561   -0.1600489    0.3455612
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1548242   -0.2371168   -0.0725316
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0369099   -0.0428075    0.1166273
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.1509712   -0.7100025    0.4080601
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.3377081   -0.1422437    0.8176598
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.0935974   -0.1332365    0.3204314
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0246666   -0.1827602    0.1334270
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.1820679   -0.3096946   -0.0544411
6 months    COHORTS          INDIA                          >=30                 [20-30)           -0.0027686   -0.0819761    0.0764389
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0323727   -0.1746050    0.1098597
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1531634   -0.2482263   -0.0581005
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)            0.0378773   -0.1869397    0.2626942
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1716698   -0.4433844    0.1000449
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0510205   -0.3886849    0.2866440
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2566724   -0.5622879    0.0489431
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)            0.3268517   -0.2577443    0.9114477
6 months    IRC              INDIA                          >=30                 [20-30)           -0.1982897   -0.8494893    0.4529099
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0031530   -0.0408452    0.0345392
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0257727   -0.0978055    0.0462602
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           -0.0180283   -0.1674916    0.1314350
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.2837550   -0.3954490   -0.1720609
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)            0.0433992   -0.1731607    0.2599591
6 months    LCNI-5           MALAWI                         >=30                 [20-30)            0.0890678   -0.0950441    0.2731797
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.0270774   -0.5056427    0.4514880
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1341232   -0.4297033    0.1614570
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)           -0.0551426   -0.4641047    0.3538195
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)           -0.2149869   -0.6948645    0.2648907
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)            0.1164865   -0.2295344    0.4625074
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.3742938    0.0131186    0.7354689
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.3152432   -0.9208249    0.2903384
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0044452   -0.3151583    0.3240487
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)            0.1003941   -0.1806451    0.3814333
6 months    MAL-ED           PERU                           >=30                 [20-30)            0.1461007   -0.1706071    0.4628085
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.1421621   -0.3826291    0.6669533
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.1080684   -0.4220209    0.2058841
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2408487   -0.8744519    0.3927544
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2123520   -0.4894241    0.0647201
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1385010   -0.1570741    0.4340761
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0954195   -0.3146271    0.1237880
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0208236   -0.2386235    0.1969764
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1965958   -0.4162709    0.0230793
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)            0.0288460   -0.0391093    0.0968013
6 months    PROBIT           BELARUS                        >=30                 [20-30)           -0.0299237   -0.0815181    0.0216708
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)            0.0520488   -0.2103072    0.3144047
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0676139   -0.2791757    0.1439479
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)            0.0930757   -0.0480996    0.2342509
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1053919   -0.2677992    0.0570153
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.1268368   -0.1748308    0.4285043
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.3673310   -0.6850572   -0.0496048
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1072805   -0.1174135    0.3319746
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0962534   -0.2190758    0.0265689
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0412617   -0.0366691    0.1191925
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1284156   -0.2037968   -0.0530344
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0464410   -0.3669820    0.2741000
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0858844   -0.2292486    0.4010174
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0294267   -0.1458517    0.2047050
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0005552   -0.1283740    0.1272636
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.1287402   -0.2522179   -0.0052626
24 months   COHORTS          INDIA                          >=30                 [20-30)            0.0259759   -0.0494586    0.1014105
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0599883   -0.1770943    0.0571176
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0144304   -0.0694743    0.0983351
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2249882   -0.4781547    0.0281783
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0286021   -0.1968750    0.2540793
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)            0.2505461   -0.0579099    0.5590021
24 months   IRC              INDIA                          >=30                 [20-30)           -0.1876695   -0.6554592    0.2801202
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0082661   -0.0587598    0.0422277
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0043084   -0.0972557    0.0886388
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.1017852   -0.2554744    0.0519039
24 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0057150   -0.1083078    0.0968778
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.2418198   -0.5093017    0.0256620
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.1160280   -0.0754803    0.3075364
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2681152   -0.6481895    0.1119592
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1630549   -0.4921885    0.1660786
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0819396   -0.6576617    0.4937826
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.1227201   -0.6747023    0.4292620
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)            0.0098258   -0.2826566    0.3023082
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.1967506   -0.0831090    0.4766103
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           -0.1503168   -0.4994985    0.1988649
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.4416214    0.1371251    0.7461178
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.2836839   -0.0985866    0.6659544
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0784675   -0.3444619    0.1875269
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2708161   -0.8327855    0.2911533
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1197515   -0.1371659    0.3766690
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.4851642    0.1489922    0.8213362
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0131895   -0.2371836    0.2635627
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0193935   -0.2551633    0.2163764
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1378721   -0.4146834    0.1389392
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0230531   -0.1347629    0.1808691
24 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0960587   -0.2223182    0.0302008
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2079016   -0.4692057    0.0534025
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1124180   -0.3106656    0.0858295
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2273030   -0.0370253    0.4916314
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0819549   -0.1763932    0.3403030


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0157440   -0.0978280    0.1293161
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0044937   -0.0302988    0.0213115
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.0209127   -0.0175531    0.0593785
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.0502694   -0.1148263    0.0142876
Birth       IRC              INDIA                          [20-30)              NA                 0.0243995   -0.0512393    0.1000383
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0532934   -0.0698135   -0.0367734
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.0006169   -0.0693604    0.0705942
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0571466   -0.1592487    0.0449554
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0235507   -0.1466103    0.0995090
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0149627   -0.2180090    0.1880837
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0117990   -0.0514769    0.0750748
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0178256   -0.0786623    0.0430112
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0138929   -0.0037612    0.0315470
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0141199   -0.0661924    0.0379526
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0103093   -0.0264107    0.0470292
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0172738   -0.0366363    0.0020886
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0303295   -0.0474709    0.1081300
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0058353   -0.0830816    0.0714109
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0186614   -0.0416226    0.0042997
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0552415   -0.0910580   -0.0194250
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0257437   -0.0874672    0.0359797
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0640703   -0.1583629    0.0302224
6 months    IRC              INDIA                          [20-30)              NA                 0.0195429   -0.0503190    0.0894048
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0029235   -0.0233615    0.0175146
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0972162   -0.1519273   -0.0425050
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0274001   -0.0457063    0.1005065
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0316026   -0.1239687    0.0607635
6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0520942   -0.1937342    0.0895459
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0511200   -0.0123929    0.1146329
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0058125   -0.0715975    0.0599726
6 months    MAL-ED           PERU                           [20-30)              NA                 0.0529938   -0.0742235    0.1802112
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0087510   -0.1575341    0.1750361
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0819457   -0.2105528    0.0466613
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0048070   -0.0683231    0.0587091
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0159597   -0.0749708    0.0430514
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0034563   -0.0080156    0.0149283
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0045330   -0.0571542    0.0480882
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0006555   -0.0321461    0.0308350
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0871883   -0.1695124   -0.0048641
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0188255   -0.0591986    0.0215476
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0093956   -0.0300099    0.0112188
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0056237   -0.0404404    0.0516878
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0252139   -0.0316582    0.0820859
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0043950   -0.0186678    0.0274579
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0099476   -0.0407035    0.0208083
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0690174   -0.1360175   -0.0020172
24 months   IRC              INDIA                          [20-30)              NA                 0.0104582   -0.0315473    0.0524637
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0004415   -0.0263764    0.0254934
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0131020   -0.0654588    0.0392548
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0068304   -0.0929936    0.0793328
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0646443   -0.1469717    0.0176832
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0455286   -0.2218096    0.1307524
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0130831   -0.0433193    0.0694855
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0489686   -0.0892381    0.1871753
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0180713   -0.1208550    0.1569976
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0400925   -0.0781403    0.1583253
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0476252   -0.0227539    0.1180042
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0110114   -0.0782417    0.0562190
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0114469   -0.0572745    0.0343808
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0471630   -0.0987177    0.0043918
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0683655   -0.0070097    0.1437406
