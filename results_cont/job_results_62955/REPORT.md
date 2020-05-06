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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
