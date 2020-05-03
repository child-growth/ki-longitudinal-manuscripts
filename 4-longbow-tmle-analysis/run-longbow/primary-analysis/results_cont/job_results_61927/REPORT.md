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

agecat      studyid          country                        mage       n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)        79      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          <20             9      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          >=30            4      92  haz              
Birth       COHORTS          GUATEMALA                      [20-30)       405     852  haz              
Birth       COHORTS          GUATEMALA                      <20           121     852  haz              
Birth       COHORTS          GUATEMALA                      >=30          326     852  haz              
Birth       COHORTS          INDIA                          [20-30)      3180    4715  haz              
Birth       COHORTS          INDIA                          <20           368    4715  haz              
Birth       COHORTS          INDIA                          >=30         1167    4715  haz              
Birth       COHORTS          PHILIPPINES                    [20-30)      1821    3050  haz              
Birth       COHORTS          PHILIPPINES                    <20           378    3050  haz              
Birth       COHORTS          PHILIPPINES                    >=30          851    3050  haz              
Birth       EE               PAKISTAN                       [20-30)        94     239  haz              
Birth       EE               PAKISTAN                       <20             1     239  haz              
Birth       EE               PAKISTAN                       >=30          144     239  haz              
Birth       GMS-Nepal        NEPAL                          [20-30)       446     696  haz              
Birth       GMS-Nepal        NEPAL                          <20           149     696  haz              
Birth       GMS-Nepal        NEPAL                          >=30          101     696  haz              
Birth       IRC              INDIA                          [20-30)       325     388  haz              
Birth       IRC              INDIA                          <20            35     388  haz              
Birth       IRC              INDIA                          >=30           28     388  haz              
Birth       JiVitA-3         BANGLADESH                     [20-30)     10853   22444  haz              
Birth       JiVitA-3         BANGLADESH                     <20          9472   22444  haz              
Birth       JiVitA-3         BANGLADESH                     >=30         2119   22444  haz              
Birth       Keneba           GAMBIA                         [20-30)       705    1543  haz              
Birth       Keneba           GAMBIA                         <20           238    1543  haz              
Birth       Keneba           GAMBIA                         >=30          600    1543  haz              
Birth       MAL-ED           BANGLADESH                     [20-30)       160     231  haz              
Birth       MAL-ED           BANGLADESH                     <20            30     231  haz              
Birth       MAL-ED           BANGLADESH                     >=30           41     231  haz              
Birth       MAL-ED           BRAZIL                         [20-30)        41      65  haz              
Birth       MAL-ED           BRAZIL                         <20             8      65  haz              
Birth       MAL-ED           BRAZIL                         >=30           16      65  haz              
Birth       MAL-ED           INDIA                          [20-30)        37      47  haz              
Birth       MAL-ED           INDIA                          <20             8      47  haz              
Birth       MAL-ED           INDIA                          >=30            2      47  haz              
Birth       MAL-ED           NEPAL                          [20-30)        22      27  haz              
Birth       MAL-ED           NEPAL                          <20             0      27  haz              
Birth       MAL-ED           NEPAL                          >=30            5      27  haz              
Birth       MAL-ED           PERU                           [20-30)       114     233  haz              
Birth       MAL-ED           PERU                           <20            66     233  haz              
Birth       MAL-ED           PERU                           >=30           53     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   [20-30)        67     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   <20            23     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   >=30           33     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)        72     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             7     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           46     125  haz              
Birth       NIH-Birth        BANGLADESH                     [20-30)       410     606  haz              
Birth       NIH-Birth        BANGLADESH                     <20            70     606  haz              
Birth       NIH-Birth        BANGLADESH                     >=30          126     606  haz              
Birth       NIH-Crypto       BANGLADESH                     [20-30)       483     732  haz              
Birth       NIH-Crypto       BANGLADESH                     <20           130     732  haz              
Birth       NIH-Crypto       BANGLADESH                     >=30          119     732  haz              
Birth       PROBIT           BELARUS                        [20-30)      9943   13893  haz              
Birth       PROBIT           BELARUS                        <20          1408   13893  haz              
Birth       PROBIT           BELARUS                        >=30         2542   13893  haz              
Birth       PROVIDE          BANGLADESH                     [20-30)       371     539  haz              
Birth       PROVIDE          BANGLADESH                     <20            67     539  haz              
Birth       PROVIDE          BANGLADESH                     >=30          101     539  haz              
Birth       SAS-CompFeed     INDIA                          [20-30)       953    1252  haz              
Birth       SAS-CompFeed     INDIA                          <20           161    1252  haz              
Birth       SAS-CompFeed     INDIA                          >=30          138    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       [20-30)      9299   13835  haz              
Birth       ZVITAMBO         ZIMBABWE                       <20          2205   13835  haz              
Birth       ZVITAMBO         ZIMBABWE                       >=30         2331   13835  haz              
6 months    CMC-V-BCS-2002   INDIA                          [20-30)       293     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          <20            33     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          >=30           43     369  haz              
6 months    COHORTS          GUATEMALA                      [20-30)       470     961  haz              
6 months    COHORTS          GUATEMALA                      <20           118     961  haz              
6 months    COHORTS          GUATEMALA                      >=30          373     961  haz              
6 months    COHORTS          INDIA                          [20-30)      3331    4904  haz              
6 months    COHORTS          INDIA                          <20           371    4904  haz              
6 months    COHORTS          INDIA                          >=30         1202    4904  haz              
6 months    COHORTS          PHILIPPINES                    [20-30)      1601    2708  haz              
6 months    COHORTS          PHILIPPINES                    <20           331    2708  haz              
6 months    COHORTS          PHILIPPINES                    >=30          776    2708  haz              
6 months    EE               PAKISTAN                       [20-30)       159     371  haz              
6 months    EE               PAKISTAN                       <20             1     371  haz              
6 months    EE               PAKISTAN                       >=30          211     371  haz              
6 months    GMS-Nepal        NEPAL                          [20-30)       371     564  haz              
6 months    GMS-Nepal        NEPAL                          <20           108     564  haz              
6 months    GMS-Nepal        NEPAL                          >=30           85     564  haz              
6 months    Guatemala BSC    GUATEMALA                      [20-30)       171     276  haz              
6 months    Guatemala BSC    GUATEMALA                      <20            46     276  haz              
6 months    Guatemala BSC    GUATEMALA                      >=30           59     276  haz              
6 months    IRC              INDIA                          [20-30)       342     407  haz              
6 months    IRC              INDIA                          <20            36     407  haz              
6 months    IRC              INDIA                          >=30           29     407  haz              
6 months    JiVitA-3         BANGLADESH                     [20-30)      7679   16805  haz              
6 months    JiVitA-3         BANGLADESH                     <20          7905   16805  haz              
6 months    JiVitA-3         BANGLADESH                     >=30         1221   16805  haz              
6 months    Keneba           GAMBIA                         [20-30)       987    2080  haz              
6 months    Keneba           GAMBIA                         <20           288    2080  haz              
6 months    Keneba           GAMBIA                         >=30          805    2080  haz              
6 months    LCNI-5           MALAWI                         [20-30)       364     669  haz              
6 months    LCNI-5           MALAWI                         <20           107     669  haz              
6 months    LCNI-5           MALAWI                         >=30          198     669  haz              
6 months    MAL-ED           BANGLADESH                     [20-30)       165     241  haz              
6 months    MAL-ED           BANGLADESH                     <20            35     241  haz              
6 months    MAL-ED           BANGLADESH                     >=30           41     241  haz              
6 months    MAL-ED           BRAZIL                         [20-30)       125     209  haz              
6 months    MAL-ED           BRAZIL                         <20            37     209  haz              
6 months    MAL-ED           BRAZIL                         >=30           47     209  haz              
6 months    MAL-ED           INDIA                          [20-30)       179     234  haz              
6 months    MAL-ED           INDIA                          <20            34     234  haz              
6 months    MAL-ED           INDIA                          >=30           21     234  haz              
6 months    MAL-ED           NEPAL                          [20-30)       185     236  haz              
6 months    MAL-ED           NEPAL                          <20             5     236  haz              
6 months    MAL-ED           NEPAL                          >=30           46     236  haz              
6 months    MAL-ED           PERU                           [20-30)       136     273  haz              
6 months    MAL-ED           PERU                           <20            76     273  haz              
6 months    MAL-ED           PERU                           >=30           61     273  haz              
6 months    MAL-ED           SOUTH AFRICA                   [20-30)       118     254  haz              
6 months    MAL-ED           SOUTH AFRICA                   <20            42     254  haz              
6 months    MAL-ED           SOUTH AFRICA                   >=30           94     254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            15     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30          104     247  haz              
6 months    NIH-Birth        BANGLADESH                     [20-30)       357     535  haz              
6 months    NIH-Birth        BANGLADESH                     <20            61     535  haz              
6 months    NIH-Birth        BANGLADESH                     >=30          117     535  haz              
6 months    NIH-Crypto       BANGLADESH                     [20-30)       462     715  haz              
6 months    NIH-Crypto       BANGLADESH                     <20           131     715  haz              
6 months    NIH-Crypto       BANGLADESH                     >=30          122     715  haz              
6 months    PROBIT           BELARUS                        [20-30)     11316   15760  haz              
6 months    PROBIT           BELARUS                        <20          1619   15760  haz              
6 months    PROBIT           BELARUS                        >=30         2825   15760  haz              
6 months    PROVIDE          BANGLADESH                     [20-30)       424     604  haz              
6 months    PROVIDE          BANGLADESH                     <20            66     604  haz              
6 months    PROVIDE          BANGLADESH                     >=30          114     604  haz              
6 months    SAS-CompFeed     INDIA                          [20-30)      1017    1336  haz              
6 months    SAS-CompFeed     INDIA                          <20           171    1336  haz              
6 months    SAS-CompFeed     INDIA                          >=30          148    1336  haz              
6 months    SAS-FoodSuppl    INDIA                          [20-30)       261     380  haz              
6 months    SAS-FoodSuppl    INDIA                          <20            36     380  haz              
6 months    SAS-FoodSuppl    INDIA                          >=30           83     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012  haz              
6 months    ZVITAMBO         ZIMBABWE                       [20-30)      5738    8653  haz              
6 months    ZVITAMBO         ZIMBABWE                       <20          1315    8653  haz              
6 months    ZVITAMBO         ZIMBABWE                       >=30         1600    8653  haz              
24 months   CMC-V-BCS-2002   INDIA                          [20-30)       295     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          <20            34     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          >=30           42     371  haz              
24 months   COHORTS          GUATEMALA                      [20-30)       527    1064  haz              
24 months   COHORTS          GUATEMALA                      <20           152    1064  haz              
24 months   COHORTS          GUATEMALA                      >=30          385    1064  haz              
24 months   COHORTS          INDIA                          [20-30)      2463    3692  haz              
24 months   COHORTS          INDIA                          <20           247    3692  haz              
24 months   COHORTS          INDIA                          >=30          982    3692  haz              
24 months   COHORTS          PHILIPPINES                    [20-30)      1460    2445  haz              
24 months   COHORTS          PHILIPPINES                    <20           292    2445  haz              
24 months   COHORTS          PHILIPPINES                    >=30          693    2445  haz              
24 months   EE               PAKISTAN                       [20-30)        65     167  haz              
24 months   EE               PAKISTAN                       <20             1     167  haz              
24 months   EE               PAKISTAN                       >=30          101     167  haz              
24 months   GMS-Nepal        NEPAL                          [20-30)       318     488  haz              
24 months   GMS-Nepal        NEPAL                          <20            94     488  haz              
24 months   GMS-Nepal        NEPAL                          >=30           76     488  haz              
24 months   IRC              INDIA                          [20-30)       343     409  haz              
24 months   IRC              INDIA                          <20            37     409  haz              
24 months   IRC              INDIA                          >=30           29     409  haz              
24 months   JiVitA-3         BANGLADESH                     [20-30)      4058    8627  haz              
24 months   JiVitA-3         BANGLADESH                     <20          3855    8627  haz              
24 months   JiVitA-3         BANGLADESH                     >=30          714    8627  haz              
24 months   Keneba           GAMBIA                         [20-30)       790    1714  haz              
24 months   Keneba           GAMBIA                         <20           217    1714  haz              
24 months   Keneba           GAMBIA                         >=30          707    1714  haz              
24 months   LCNI-5           MALAWI                         [20-30)       250     475  haz              
24 months   LCNI-5           MALAWI                         <20            80     475  haz              
24 months   LCNI-5           MALAWI                         >=30          145     475  haz              
24 months   MAL-ED           BANGLADESH                     [20-30)       146     212  haz              
24 months   MAL-ED           BANGLADESH                     <20            29     212  haz              
24 months   MAL-ED           BANGLADESH                     >=30           37     212  haz              
24 months   MAL-ED           BRAZIL                         [20-30)       102     169  haz              
24 months   MAL-ED           BRAZIL                         <20            27     169  haz              
24 months   MAL-ED           BRAZIL                         >=30           40     169  haz              
24 months   MAL-ED           INDIA                          [20-30)       172     225  haz              
24 months   MAL-ED           INDIA                          <20            33     225  haz              
24 months   MAL-ED           INDIA                          >=30           20     225  haz              
24 months   MAL-ED           NEPAL                          [20-30)       179     228  haz              
24 months   MAL-ED           NEPAL                          <20             4     228  haz              
24 months   MAL-ED           NEPAL                          >=30           45     228  haz              
24 months   MAL-ED           PERU                           [20-30)        98     201  haz              
24 months   MAL-ED           PERU                           <20            55     201  haz              
24 months   MAL-ED           PERU                           >=30           48     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   [20-30)       106     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   <20            39     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   >=30           93     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             9     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           92     214  haz              
24 months   NIH-Birth        BANGLADESH                     [20-30)       289     427  haz              
24 months   NIH-Birth        BANGLADESH                     <20            44     427  haz              
24 months   NIH-Birth        BANGLADESH                     >=30           94     427  haz              
24 months   NIH-Crypto       BANGLADESH                     [20-30)       334     514  haz              
24 months   NIH-Crypto       BANGLADESH                     <20           101     514  haz              
24 months   NIH-Crypto       BANGLADESH                     >=30           79     514  haz              
24 months   PROBIT           BELARUS                        [20-30)      2893    4035  haz              
24 months   PROBIT           BELARUS                        <20           369    4035  haz              
24 months   PROBIT           BELARUS                        >=30          773    4035  haz              
24 months   PROVIDE          BANGLADESH                     [20-30)       409     578  haz              
24 months   PROVIDE          BANGLADESH                     <20            64     578  haz              
24 months   PROVIDE          BANGLADESH                     >=30          105     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       [20-30)      1101    1638  haz              
24 months   ZVITAMBO         ZIMBABWE                       <20           219    1638  haz              
24 months   ZVITAMBO         ZIMBABWE                       >=30          318    1638  haz              


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
![](/tmp/11bfcefe-5f90-4a7e-85b3-1f5f20158887/6e036f39-9601-4133-8303-cf665ea27d1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/11bfcefe-5f90-4a7e-85b3-1f5f20158887/6e036f39-9601-4133-8303-cf665ea27d1c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/11bfcefe-5f90-4a7e-85b3-1f5f20158887/6e036f39-9601-4133-8303-cf665ea27d1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.2459280    0.1251546    0.3667013
Birth       COHORTS          GUATEMALA                      <20                  NA                -0.1660125   -0.4506925    0.1186676
Birth       COHORTS          GUATEMALA                      >=30                 NA                 0.1219480   -0.0260920    0.2699879
Birth       COHORTS          INDIA                          [20-30)              NA                -0.7095423   -0.7501912   -0.6688935
Birth       COHORTS          INDIA                          <20                  NA                -0.9844247   -1.1000907   -0.8687586
Birth       COHORTS          INDIA                          >=30                 NA                -0.4891768   -0.5574825   -0.4208712
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.2216166   -0.2710987   -0.1721344
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.4920499   -0.6054764   -0.3786233
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.1722206   -0.2465413   -0.0979000
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.9660341   -1.0622014   -0.8698668
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.5928786   -1.7742785   -1.4114786
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.7844890   -0.9994754   -0.5695027
Birth       IRC              INDIA                          [20-30)              NA                -0.2879974   -0.4642644   -0.1117305
Birth       IRC              INDIA                          <20                  NA                -0.6309772   -1.2823335    0.0203790
Birth       IRC              INDIA                          >=30                 NA                -0.0546347   -0.5395020    0.4302326
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -1.4939975   -1.5199267   -1.4680684
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -1.7224013   -1.7525679   -1.6922347
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -1.5049045   -1.5691302   -1.4406787
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.1040664    0.0095592    0.1985737
Birth       Keneba           GAMBIA                         <20                  NA                -0.3396933   -0.5040597   -0.1753268
Birth       Keneba           GAMBIA                         >=30                 NA                 0.1236462    0.0185532    0.2287392
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -1.0949204   -1.2527319   -0.9371089
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.3044754   -1.6736225   -0.9353284
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -1.0676876   -1.4433727   -0.6920025
Birth       MAL-ED           BRAZIL                         [20-30)              NA                -0.8314634   -1.1601853   -0.5027415
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.0325000   -0.6736983    0.7386983
Birth       MAL-ED           BRAZIL                         >=30                 NA                -0.6318750   -1.2213825   -0.0423675
Birth       MAL-ED           PERU                           [20-30)              NA                -0.8207147   -0.9747472   -0.6666821
Birth       MAL-ED           PERU                           <20                  NA                -1.2124708   -1.4305306   -0.9944110
Birth       MAL-ED           PERU                           >=30                 NA                -0.6345502   -0.9125738   -0.3565266
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.6245132   -0.8997012   -0.3493253
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.7486482   -1.1956223   -0.3016741
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.4242205   -0.8024477   -0.0459932
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.2513889   -1.5042858   -0.9984920
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.9942857   -1.5328498   -0.4557216
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.0302174   -1.4291848   -0.6312500
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9807501   -1.0908226   -0.8706776
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -0.7795407   -1.0335529   -0.5255285
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -0.9019418   -1.0944733   -0.7094104
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.8979981   -0.9838517   -0.8121444
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -0.9834163   -1.1687500   -0.7980825
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -0.8902814   -1.0740443   -0.7065184
Birth       PROBIT           BELARUS                        [20-30)              NA                 1.3140738    1.1493637    1.4787839
Birth       PROBIT           BELARUS                        <20                  NA                 1.0875970    0.9455803    1.2296138
Birth       PROBIT           BELARUS                        >=30                 NA                 1.3885059    1.2062197    1.5707922
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.8496981   -0.9413312   -0.7580649
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.0848170   -1.2843762   -0.8852578
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -0.8569560   -1.0358905   -0.6780214
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -1.4194664   -1.4950721   -1.3438606
Birth       SAS-CompFeed     INDIA                          <20                  NA                -1.5662345   -1.7591111   -1.3733579
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -1.3678809   -1.6047152   -1.1310466
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5084750   -0.5338225   -0.4831274
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5797864   -0.6379277   -0.5216451
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4308353   -0.4885656   -0.3731050
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4483765   -1.6063391   -1.2904139
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -1.2929031   -1.7950561   -0.7907500
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.3432647   -1.7998570   -0.8866724
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -1.7534450   -1.8526700   -1.6542200
6 months    COHORTS          GUATEMALA                      <20                  NA                -1.7493494   -1.9771258   -1.5215730
6 months    COHORTS          GUATEMALA                      >=30                 NA                -1.8906930   -2.0120232   -1.7693627
6 months    COHORTS          INDIA                          [20-30)              NA                -1.0379136   -1.0780609   -0.9977662
6 months    COHORTS          INDIA                          <20                  NA                -1.2521290   -1.3589696   -1.1452884
6 months    COHORTS          INDIA                          >=30                 NA                -0.9900681   -1.0562623   -0.9238738
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -1.0790985   -1.1316331   -1.0265640
6 months    COHORTS          PHILIPPINES                    <20                  NA                -1.2476602   -1.3738554   -1.1214650
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -1.2027190   -1.2809221   -1.1245159
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -1.2908074   -1.3818411   -1.1997737
6 months    GMS-Nepal        NEPAL                          <20                  NA                -1.5661380   -1.7717431   -1.3605329
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -1.1007023   -1.3185236   -0.8828811
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.4908187   -1.6416066   -1.3400307
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -1.7048231   -1.9431526   -1.4664936
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -1.4893277   -1.7422204   -1.2364350
6 months    IRC              INDIA                          [20-30)              NA                -1.2459788   -1.3902236   -1.1017340
6 months    IRC              INDIA                          <20                  NA                -1.3354899   -1.7881779   -0.8828018
6 months    IRC              INDIA                          >=30                 NA                -0.9283455   -1.4872568   -0.3694341
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2534875   -1.2838870   -1.2230880
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -1.3683397   -1.3993944   -1.3372851
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -1.2780399   -1.3510424   -1.2050375
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.8625749   -0.9305590   -0.7945908
6 months    Keneba           GAMBIA                         <20                  NA                -0.8658425   -0.9848857   -0.7467993
6 months    Keneba           GAMBIA                         >=30                 NA                -0.9728435   -1.0513139   -0.8943730
6 months    LCNI-5           MALAWI                         [20-30)              NA                -1.6363816   -1.7430866   -1.5296766
6 months    LCNI-5           MALAWI                         <20                  NA                -1.5740745   -1.7556578   -1.3924912
6 months    LCNI-5           MALAWI                         >=30                 NA                -1.7167574   -1.8572399   -1.5762749
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -1.1175453   -1.2487156   -0.9863749
6 months    MAL-ED           BANGLADESH                     <20                  NA                -1.4908543   -1.8920442   -1.0896644
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -1.1950233   -1.5031051   -0.8869414
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0035873   -0.2213276    0.2285022
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.1641866   -0.1651593    0.4935325
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.0150159   -0.2573054    0.2873371
6 months    MAL-ED           INDIA                          [20-30)              NA                -1.2208024   -1.3591268   -1.0824780
6 months    MAL-ED           INDIA                          <20                  NA                -1.3057192   -1.5849661   -1.0264723
6 months    MAL-ED           INDIA                          >=30                 NA                -0.8958447   -1.2412306   -0.5504588
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.5526126   -0.6730083   -0.4322170
6 months    MAL-ED           NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    MAL-ED           NEPAL                          >=30                 NA                -0.5042391   -0.7921347   -0.2163436
6 months    MAL-ED           PERU                           [20-30)              NA                -1.2993107   -1.4579137   -1.1407077
6 months    MAL-ED           PERU                           <20                  NA                -1.3350535   -1.5488147   -1.1212923
6 months    MAL-ED           PERU                           >=30                 NA                -1.3675055   -1.6233067   -1.1117044
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -1.1351347   -1.3117933   -0.9584760
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                -1.1306649   -1.5149012   -0.7464287
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.9989507   -1.2219911   -0.7759103
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3955792   -1.5751986   -1.2159598
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.6497964   -2.0492846   -1.2503083
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3179319   -1.4986907   -1.1371731
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4258635   -1.5365371   -1.3151899
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -1.2195813   -1.4584163   -0.9807462
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -1.4501340   -1.6390535   -1.2612145
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.1768851   -1.2654223   -1.0883479
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                -1.2302500   -1.4078206   -1.0526795
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -1.2491680   -1.4338439   -1.0644920
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0990133    0.0082500    0.1897765
6 months    PROBIT           BELARUS                        <20                  NA                 0.0099425   -0.1229847    0.1428696
6 months    PROBIT           BELARUS                        >=30                 NA                 0.1305132    0.0134330    0.2475933
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -1.0318803   -1.1209034   -0.9428573
6 months    PROVIDE          BANGLADESH                     <20                  NA                -1.2621581   -1.4935334   -1.0307829
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -1.2028651   -1.3815114   -1.0242189
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -1.3831121   -1.4738197   -1.2924044
6 months    SAS-CompFeed     INDIA                          <20                  NA                -1.3861181   -1.4995567   -1.2726795
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -1.5141344   -1.6669872   -1.3612817
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -1.8708252   -2.0051962   -1.7364542
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -1.7057096   -2.0706013   -1.3408179
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -1.9937790   -2.2503737   -1.7371843
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5722538   -0.6339020   -0.5106056
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5610313   -0.7466289   -0.3754337
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4780021   -0.5706599   -0.3853443
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8513406   -0.8839116   -0.8187696
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                -0.8978622   -0.9650897   -0.8306347
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.8893536   -0.9572286   -0.8214786
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5783130   -2.6906026   -2.4660234
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3049438   -2.6161462   -1.9937413
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.5648780   -2.8586981   -2.2710580
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -3.0006979   -3.0946501   -2.9067457
24 months   COHORTS          GUATEMALA                      <20                  NA                -3.0505043   -3.2224046   -2.8786041
24 months   COHORTS          GUATEMALA                      >=30                 NA                -2.9921770   -3.1065076   -2.8778464
24 months   COHORTS          INDIA                          [20-30)              NA                -2.1937843   -2.2422964   -2.1452722
24 months   COHORTS          INDIA                          <20                  NA                -2.5767195   -2.7049892   -2.4484498
24 months   COHORTS          INDIA                          >=30                 NA                -2.2055014   -2.2856382   -2.1253646
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -2.3781158   -2.4364212   -2.3198105
24 months   COHORTS          PHILIPPINES                    <20                  NA                -2.4871318   -2.6181463   -2.3561172
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -2.4684253   -2.5568999   -2.3799507
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.8939116   -1.9919698   -1.7958533
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.8942255   -2.1421612   -1.6462898
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.6935340   -1.9259022   -1.4611659
24 months   IRC              INDIA                          [20-30)              NA                -1.7917023   -1.8945206   -1.6888840
24 months   IRC              INDIA                          <20                  NA                -1.8909584   -2.1927521   -1.5891647
24 months   IRC              INDIA                          >=30                 NA                -1.7516628   -2.1337257   -1.3695999
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.9706847   -2.0074604   -1.9339090
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -2.0631265   -2.1021916   -2.0240615
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.9735344   -2.0546348   -1.8924340
24 months   Keneba           GAMBIA                         [20-30)              NA                -1.5431892   -1.6155098   -1.4708687
24 months   Keneba           GAMBIA                         <20                  NA                -1.6578339   -1.7829145   -1.5327532
24 months   Keneba           GAMBIA                         >=30                 NA                -1.6000359   -1.6806211   -1.5194506
24 months   LCNI-5           MALAWI                         [20-30)              NA                -1.9444892   -2.0719441   -1.8170344
24 months   LCNI-5           MALAWI                         <20                  NA                -1.8121312   -2.0333918   -1.5908705
24 months   LCNI-5           MALAWI                         >=30                 NA                -1.8718828   -2.0389284   -1.7048373
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -1.8718861   -2.0203800   -1.7233923
24 months   MAL-ED           BANGLADESH                     <20                  NA                -2.2266446   -2.5951465   -1.8581427
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -2.2168267   -2.5603889   -1.8732644
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0191775   -0.2469750    0.2086200
24 months   MAL-ED           BRAZIL                         <20                  NA                -0.0432491   -0.5420789    0.4555806
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.1327915   -0.1994688    0.4650519
24 months   MAL-ED           INDIA                          [20-30)              NA                -1.9389833   -2.0872160   -1.7907507
24 months   MAL-ED           INDIA                          <20                  NA                -1.8045865   -2.0813594   -1.5278137
24 months   MAL-ED           INDIA                          >=30                 NA                -1.6578868   -2.0338962   -1.2818773
24 months   MAL-ED           PERU                           [20-30)              NA                -1.7941398   -2.0000093   -1.5882703
24 months   MAL-ED           PERU                           <20                  NA                -1.8311977   -2.0526830   -1.6097123
24 months   MAL-ED           PERU                           >=30                 NA                -1.6124179   -1.8469064   -1.3779295
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -1.6987634   -1.9092292   -1.4882976
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                -1.5994019   -2.0176510   -1.1811528
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                -1.6082826   -1.8332039   -1.3833613
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7479204   -2.9417835   -2.5540572
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7855556   -3.3723518   -2.1987593
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.5061413   -2.6995868   -2.3126958
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2646754   -2.3891340   -2.1402168
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -1.9260772   -2.2419885   -1.6101658
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -2.2560601   -2.4905594   -2.0215607
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.4460561   -1.5504722   -1.3416400
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -1.4594232   -1.6350030   -1.2838434
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -1.3962507   -1.6288098   -1.1636917
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.1717468   -0.3786089    0.0351153
24 months   PROBIT           BELARUS                        <20                  NA                -0.1224888   -0.7754795    0.5305019
24 months   PROBIT           BELARUS                        >=30                 NA                 0.0004739   -0.3030660    0.3040139
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -1.5670226   -1.6651549   -1.4688903
24 months   PROVIDE          BANGLADESH                     <20                  NA                -1.6028987   -1.8769913   -1.3288061
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -1.7249468   -1.9352765   -1.5146170
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.6050584   -1.6754867   -1.5346302
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.7627001   -1.9475332   -1.5778670
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.5623736   -1.6902090   -1.4345382


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6779343   -0.7109987   -0.6448698
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894137   -1.6086318   -1.5701955
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9312706   -1.0202524   -0.8422889
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4999118   -0.5204765   -0.4793472
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -1.0441293   -1.0769738   -1.0112848
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5617391   -1.6780690   -1.4454093
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3135466   -1.3366721   -1.2904210
6 months    Keneba           GAMBIA                         NA                   NA                -0.9040346   -0.9513522   -0.8567171
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6498804   -1.7271669   -1.5725940
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2016239   -1.3201698   -1.0830780
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4062134   -1.4951703   -1.3172565
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5410317   -0.5901099   -0.4919536
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8672235   -0.8928135   -0.8416336
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          NA                   NA                -2.2182259   -2.2576094   -2.1788424
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0137151   -2.0414318   -1.9859984
24 months   Keneba           GAMBIA                         NA                   NA                -1.5798251   -1.6298520   -1.5297981
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8966105   -1.9881282   -1.8050928
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8901556   -2.0155338   -1.7647773
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2200371   -2.3231580   -2.1169161
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6052656   -1.6623196   -1.5482116


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.4119404   -0.7211095   -0.1027714
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1239800   -0.3151207    0.0671607
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.2748823   -0.3973304   -0.1524343
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.2203655    0.1413704    0.2993606
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.2704333   -0.3936280   -0.1472386
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0493959   -0.0390153    0.1378072
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.6268445   -0.8316329   -0.4220560
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1815451   -0.0541866    0.4172768
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)           -0.3429798   -1.0190247    0.3330651
Birth       IRC              INDIA                          >=30                 [20-30)            0.2333627   -0.2826573    0.7493827
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.2284038   -0.2659842   -0.1908233
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0109069   -0.0780607    0.0562469
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.4437597   -0.6332291   -0.2542904
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0195798   -0.1205902    0.1597497
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2095550   -0.6115292    0.1924192
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0272328   -0.3804280    0.4348936
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.8639634    0.0850064    1.6429205
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.1995884   -0.4753761    0.8745529
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.3917561   -0.6599097   -0.1236026
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.1861645   -0.1319176    0.5042465
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.1241350   -0.6496164    0.4013464
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.2002928   -0.2711885    0.6717740
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2571032   -0.3378826    0.8520890
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2211715   -0.2511968    0.6935398
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2012094   -0.0754421    0.4778608
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0788083   -0.1420700    0.2996866
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0854182   -0.2897396    0.1189032
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0077167   -0.1951344    0.2105678
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           -0.2264767   -0.3441559   -0.1087976
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0744321   -0.0009169    0.1497812
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2351189   -0.4547207   -0.0155171
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0072579   -0.2085543    0.1940385
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)           -0.1467681   -0.3580125    0.0644762
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0515855   -0.1451609    0.2483319
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0713114   -0.1346555   -0.0079673
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0776397    0.0146946    0.1405848
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1554735   -0.3712870    0.6822339
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.1051118   -0.3771048    0.5873284
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.0040956   -0.2444328    0.2526240
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1372480   -0.2940665    0.0195705
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.2142154   -0.3279026   -0.1005283
6 months    COHORTS          INDIA                          >=30                 [20-30)            0.0478455   -0.0284318    0.1241229
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1685617   -0.3042613   -0.0328621
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1236205   -0.2161160   -0.0311249
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2753306   -0.4996489   -0.0510123
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1901051   -0.0439093    0.4241195
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.2140044   -0.4942361    0.0662273
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0014910   -0.2962074    0.2991893
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)           -0.0895111   -0.5646459    0.3856237
6 months    IRC              INDIA                          >=30                 [20-30)            0.3176333   -0.2596226    0.8948892
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1148523   -0.1520042   -0.0777004
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0245525   -0.0990452    0.0499403
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           -0.0032676   -0.1395762    0.1330411
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.1102685   -0.2125285   -0.0080086
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)            0.0623072   -0.1482425    0.2728568
6 months    LCNI-5           MALAWI                         >=30                 [20-30)           -0.0803758   -0.2566004    0.0958489
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3733091   -0.7954807    0.0488626
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0774780   -0.4123360    0.2573800
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)            0.1605992   -0.2393059    0.5605043
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)            0.0114286   -0.3415641    0.3644212
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)           -0.0849168   -0.3963465    0.2265129
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.3249577   -0.0478714    0.6977868
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.8683874   -1.6322474   -0.1045274
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0483735   -0.2636825    0.3604295
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)           -0.0357428   -0.3025400    0.2310545
6 months    MAL-ED           PERU                           >=30                 [20-30)           -0.0681948   -0.3696220    0.2332324
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0044697   -0.4185532    0.4274926
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1361840   -0.1485459    0.4209138
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2542173   -0.6930747    0.1846401
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0776473   -0.1777010    0.3329956
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2062822   -0.0561477    0.4687121
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0242705   -0.2420229    0.1934818
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0533649   -0.2518242    0.1450944
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0722829   -0.2771410    0.1325753
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)           -0.0890708   -0.1664107   -0.0117308
6 months    PROBIT           BELARUS                        >=30                 [20-30)            0.0314999   -0.0293832    0.0923830
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2302778   -0.4782357    0.0176800
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1709848   -0.3707089    0.0287393
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0030060   -0.0966992    0.0906871
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1310224   -0.3021880    0.0401432
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.1651156   -0.2235788    0.5538100
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.1229538   -0.4131150    0.1672073
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0112225   -0.1835367    0.2059818
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0942517   -0.0160362    0.2045396
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0465216   -0.1206945    0.0276514
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0380130   -0.1127681    0.0367422
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2733693   -0.0577030    0.6044415
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0134350   -0.3006158    0.3274857
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0498064   -0.2446868    0.1450740
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0085209   -0.1381908    0.1552327
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.3829352   -0.5202289   -0.2456415
24 months   COHORTS          INDIA                          >=30                 [20-30)           -0.0117171   -0.1049923    0.0815580
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1090159   -0.2524566    0.0344247
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0903095   -0.1962859    0.0156669
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0003139   -0.2666754    0.2660476
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.2003775   -0.0499903    0.4507454
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)           -0.0992561   -0.4181554    0.2196432
24 months   IRC              INDIA                          >=30                 [20-30)            0.0400395   -0.3552922    0.4353712
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0924418   -0.1404422   -0.0444415
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0028497   -0.0867174    0.0810180
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.1146446   -0.2577518    0.0284625
24 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0568466   -0.1625430    0.0488497
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)            0.1323581   -0.1231536    0.3878698
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0726064   -0.1379134    0.2831262
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3547585   -0.7520418    0.0425248
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.3449405   -0.7189873    0.0291062
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0240716   -0.5723048    0.5241616
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.1519691   -0.2526700    0.5566082
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)            0.1343968   -0.1786207    0.4474143
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.2810966   -0.1231313    0.6853244
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           -0.0370579   -0.3391185    0.2650027
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.1817219   -0.1306760    0.4941197
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0993615   -0.3690941    0.5678170
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0904808   -0.2176765    0.3986380
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0376352   -0.6556261    0.5803557
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2417790   -0.0320897    0.5156477
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3385982    0.0000444    0.6771520
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0086153   -0.2529313    0.2701620
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0133671   -0.2165041    0.1897699
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0498054   -0.2044844    0.3040952
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0492580   -0.5395819    0.6380979
24 months   PROBIT           BELARUS                        >=30                 [20-30)            0.1722208   -0.0114299    0.3558714
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0358761   -0.3263512    0.2545991
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1579242   -0.3892021    0.0733538
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1576417   -0.3553390    0.0400556
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0426848   -0.1026356    0.1880052


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -0.1161979   -0.2085120   -0.0238839
Birth       COHORTS          INDIA                          [20-30)              NA                 0.0316081    0.0084010    0.0548152
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.0274326   -0.0597586    0.0048934
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.1191239   -0.1819726   -0.0562753
Birth       IRC              INDIA                          [20-30)              NA                -0.0200438   -0.0935706    0.0534830
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0954161   -0.1132676   -0.0775646
Birth       Keneba           GAMBIA                         [20-30)              NA                -0.0732628   -0.1442148   -0.0023108
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0231748   -0.1152294    0.0688797
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1554634   -0.0636144    0.3745412
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0620750   -0.1826595    0.0585094
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0071941   -0.1915167    0.1771285
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0957889   -0.0895533    0.2811310
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0494795   -0.0119012    0.1108601
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0114965   -0.0638529    0.0408600
Birth       PROBIT           BELARUS                        [20-30)              NA                -0.0026320   -0.0212976    0.0160335
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0354040   -0.0869110    0.0161030
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.0119554   -0.0469911    0.0230804
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0085632   -0.0070503    0.0241767
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0249257   -0.0472960    0.0971475
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0622886   -0.1377087    0.0131314
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0062157   -0.0286521    0.0162207
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0614739   -0.0956981   -0.0272497
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0600318   -0.1199849   -0.0000787
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0709205   -0.1618960    0.0200551
6 months    IRC              INDIA                          [20-30)              NA                 0.0115725   -0.0451932    0.0683383
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0600591   -0.0794380   -0.0406802
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0414597   -0.0908823    0.0079628
6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0134988   -0.0839158    0.0569182
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0874478   -0.1743866   -0.0005090
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0439884   -0.0914668    0.1794437
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0191785   -0.0438265    0.0821834
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0089693   -0.0756683    0.0577297
6 months    MAL-ED           PERU                           [20-30)              NA                -0.0243554   -0.1382698    0.0895591
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0718144   -0.0722808    0.2159097
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0268342   -0.0910484    0.1447168
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0196501   -0.0412973    0.0805975
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0217932   -0.0760207    0.0324343
6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0010059   -0.0140103    0.0119986
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0598112   -0.1089629   -0.0106594
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0187442   -0.0384333    0.0009448
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0278590   -0.1063216    0.0506035
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0312221   -0.0046822    0.0671263
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0158829   -0.0357315    0.0039657
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0194451   -0.0308412    0.0697314
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0101058   -0.0593321    0.0795437
24 months   COHORTS          INDIA                          [20-30)              NA                -0.0244416   -0.0528166    0.0039334
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0359987   -0.0735749    0.0015775
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0064935   -0.0595350    0.0725220
24 months   IRC              INDIA                          [20-30)              NA                -0.0070752   -0.0470160    0.0328655
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0430304   -0.0679029   -0.0181579
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0366358   -0.0891794    0.0159077
24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0478787   -0.0398631    0.1356205
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.1065101   -0.1929111   -0.0201091
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0252919   -0.1204999    0.1710837
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0488278   -0.0141799    0.1118355
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0416688   -0.0969360    0.1802736
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0537039   -0.1096997    0.2171074
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1023596   -0.0247706    0.2294898
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0446383   -0.0225435    0.1118202
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0047915   -0.0553836    0.0649666
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0274577   -0.1510390    0.2059543
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0353995   -0.0893999    0.0186008
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0002072   -0.0418460    0.0414316
