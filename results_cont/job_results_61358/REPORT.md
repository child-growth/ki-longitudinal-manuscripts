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
![](/tmp/a19c6bd5-8d18-4c84-bc81-0688fd9ef7cf/4b176f69-3e66-4749-85af-6b422ffe5d63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a19c6bd5-8d18-4c84-bc81-0688fd9ef7cf/4b176f69-3e66-4749-85af-6b422ffe5d63/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a19c6bd5-8d18-4c84-bc81-0688fd9ef7cf/4b176f69-3e66-4749-85af-6b422ffe5d63/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.2397609    0.1185176    0.3610042
Birth       COHORTS          GUATEMALA                      <20                  NA                -0.1841527   -0.4475987    0.0792933
Birth       COHORTS          GUATEMALA                      >=30                 NA                 0.0897936   -0.0677502    0.2473375
Birth       COHORTS          INDIA                          [20-30)              NA                -0.7077747   -0.7485192   -0.6670301
Birth       COHORTS          INDIA                          <20                  NA                -0.9923725   -1.1093037   -0.8754414
Birth       COHORTS          INDIA                          >=30                 NA                -0.5039248   -0.5696578   -0.4381917
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.2215875   -0.2712752   -0.1718998
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.5012901   -0.6140757   -0.3885046
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.1739233   -0.2477691   -0.1000774
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.9632194   -1.0592019   -0.8672369
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.5884974   -1.7728305   -1.4041644
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.7610962   -0.9727616   -0.5494308
Birth       IRC              INDIA                          [20-30)              NA                -0.2919487   -0.4679414   -0.1159559
Birth       IRC              INDIA                          <20                  NA                -0.6174336   -1.2539880    0.0191208
Birth       IRC              INDIA                          >=30                 NA                -0.0682124   -0.5706025    0.4341778
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -1.4909374   -1.5167930   -1.4650817
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -1.7214008   -1.7517148   -1.6910868
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -1.5024960   -1.5662056   -1.4387865
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.1001387    0.0060448    0.1942326
Birth       Keneba           GAMBIA                         <20                  NA                -0.3385713   -0.5049362   -0.1722065
Birth       Keneba           GAMBIA                         >=30                 NA                 0.1169841    0.0102280    0.2237402
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -1.0914240   -1.2489108   -0.9339371
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.2731454   -1.6484967   -0.8977942
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -1.0947016   -1.4665955   -0.7228077
Birth       MAL-ED           BRAZIL                         [20-30)              NA                -0.8314634   -1.1601853   -0.5027415
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.0325000   -0.6736983    0.7386983
Birth       MAL-ED           BRAZIL                         >=30                 NA                -0.6318750   -1.2213825   -0.0423675
Birth       MAL-ED           PERU                           [20-30)              NA                -0.8086969   -0.9682771   -0.6491167
Birth       MAL-ED           PERU                           <20                  NA                -1.2408379   -1.4582555   -1.0234204
Birth       MAL-ED           PERU                           >=30                 NA                -0.6190031   -0.9005284   -0.3374777
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.6131724   -0.8847523   -0.3415925
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.7331588   -1.1801597   -0.2861580
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.3799283   -0.7636636    0.0038070
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.2513889   -1.5042858   -0.9984920
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.9942857   -1.5328498   -0.4557216
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.0302174   -1.4291848   -0.6312500
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9735728   -1.0830025   -0.8641431
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -0.7891074   -1.0477154   -0.5304993
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -0.9317146   -1.1179687   -0.7454606
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.8976942   -0.9836202   -0.8117682
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -0.9187111   -1.1087030   -0.7287192
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -0.9203497   -1.1054868   -0.7352126
Birth       PROBIT           BELARUS                        [20-30)              NA                 1.3165167    1.1515847    1.4814487
Birth       PROBIT           BELARUS                        <20                  NA                 1.0900614    0.9431566    1.2369663
Birth       PROBIT           BELARUS                        >=30                 NA                 1.3793205    1.1971275    1.5615135
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.8557108   -0.9472592   -0.7641624
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.0472994   -1.2569835   -0.8376153
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -0.8963634   -1.0715349   -0.7211919
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -1.4194664   -1.4950721   -1.3438606
Birth       SAS-CompFeed     INDIA                          <20                  NA                -1.5662345   -1.7591111   -1.3733579
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -1.3678809   -1.6047152   -1.1310466
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5095485   -0.5349215   -0.4841755
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5657611   -0.6246283   -0.5068940
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4338035   -0.4909286   -0.3766784
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4482040   -1.6057036   -1.2907045
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -1.2883023   -1.7820197   -0.7945848
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.3423334   -1.7805522   -0.9041146
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -1.7621940   -1.8625765   -1.6618114
6 months    COHORTS          GUATEMALA                      <20                  NA                -1.7145660   -1.9323911   -1.4967410
6 months    COHORTS          GUATEMALA                      >=30                 NA                -1.8698760   -1.9908688   -1.7488833
6 months    COHORTS          INDIA                          [20-30)              NA                -1.0351507   -1.0750237   -0.9952778
6 months    COHORTS          INDIA                          <20                  NA                -1.2739045   -1.3782904   -1.1695186
6 months    COHORTS          INDIA                          >=30                 NA                -0.9896225   -1.0563529   -0.9228921
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -1.0814076   -1.1337856   -1.0290295
6 months    COHORTS          PHILIPPINES                    <20                  NA                -1.2349445   -1.3601591   -1.1097299
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -1.1954096   -1.2735841   -1.1172350
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -1.2938523   -1.3852677   -1.2024369
6 months    GMS-Nepal        NEPAL                          <20                  NA                -1.5743921   -1.7773276   -1.3714565
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -1.0970258   -1.3108435   -0.8832080
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.4945734   -1.6455014   -1.3436454
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -1.7357306   -1.9902141   -1.4812471
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -1.4653655   -1.7246147   -1.2061162
6 months    IRC              INDIA                          [20-30)              NA                -1.2453272   -1.3899060   -1.1007483
6 months    IRC              INDIA                          <20                  NA                -1.3455612   -1.8488113   -0.8423110
6 months    IRC              INDIA                          >=30                 NA                -0.9522774   -1.5173476   -0.3872072
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2531360   -1.2834580   -1.2228140
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -1.3707966   -1.4017034   -1.3398899
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -1.3017564   -1.3767578   -1.2267551
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.8622360   -0.9301632   -0.7943089
6 months    Keneba           GAMBIA                         <20                  NA                -0.8803631   -1.0010643   -0.7596619
6 months    Keneba           GAMBIA                         >=30                 NA                -0.9767523   -1.0544975   -0.8990072
6 months    LCNI-5           MALAWI                         [20-30)              NA                -1.6400614   -1.7471290   -1.5329938
6 months    LCNI-5           MALAWI                         <20                  NA                -1.5669712   -1.7517850   -1.3821574
6 months    LCNI-5           MALAWI                         >=30                 NA                -1.7129588   -1.8524541   -1.5734635
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -1.1230281   -1.2540127   -0.9920436
6 months    MAL-ED           BANGLADESH                     <20                  NA                -1.5160185   -1.9250824   -1.1069546
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -1.2152390   -1.5263735   -0.9041046
6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0095732   -0.2282897    0.2091432
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.1585718   -0.1831058    0.5002494
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.0159522   -0.2468174    0.2787217
6 months    MAL-ED           INDIA                          [20-30)              NA                -1.2288551   -1.3688252   -1.0888851
6 months    MAL-ED           INDIA                          <20                  NA                -1.2618331   -1.5461500   -0.9775163
6 months    MAL-ED           INDIA                          >=30                 NA                -0.8746789   -1.1889154   -0.5604425
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.5526126   -0.6730083   -0.4322170
6 months    MAL-ED           NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    MAL-ED           NEPAL                          >=30                 NA                -0.5042391   -0.7921347   -0.2163436
6 months    MAL-ED           PERU                           [20-30)              NA                -1.2969397   -1.4547320   -1.1391474
6 months    MAL-ED           PERU                           <20                  NA                -1.3417398   -1.5554777   -1.1280020
6 months    MAL-ED           PERU                           >=30                 NA                -1.3682298   -1.6236424   -1.1128172
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -1.1376649   -1.3086317   -0.9666981
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                -1.1510809   -1.5483219   -0.7538398
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.9943294   -1.2111478   -0.7775110
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3933014   -1.5736537   -1.2129491
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.4616841   -1.8453315   -1.0780367
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3066597   -1.4861142   -1.1272052
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4294801   -1.5399027   -1.3190574
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -1.1939890   -1.4418177   -0.9461603
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -1.4427911   -1.6298594   -1.2557227
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.1815137   -1.2691556   -1.0938718
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                -1.2238840   -1.3946241   -1.0531439
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -1.2271528   -1.4005398   -1.0537657
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0981564    0.0076810    0.1886318
6 months    PROBIT           BELARUS                        <20                  NA                 0.0013487   -0.1328789    0.1355764
6 months    PROBIT           BELARUS                        >=30                 NA                 0.1280703    0.0109468    0.2451938
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -1.0325011   -1.1218199   -0.9431823
6 months    PROVIDE          BANGLADESH                     <20                  NA                -1.2407819   -1.4670118   -1.0145520
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -1.2104960   -1.3936148   -1.0273772
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -1.3831121   -1.4738197   -1.2924044
6 months    SAS-CompFeed     INDIA                          <20                  NA                -1.3861181   -1.4995567   -1.2726795
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -1.5141344   -1.6669872   -1.3612817
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -1.8760502   -2.0107399   -1.7413606
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -1.7714757   -2.1638438   -1.3791076
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -2.0449732   -2.3057010   -1.7842454
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5752536   -0.6367412   -0.5137660
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5550832   -0.7420152   -0.3681511
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4617173   -0.5552971   -0.3681376
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8511318   -0.8835672   -0.8186965
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                -0.8983781   -0.9670461   -0.8297101
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.8914392   -0.9595306   -0.8233478
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5757807   -2.6879509   -2.4636106
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -2.2804953   -2.6040454   -1.9569452
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.5966106   -2.8911100   -2.3021112
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -3.0129944   -3.1069475   -2.9190413
24 months   COHORTS          GUATEMALA                      <20                  NA                -3.0219439   -3.1991288   -2.8447590
24 months   COHORTS          GUATEMALA                      >=30                 NA                -2.9894686   -3.1058794   -2.8730577
24 months   COHORTS          INDIA                          [20-30)              NA                -2.1929321   -2.2415663   -2.1442979
24 months   COHORTS          INDIA                          <20                  NA                -2.5928242   -2.7220971   -2.4635513
24 months   COHORTS          INDIA                          >=30                 NA                -2.2082047   -2.2887103   -2.1276991
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -2.3787818   -2.4370651   -2.3204985
24 months   COHORTS          PHILIPPINES                    <20                  NA                -2.4851324   -2.6147330   -2.3555318
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -2.4634491   -2.5522219   -2.3746764
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.8938055   -1.9920535   -1.7955574
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.9029344   -2.1542825   -1.6515863
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.7343583   -1.9722336   -1.4964831
24 months   IRC              INDIA                          [20-30)              NA                -1.7942013   -1.8970071   -1.6913955
24 months   IRC              INDIA                          <20                  NA                -1.8827878   -2.1879157   -1.5776599
24 months   IRC              INDIA                          >=30                 NA                -1.7459968   -2.1556312   -1.3363624
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.9699703   -2.0062873   -1.9336532
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -2.0663284   -2.1058036   -2.0268532
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.9746454   -2.0587145   -1.8905763
24 months   Keneba           GAMBIA                         [20-30)              NA                -1.5400703   -1.6122244   -1.4679162
24 months   Keneba           GAMBIA                         <20                  NA                -1.6566793   -1.7799847   -1.5333739
24 months   Keneba           GAMBIA                         >=30                 NA                -1.6036818   -1.6846392   -1.5227244
24 months   LCNI-5           MALAWI                         [20-30)              NA                -1.9375146   -2.0661358   -1.8088934
24 months   LCNI-5           MALAWI                         <20                  NA                -1.7946860   -2.0206979   -1.5686742
24 months   LCNI-5           MALAWI                         >=30                 NA                -1.8801340   -2.0461212   -1.7141469
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -1.8790515   -2.0290256   -1.7290773
24 months   MAL-ED           BANGLADESH                     <20                  NA                -2.1582127   -2.4847371   -1.8316882
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -2.2139783   -2.5410372   -1.8869194
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0084079   -0.2367923    0.2199765
24 months   MAL-ED           BRAZIL                         <20                  NA                -0.0404898   -0.5516717    0.4706922
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.0918569   -0.2418578    0.4255715
24 months   MAL-ED           INDIA                          [20-30)              NA                -1.9421906   -2.0919074   -1.7924738
24 months   MAL-ED           INDIA                          <20                  NA                -1.8017270   -2.0744903   -1.5289637
24 months   MAL-ED           INDIA                          >=30                 NA                -1.5959103   -1.9247546   -1.2670661
24 months   MAL-ED           PERU                           [20-30)              NA                -1.8129743   -2.0199346   -1.6060141
24 months   MAL-ED           PERU                           <20                  NA                -1.8034007   -2.0404900   -1.5663113
24 months   MAL-ED           PERU                           >=30                 NA                -1.6201519   -1.8541778   -1.3861261
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -1.6801229   -1.8888612   -1.4713845
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                -1.6017531   -2.0015585   -1.2019476
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                -1.6245333   -1.8484653   -1.4006014
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7479204   -2.9417835   -2.5540572
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7855556   -3.3723518   -2.1987593
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.5061413   -2.6995868   -2.3126958
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2573415   -2.3834711   -2.1312120
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -1.9248286   -2.2315602   -1.6180969
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -2.2449133   -2.4701776   -2.0196490
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.4503277   -1.5547079   -1.3459475
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -1.4591812   -1.6381120   -1.2802503
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -1.3854748   -1.6119326   -1.1590171
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.1658825   -0.3704590    0.0386941
24 months   PROBIT           BELARUS                        <20                  NA                -0.1259514   -0.7941914    0.5422885
24 months   PROBIT           BELARUS                        >=30                 NA                -0.0125618   -0.3264877    0.3013640
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -1.5746660   -1.6727668   -1.4765652
24 months   PROVIDE          BANGLADESH                     <20                  NA                -1.5611474   -1.8402921   -1.2820027
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -1.7410805   -1.9413005   -1.5408605
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.6014020   -1.6729173   -1.5298866
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.7595149   -1.9459280   -1.5731019
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.5503531   -1.6852405   -1.4154657


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
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.4239136   -0.7139367   -0.1338905
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1499673   -0.3487525    0.0488179
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.2845979   -0.4083391   -0.1608566
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.2038499    0.1269955    0.2807043
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.2797026   -0.4024242   -0.1569811
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0476643   -0.0404681    0.1357967
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.6252780   -0.8323638   -0.4181923
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.2021232   -0.0301091    0.4343555
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)           -0.3254849   -0.9868154    0.3358455
Birth       IRC              INDIA                          >=30                 [20-30)            0.2237363   -0.3086052    0.7560778
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.2304634   -0.2680025   -0.1929243
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0115586   -0.0779141    0.0547968
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.4387101   -0.6295062   -0.2479139
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0168454   -0.1243183    0.1580091
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.1817215   -0.5883926    0.2249497
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0032776   -0.4080064    0.4014511
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.8639634    0.0850064    1.6429205
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.1995884   -0.4753761    0.8745529
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.4321410   -0.7037986   -0.1604834
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.1896939   -0.1337289    0.5131166
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.1199865   -0.6469266    0.4069537
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.2332441   -0.2369803    0.7034684
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2571032   -0.3378826    0.8520890
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2211715   -0.2511968    0.6935398
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1844654   -0.0961503    0.4650812
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0418582   -0.1737121    0.2574284
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0210169   -0.2297343    0.1877005
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0226555   -0.2270834    0.1817725
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           -0.2264553   -0.3487953   -0.1041152
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0628038   -0.0145066    0.1401142
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.1915886   -0.4198503    0.0366731
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0406526   -0.2368642    0.1555590
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)           -0.1467681   -0.3580125    0.0644762
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0515855   -0.1451609    0.2483319
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0562126   -0.1202261    0.0078009
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0757450    0.0133374    0.1381526
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1599018   -0.3591499    0.6789535
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.1058706   -0.3588084    0.5705497
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.0476279   -0.1923254    0.2875812
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1076821   -0.2650605    0.0496964
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.2387538   -0.3500155   -0.1274920
6 months    COHORTS          INDIA                          >=30                 [20-30)            0.0455283   -0.0310506    0.1221071
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1535369   -0.2884341   -0.0186398
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1140020   -0.2064357   -0.0215684
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2805398   -0.5025728   -0.0585067
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1968265   -0.0338943    0.4275474
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.2411572   -0.5377654    0.0554510
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0292079   -0.2715781    0.3299939
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)           -0.1002340   -0.6236923    0.4232242
6 months    IRC              INDIA                          >=30                 [20-30)            0.2930498   -0.2901330    0.8762325
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1176606   -0.1546980   -0.0806233
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0486204   -0.1249529    0.0277120
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           -0.0181271   -0.1558526    0.1195985
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.1145163   -0.2161689   -0.0128637
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)            0.0730902   -0.1405030    0.2866833
6 months    LCNI-5           MALAWI                         >=30                 [20-30)           -0.0728974   -0.2488407    0.1030458
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3929904   -0.8229812    0.0370004
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0922109   -0.4300688    0.2456470
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)            0.1681450   -0.2388940    0.5751841
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)            0.0255254   -0.3156142    0.3666650
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)           -0.0329780   -0.3498047    0.2838486
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.3541762    0.0097154    0.6986370
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.8683874   -1.6322474   -0.1045274
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0483735   -0.2636825    0.3604295
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)           -0.0448001   -0.3107359    0.2211357
6 months    MAL-ED           PERU                           >=30                 [20-30)           -0.0712901   -0.3718104    0.2292302
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.0134160   -0.4466672    0.4198353
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1433355   -0.1338056    0.4204767
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0683828   -0.4918119    0.3550463
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0866417   -0.1679035    0.3411868
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2354911   -0.0350377    0.5060199
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0133110   -0.2290366    0.2024146
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0423703   -0.2336731    0.1489325
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0456391   -0.2392765    0.1479983
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)           -0.0968077   -0.1772531   -0.0163623
6 months    PROBIT           BELARUS                        >=30                 [20-30)            0.0299139   -0.0300918    0.0899195
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2082808   -0.4516345    0.0350729
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1779949   -0.3819044    0.0259146
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0030060   -0.0966992    0.0906871
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1310224   -0.3021880    0.0401432
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.1045745   -0.3103143    0.5194634
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.1689230   -0.4625485    0.1247025
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0201705   -0.1757777    0.2161186
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1135363    0.0026151    0.2244574
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0472463   -0.1226693    0.0281768
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0403074   -0.1152032    0.0345884
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2952854   -0.0469778    0.6375486
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0208298   -0.3351798    0.2935202
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0089495   -0.2087088    0.1908098
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0235258   -0.1251802    0.1722319
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.3998921   -0.5381434   -0.2616407
24 months   COHORTS          INDIA                          >=30                 [20-30)           -0.0152726   -0.1088744    0.0783291
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1063506   -0.2484562    0.0357551
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0846673   -0.1908601    0.0215255
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0091289   -0.2784957    0.2602378
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1594471   -0.0961722    0.4150665
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)           -0.0885866   -0.4103024    0.2331293
24 months   IRC              INDIA                          >=30                 [20-30)            0.0482045   -0.3740556    0.4704646
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0963581   -0.1445818   -0.0481345
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0046751   -0.0909302    0.0815799
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.1166090   -0.2581272    0.0249093
24 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0636115   -0.1694017    0.0421787
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)            0.1428286   -0.1174871    0.4031443
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0573806   -0.1528032    0.2675643
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2791612   -0.6378437    0.0795213
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.3349269   -0.6924303    0.0225765
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0320819   -0.5915983    0.5274345
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.1002648   -0.3037464    0.5042759
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)            0.1404636   -0.1706375    0.4515647
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.3462803   -0.0151728    0.7077333
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)            0.0095737   -0.3058415    0.3249888
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.1928224   -0.1202921    0.5059369
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0783698   -0.3740792    0.5308187
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0555895   -0.2504648    0.3616438
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0376352   -0.6556261    0.5803557
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2417790   -0.0320897    0.5156477
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3325130    0.0026516    0.6623743
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0124282   -0.2427452    0.2676017
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0088534   -0.2152447    0.1975379
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0648529   -0.1833898    0.3130956
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0399310   -0.5613090    0.6411711
24 months   PROBIT           BELARUS                        >=30                 [20-30)            0.1533206   -0.0373492    0.3439905
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0135186   -0.2811531    0.3081903
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1664145   -0.3861965    0.0533676
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1581130   -0.3577166    0.0414907
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0510489   -0.1013996    0.2034973


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -0.1100309   -0.2027470   -0.0173148
Birth       COHORTS          INDIA                          [20-30)              NA                 0.0298404    0.0065220    0.0531588
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.0274617   -0.0599432    0.0050199
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.1219386   -0.1845326   -0.0593447
Birth       IRC              INDIA                          [20-30)              NA                -0.0160926   -0.0890670    0.0568819
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0984763   -0.1162404   -0.0807121
Birth       Keneba           GAMBIA                         [20-30)              NA                -0.0693351   -0.1400231    0.0013529
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0266713   -0.1194408    0.0660983
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1554634   -0.0636144    0.3745412
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0740928   -0.1983448    0.0501593
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0185349   -0.1981704    0.1611005
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0957889   -0.0895533    0.2811310
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0423022   -0.0184115    0.1030159
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0118003   -0.0642042    0.0406035
Birth       PROBIT           BELARUS                        [20-30)              NA                -0.0050750   -0.0241224    0.0139724
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0293913   -0.0799970    0.0212145
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.0119554   -0.0469911    0.0230804
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0096367   -0.0059903    0.0252636
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0247533   -0.0476169    0.0971235
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0535396   -0.1303145    0.0232352
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0089785   -0.0311893    0.0132323
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0591648   -0.0933510   -0.0249787
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0569869   -0.1171528    0.0031789
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0671658   -0.1578372    0.0235056
6 months    IRC              INDIA                          [20-30)              NA                 0.0109209   -0.0458029    0.0676448
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0604106   -0.0797327   -0.0410884
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0417986   -0.0911105    0.0075133
6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0098190   -0.0806467    0.0610087
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0819649   -0.1682916    0.0043618
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0571490   -0.0724060    0.1867040
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0272312   -0.0367760    0.0912384
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0089693   -0.0756683    0.0577297
6 months    MAL-ED           PERU                           [20-30)              NA                -0.0267264   -0.1397761    0.0863234
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0743447   -0.0658989    0.2145883
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0245564   -0.0931235    0.1422364
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0232667   -0.0375955    0.0841288
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0171646   -0.0706948    0.0363655
6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0001490   -0.0132534    0.0129554
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0591904   -0.1086639   -0.0097169
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0187442   -0.0384333    0.0009448
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0226340   -0.1011272    0.0558593
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0342219   -0.0016982    0.0701420
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0160917   -0.0357184    0.0035350
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0169128   -0.0330503    0.0668759
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0224023   -0.0471855    0.0919901
24 months   COHORTS          INDIA                          [20-30)              NA                -0.0252938   -0.0537310    0.0031434
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0353327   -0.0728811    0.0022158
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0063874   -0.0595205    0.0722953
24 months   IRC              INDIA                          [20-30)              NA                -0.0045762   -0.0444442    0.0352917
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0437448   -0.0683675   -0.0191221
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0397548   -0.0921620    0.0126525
24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0409041   -0.0475235    0.1293317
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0993447   -0.1847772   -0.0139122
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0145223   -0.1302026    0.1592472
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0520351   -0.0110350    0.1151051
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0605034   -0.0802454    0.2012521
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0350633   -0.1257969    0.1959235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1023596   -0.0247706    0.2294898
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0373045   -0.0303872    0.1049961
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0090631   -0.0513138    0.0694401
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0215933   -0.1462600    0.1894466
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0277561   -0.0808919    0.0253796
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0038636   -0.0465374    0.0388102
