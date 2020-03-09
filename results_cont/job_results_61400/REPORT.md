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
![](/tmp/963d6e2f-a00e-45a8-bf83-303b6f868326/f9f3a36f-534b-4f3a-8a97-18a8dec82297/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/963d6e2f-a00e-45a8-bf83-303b6f868326/f9f3a36f-534b-4f3a-8a97-18a8dec82297/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/963d6e2f-a00e-45a8-bf83-303b6f868326/f9f3a36f-534b-4f3a-8a97-18a8dec82297/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -1.1009252   -1.2409041   -0.9609464
Birth       COHORTS          GUATEMALA                      <20                  NA                -1.2649867   -1.6185421   -0.9114313
Birth       COHORTS          GUATEMALA                      >=30                 NA                -0.9704383   -1.1462086   -0.7946680
Birth       COHORTS          INDIA                          [20-30)              NA                -0.9691873   -1.0114751   -0.9268995
Birth       COHORTS          INDIA                          <20                  NA                -1.0875856   -1.2096807   -0.9654905
Birth       COHORTS          INDIA                          >=30                 NA                -0.9416220   -1.0181060   -0.8651379
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.7633093   -0.8240118   -0.7026067
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.8902706   -1.0324184   -0.7481228
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.6134238   -0.7002891   -0.5265586
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -1.0665055   -1.1744861   -0.9585248
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.4439205   -1.6477695   -1.2400716
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.9125898   -1.1278492   -0.6973305
Birth       IRC              INDIA                          [20-30)              NA                -1.0358870   -1.2422971   -0.8294769
Birth       IRC              INDIA                          <20                  NA                -0.8774918   -1.4988787   -0.2561048
Birth       IRC              INDIA                          >=30                 NA                -0.9311075   -1.6451767   -0.2170384
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.7262191   -0.7516283   -0.7008099
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -0.8393060   -0.8677654   -0.8108467
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -0.8101127   -0.8776052   -0.7426203
Birth       Keneba           GAMBIA                         [20-30)              NA                -1.2350733   -1.3277724   -1.1423743
Birth       Keneba           GAMBIA                         <20                  NA                -1.4351254   -1.5986855   -1.2715652
Birth       Keneba           GAMBIA                         >=30                 NA                -1.2048571   -1.3103055   -1.0994086
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.8907824   -1.0599463   -0.7216186
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.2443906   -1.6594063   -0.8293748
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -0.9538537   -1.3343480   -0.5733594
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       MAL-ED           BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0301014   -0.1884654    0.1282626
Birth       MAL-ED           PERU                           <20                  NA                -0.1591319   -0.4296966    0.1114328
Birth       MAL-ED           PERU                           >=30                 NA                 0.0213440   -0.2333719    0.2760600
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1643649   -0.4389161    0.1101863
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.5358035   -0.9592273   -0.1123796
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0284223   -0.5460487    0.4892041
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3663086   -1.4889293   -1.2436879
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -1.5887776   -1.8249717   -1.3525835
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -1.1863676   -1.3598597   -1.0128754
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.2181028   -1.3195561   -1.1166495
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -1.2778814   -1.5113743   -1.0443886
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -1.3616678   -1.5949228   -1.1284129
Birth       PROBIT           BELARUS                        [20-30)              NA                -1.1657193   -1.3828005   -0.9486381
Birth       PROBIT           BELARUS                        <20                  NA                -1.1345863   -1.3272468   -0.9419257
Birth       PROBIT           BELARUS                        >=30                 NA                -1.1054022   -1.3184284   -0.8923761
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -1.2859115   -1.3774048   -1.1944181
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.4113834   -1.6077310   -1.2150357
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -1.2809841   -1.4773626   -1.0846056
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.6803546   -0.8652973   -0.4954120
Birth       SAS-CompFeed     INDIA                          <20                  NA                -0.6675463   -0.8865296   -0.4485631
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -0.5875985   -0.8484625   -0.3267345
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.4962663   -0.5286296   -0.4639030
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6502817   -0.7244018   -0.5761616
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4658342   -0.5397161   -0.3919522
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5312510   -0.6999997   -0.3625023
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -0.6475652   -1.1903619   -0.1047685
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1892790   -0.6415069    0.2629489
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.2003273    0.0958499    0.3048047
6 months    COHORTS          GUATEMALA                      <20                  NA                 0.3118957    0.1006744    0.5231169
6 months    COHORTS          GUATEMALA                      >=30                 NA                 0.1660315    0.0483806    0.2836823
6 months    COHORTS          INDIA                          [20-30)              NA                -0.6936523   -0.7336215   -0.6536830
6 months    COHORTS          INDIA                          <20                  NA                -0.8815335   -1.0059125   -0.7571546
6 months    COHORTS          INDIA                          >=30                 NA                -0.6970503   -0.7657871   -0.6283135
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.2394203   -0.2929139   -0.1859267
6 months    COHORTS          PHILIPPINES                    <20                  NA                -0.2699883   -0.3962799   -0.1436967
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -0.3928444   -0.4708034   -0.3148854
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.5740096   -0.6840453   -0.4639739
6 months    GMS-Nepal        NEPAL                          <20                  NA                -0.5341696   -0.7331517   -0.3351874
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -0.8432730   -1.0642559   -0.6222900
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0000925   -0.1423994    0.1425844
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -0.0616465   -0.3653927    0.2420996
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2439692   -0.5200273    0.0320889
6 months    IRC              INDIA                          [20-30)              NA                -0.6186136   -0.7605258   -0.4767015
6 months    IRC              INDIA                          <20                  NA                -0.2832378   -0.8665850    0.3001093
6 months    IRC              INDIA                          >=30                 NA                -0.7964859   -1.4466057   -0.1463661
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.5877148   -0.6166231   -0.5588064
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -0.5923774   -0.6199641   -0.5647907
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -0.6316980   -0.6979669   -0.5654290
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0797783   -0.1546378   -0.0049187
6 months    Keneba           GAMBIA                         <20                  NA                -0.1086062   -0.2363143    0.0191018
6 months    Keneba           GAMBIA                         >=30                 NA                -0.3709499   -0.4554339   -0.2864660
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.4225129    0.3145784    0.5304475
6 months    LCNI-5           MALAWI                         <20                  NA                 0.4147731    0.2236706    0.6058755
6 months    LCNI-5           MALAWI                         >=30                 NA                 0.4944388    0.3451893    0.6436884
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.1142032   -0.2717628    0.0433564
6 months    MAL-ED           BANGLADESH                     <20                  NA                -0.0816049   -0.5553506    0.3921409
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -0.2212983   -0.4779882    0.0353915
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 1.0281984    0.7978716    1.2585253
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.9984360    0.6479328    1.3489391
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.7492621    0.3754408    1.1230835
6 months    MAL-ED           INDIA                          [20-30)              NA                -0.7599919   -0.9117690   -0.6082148
6 months    MAL-ED           INDIA                          <20                  NA                -0.6103047   -0.9289514   -0.2916581
6 months    MAL-ED           INDIA                          >=30                 NA                -0.3688289   -0.6926963   -0.0449615
6 months    MAL-ED           NEPAL                          [20-30)              NA                 0.1162432   -0.0345491    0.2670356
6 months    MAL-ED           NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    MAL-ED           NEPAL                          >=30                 NA                 0.1206884   -0.1611060    0.4024828
6 months    MAL-ED           PERU                           [20-30)              NA                 0.9919278    0.8104075    1.1734481
6 months    MAL-ED           PERU                           <20                  NA                 1.1222432    0.8999723    1.3445140
6 months    MAL-ED           PERU                           >=30                 NA                 1.1288496    0.8654332    1.3922661
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.5176755    0.2847051    0.7506459
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                 0.7005579    0.1779904    1.2231255
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.4792986    0.2651997    0.6933976
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6351750    0.4607710    0.8095790
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.4992289   -0.0757192    1.0741770
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4115550    0.1978270    0.6252829
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4520735   -0.5652395   -0.3389076
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -0.3429080   -0.6085641   -0.0772519
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -0.5201833   -0.7136130   -0.3267536
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0461407   -0.0511734    0.1434548
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                 0.0462052   -0.1500373    0.2424477
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -0.1096973   -0.3155445    0.0961498
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.5712490    0.5095021    0.6329959
6 months    PROBIT           BELARUS                        <20                  NA                 0.6056295    0.5336042    0.6776548
6 months    PROBIT           BELARUS                        >=30                 NA                 0.5422394    0.4583776    0.6261012
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.1934477   -0.2943171   -0.0925782
6 months    PROVIDE          BANGLADESH                     <20                  NA                -0.1415326   -0.3997535    0.1166883
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -0.2713166   -0.4473403   -0.0952929
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.6650529   -0.8231873   -0.5069184
6 months    SAS-CompFeed     INDIA                          <20                  NA                -0.5719772   -0.6599546   -0.4839998
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -0.7704448   -0.9310761   -0.6098135
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.9316318   -1.0671716   -0.7960920
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -0.9288882   -1.2005822   -0.6571941
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -1.3218280   -1.6081730   -1.0354830
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0984762    0.0331777    0.1637747
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2124703   -0.0069882    0.4319288
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0156353   -0.1224793    0.0912088
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3180559    0.2844754    0.3516364
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3678867    0.2950535    0.4407200
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.1898984    0.1208652    0.2589315
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5621252   -0.6794847   -0.4447657
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5912674   -0.8730777   -0.3094571
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.4691605   -0.7446694   -0.1936517
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.3134105   -0.3897828   -0.2370382
24 months   COHORTS          GUATEMALA                      <20                  NA                -0.2416101   -0.4027718   -0.0804485
24 months   COHORTS          GUATEMALA                      >=30                 NA                -0.3176927   -0.4183680   -0.2170174
24 months   COHORTS          INDIA                          [20-30)              NA                -0.6667047   -0.7079457   -0.6254637
24 months   COHORTS          INDIA                          <20                  NA                -0.8128828   -0.9310034   -0.6947621
24 months   COHORTS          INDIA                          >=30                 NA                -0.6355133   -0.6998860   -0.5711406
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.6020336   -0.6498720   -0.5541952
24 months   COHORTS          PHILIPPINES                    <20                  NA                -0.6592021   -0.7692495   -0.5491547
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -0.5900469   -0.6595878   -0.5205060
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.0682057   -1.1791635   -0.9572479
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.2794674   -1.5103870   -1.0485477
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.0572928   -1.2444226   -0.8701629
24 months   IRC              INDIA                          [20-30)              NA                -0.7567585   -0.8546809   -0.6588361
24 months   IRC              INDIA                          <20                  NA                -0.4824899   -0.7770276   -0.1879523
24 months   IRC              INDIA                          >=30                 NA                -0.9732791   -1.4602525   -0.4863056
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2978312   -1.3314718   -1.2641906
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -1.3046717   -1.3424468   -1.2668966
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.3021328   -1.3897929   -1.2144727
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.7933529   -0.8659648   -0.7207409
24 months   Keneba           GAMBIA                         <20                  NA                -0.9083265   -1.0412650   -0.7753879
24 months   Keneba           GAMBIA                         >=30                 NA                -0.8021283   -0.8751212   -0.7291354
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0155562   -0.1446135    0.1135011
24 months   LCNI-5           MALAWI                         <20                  NA                -0.2446428   -0.4678996   -0.0213860
24 months   LCNI-5           MALAWI                         >=30                 NA                 0.1177546   -0.0263859    0.2618951
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.7401794   -0.8843440   -0.5960148
24 months   MAL-ED           BANGLADESH                     <20                  NA                -1.0106851   -1.3431260   -0.6782442
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.9545703   -1.2524533   -0.6566874
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.5073309    0.2393113    0.7753505
24 months   MAL-ED           BRAZIL                         <20                  NA                 0.4132349   -0.1021829    0.9286527
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.3693600   -0.1319662    0.8706861
24 months   MAL-ED           INDIA                          [20-30)              NA                -0.9715265   -1.1132139   -0.8298392
24 months   MAL-ED           INDIA                          <20                  NA                -0.9831680   -1.2356801   -0.7306559
24 months   MAL-ED           INDIA                          >=30                 NA                -0.7929765   -1.0358129   -0.5501401
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0499451   -0.1097781    0.2096683
24 months   MAL-ED           PERU                           <20                  NA                -0.0048512   -0.2812692    0.2715667
24 months   MAL-ED           PERU                           >=30                 NA                 0.4533258    0.1731277    0.7335240
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.3843502    0.1897222    0.5789782
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                 0.6172179    0.3014337    0.9330021
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.3492381    0.1669718    0.5315044
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0147050   -0.1583772    0.1877873
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9628821   -1.0788860   -0.8468781
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.4472155   -0.7659002   -0.1285307
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.9175532   -1.1522883   -0.6828181
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.6031826   -0.7220609   -0.4843043
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.5931024   -0.7934205   -0.3927843
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.6854128   -0.9316045   -0.4392211
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.7125427    0.5992698    0.8258156
24 months   PROBIT           BELARUS                        <20                  NA                 0.7308860    0.4936531    0.9681189
24 months   PROBIT           BELARUS                        >=30                 NA                 0.6019541    0.4865938    0.7173145
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.8588441   -0.9598102   -0.7578780
24 months   PROVIDE          BANGLADESH                     <20                  NA                -0.9539789   -1.2223731   -0.6855847
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.9642533   -1.1371020   -0.7914046
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2492140   -1.3750633   -1.1233647
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0100672   -1.2496280   -0.7705065
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1566482   -1.3772995   -0.9359968


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
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.1640615   -0.5432369    0.2151138
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)            0.1304869   -0.0925628    0.3535366
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.1183983   -0.2476705    0.0108738
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.0275653   -0.0598815    0.1150122
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1269613   -0.2816291    0.0277065
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1498854    0.0440069    0.2557639
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3774151   -0.6081530   -0.1466771
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1539156   -0.0865318    0.3943631
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)            0.1583952   -0.4951415    0.8119320
Birth       IRC              INDIA                          >=30                 [20-30)            0.1047795   -0.6381204    0.8476794
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1130869   -0.1484413   -0.0777326
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0838936   -0.1538955   -0.0138918
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.2000520   -0.3880533   -0.0120508
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0302163   -0.1099254    0.1703579
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3536081   -0.8017093    0.0944930
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0630713   -0.4808563    0.3547137
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.1290305   -0.4429297    0.1848688
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.0514454   -0.2482201    0.3511110
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.3714386   -0.8801994    0.1373222
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1359426   -0.4470124    0.7188976
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2985065   -0.6501530    1.2471660
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2036364   -0.6212610    0.2139882
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.2224690   -0.4888898    0.0439517
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1799410   -0.0326719    0.3925539
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0597786   -0.3147644    0.1952071
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1435650   -0.3986798    0.1115497
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)            0.0311330   -0.0703702    0.1326363
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0603171   -0.0019326    0.1225668
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.1254719   -0.3416995    0.0907557
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0049274   -0.2113027    0.2211575
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)            0.0128083   -0.1149937    0.1406103
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0927561   -0.1600489    0.3455612
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1540154   -0.2348131   -0.0732177
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0304321   -0.0501170    0.1109813
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.1163142   -0.6843369    0.4517084
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.3419720   -0.1409856    0.8249296
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.1115684   -0.1241525    0.3472892
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0342959   -0.1914562    0.1228645
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.1878813   -0.3185572   -0.0572053
6 months    COHORTS          INDIA                          >=30                 [20-30)           -0.0033980   -0.0826641    0.0758681
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0305680   -0.1678373    0.1067013
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1534241   -0.2480795   -0.0587687
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)            0.0398400   -0.1878406    0.2675206
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2692634   -0.5162284   -0.0222984
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0617390   -0.3987400    0.2752620
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2440616   -0.5555383    0.0674150
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)            0.3353758   -0.2649326    0.9356842
6 months    IRC              INDIA                          >=30                 [20-30)           -0.1778722   -0.8440880    0.4883435
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0046626   -0.0421012    0.0327760
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0439832   -0.1170358    0.0290694
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           -0.0288280   -0.1767994    0.1191435
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.2911716   -0.4036217   -0.1787216
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)           -0.0077398   -0.2269105    0.2114308
6 months    LCNI-5           MALAWI                         >=30                 [20-30)            0.0719259   -0.1124600    0.2563118
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)            0.0325983   -0.4672167    0.5324134
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1070951   -0.4073363    0.1931461
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)           -0.0297625   -0.4500056    0.3904806
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)           -0.2789363   -0.7186684    0.1607957
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)            0.1496871   -0.2032060    0.5025803
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.3911630    0.0328723    0.7494537
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.3152432   -0.9208249    0.2903384
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0044452   -0.3151583    0.3240487
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)            0.1303153   -0.1564509    0.4170816
6 months    MAL-ED           PERU                           >=30                 [20-30)            0.1369218   -0.1828881    0.4567317
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.1828824   -0.3896951    0.7554600
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0383769   -0.3552173    0.2784635
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1359461   -0.7371394    0.4652472
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2236200   -0.4991721    0.0519320
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1091656   -0.1803927    0.3987238
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0681098   -0.2936893    0.1574698
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0000646   -0.2192875    0.2194166
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1558380   -0.3833292    0.0716531
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)            0.0343806   -0.0358340    0.1045951
6 months    PROBIT           BELARUS                        >=30                 [20-30)           -0.0290096   -0.0779088    0.0198897
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)            0.0519151   -0.2272554    0.3310855
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0778689   -0.2794882    0.1237503
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)            0.0930757   -0.0480996    0.2342509
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1053919   -0.2677992    0.0570153
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0027436   -0.3008613    0.3063485
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.3901962   -0.7072297   -0.0731628
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1139941   -0.1150543    0.3430426
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.1141115   -0.2396079    0.0113850
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0498308   -0.0302240    0.1298856
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1281576   -0.2047416   -0.0515735
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0291422   -0.3336218    0.2753374
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0929647   -0.2049252    0.3908545
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0718004   -0.1065812    0.2501820
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0042822   -0.1308337    0.1222694
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.1461780   -0.2708144   -0.0215417
24 months   COHORTS          INDIA                          >=30                 [20-30)            0.0311914   -0.0443235    0.1067063
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0571685   -0.1769531    0.0626162
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0119867   -0.0721940    0.0961675
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2112617   -0.4682934    0.0457700
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0109129   -0.2075176    0.2293434
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)            0.2742685   -0.0359492    0.5844863
24 months   IRC              INDIA                          >=30                 [20-30)           -0.2165206   -0.7139440    0.2809029
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0068405   -0.0565770    0.0428960
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0043016   -0.1005396    0.0919364
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.1149736   -0.2662090    0.0362617
24 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0087754   -0.1115539    0.0940031
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.2290866   -0.4854566    0.0272834
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.1333108   -0.0586365    0.3252581
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2705057   -0.6314900    0.0904785
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.2143909   -0.5454870    0.1167051
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0940960   -0.6745347    0.4863427
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.1379709   -0.7086360    0.4326942
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)           -0.0116415   -0.3013556    0.2780726
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.1785501   -0.1028853    0.4599855
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           -0.0547963   -0.3696068    0.2600142
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.4033808    0.0798169    0.7269446
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.2328677   -0.1382806    0.6040161
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0351121   -0.3022234    0.2319991
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2708161   -0.8327855    0.2911533
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1197515   -0.1371659    0.3766690
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.5156666    0.1793438    0.8519894
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0453288   -0.2174394    0.3080971
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0100802   -0.2216943    0.2418548
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0822302   -0.3533479    0.1888875
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0183433   -0.1591602    0.1958468
24 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.1105885   -0.2355960    0.0144189
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0951348   -0.3831738    0.1929041
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1054093   -0.3048341    0.0940156
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2391467   -0.0314348    0.5097283
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0925658   -0.1618110    0.3469426


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0387824   -0.0676935    0.1452582
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0050942   -0.0307855    0.0205971
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.0205842   -0.0178704    0.0590388
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.0499376   -0.1143618    0.0144866
Birth       IRC              INDIA                          [20-30)              NA                 0.0253039   -0.0496193    0.1002271
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0515005   -0.0682568   -0.0347443
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.0001279   -0.0694845    0.0697403
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0510780   -0.1535796    0.0514235
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0219161   -0.1439872    0.1001549
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0282184   -0.2235359    0.1670990
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0117449   -0.0505608    0.0740506
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0260486   -0.0879327    0.0358356
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0165411   -0.0012201    0.0343023
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0125472   -0.0641741    0.0390798
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0103093   -0.0264107    0.0470292
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0181635   -0.0374292    0.0011022
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0285744   -0.0485873    0.1057360
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0062463   -0.0821048    0.0696122
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0182775   -0.0414023    0.0048473
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0544230   -0.0901422   -0.0187039
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0298320   -0.0921363    0.0324722
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0620913   -0.1574855    0.0333030
6 months    IRC              INDIA                          [20-30)              NA                 0.0196839   -0.0504778    0.0898456
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0056427   -0.0261951    0.0149097
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.1035826   -0.1591603   -0.0480049
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0184138   -0.0548017    0.0916294
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0234731   -0.1171369    0.0701906
6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0561211   -0.1980832    0.0858410
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0522034   -0.0120574    0.1164642
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0058125   -0.0715975    0.0599726
6 months    MAL-ED           PERU                           [20-30)              NA                 0.0609537   -0.0663526    0.1882601
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0245030   -0.1428057    0.1918116
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0989537   -0.2270518    0.0291444
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0025393   -0.0633977    0.0684763
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0163784   -0.0754992    0.0427424
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0028609   -0.0080735    0.0137954
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0056430   -0.0576716    0.0463857
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0006555   -0.0321461    0.0308350
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0805261   -0.1625921    0.0015399
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0202096   -0.0600796    0.0196605
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0077237   -0.0287647    0.0133173
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0049747   -0.0409317    0.0508810
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0320351   -0.0245605    0.0886306
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0039298   -0.0192123    0.0270719
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0079256   -0.0386842    0.0228331
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0681051   -0.1349113   -0.0012989
24 months   IRC              INDIA                          [20-30)              NA                 0.0109435   -0.0313915    0.0532785
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0001131   -0.0258322    0.0260584
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0145671   -0.0668378    0.0377037
24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0039618   -0.0806050    0.0885286
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0791131   -0.1605634    0.0023373
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0447076   -0.2215838    0.1321685
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0150599   -0.0394344    0.0695542
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0612531   -0.0668231    0.1893293
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0246799   -0.1153507    0.1647105
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0400925   -0.0781403    0.1583253
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0531031   -0.0178122    0.1240184
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0071676   -0.0738031    0.0594680
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0144020   -0.0611936    0.0323895
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0340229   -0.0860057    0.0179599
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0646538   -0.0109983    0.1403059
