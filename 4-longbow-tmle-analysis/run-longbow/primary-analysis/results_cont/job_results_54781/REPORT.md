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

agecat      studyid                    country                        mage       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       160     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            30     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           41     231  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)        41      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             8      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           16      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)        37      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          <20             8      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          >=30            2      47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)        22      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            5      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       114     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           <20            66     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           >=30           53     233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        67     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            23     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           33     123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        72     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             7     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           46     125  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        79      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             9      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      92  haz              
Birth       ki1000108-IRC              INDIA                          [20-30)       325     388  haz              
Birth       ki1000108-IRC              INDIA                          <20            35     388  haz              
Birth       ki1000108-IRC              INDIA                          >=30           28     388  haz              
Birth       ki1000109-EE               PAKISTAN                       [20-30)        94     239  haz              
Birth       ki1000109-EE               PAKISTAN                       <20             1     239  haz              
Birth       ki1000109-EE               PAKISTAN                       >=30          144     239  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       953    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20           161    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30          138    1252  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)       410     606  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20            70     606  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30          126     606  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)       371     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20            67     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30          101     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       483     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20           130     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30          119     732  haz              
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       705    1543  haz              
Birth       ki1101329-Keneba           GAMBIA                         <20           238    1543  haz              
Birth       ki1101329-Keneba           GAMBIA                         >=30          600    1543  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)       446     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          <20           149     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30          101     696  haz              
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9940   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        <20          1408   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        >=30         2542   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      9299   13835  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2205   13835  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2331   13835  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       405     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      <20           121     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          326     852  haz              
Birth       ki1135781-COHORTS          INDIA                          [20-30)      3180    4715  haz              
Birth       ki1135781-COHORTS          INDIA                          <20           368    4715  haz              
Birth       ki1135781-COHORTS          INDIA                          >=30         1167    4715  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1821    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           378    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          851    3050  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)     10853   22444  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          9472   22444  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         2119   22444  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       165     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20            35     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           41     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       125     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <20            37     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30           47     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)       179     234  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <20            34     234  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=30           21     234  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       185     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <20             5     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=30           46     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           [20-30)       136     273  haz              
6 months    ki0047075b-MAL-ED          PERU                           <20            76     273  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=30           61     273  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       118     254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            42     254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           94     254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            15     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          104     247  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       293     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     369  haz              
6 months    ki1000108-IRC              INDIA                          [20-30)       342     407  haz              
6 months    ki1000108-IRC              INDIA                          <20            36     407  haz              
6 months    ki1000108-IRC              INDIA                          >=30           29     407  haz              
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     371  haz              
6 months    ki1000109-EE               PAKISTAN                       <20             1     371  haz              
6 months    ki1000109-EE               PAKISTAN                       >=30          211     371  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1017    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1336  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       261     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           83     380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       424     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            66     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          114     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012  haz              
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080  haz              
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080  haz              
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       371     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     564  haz              
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11316   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=30         2825   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5738    8653  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1315    8653  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1600    8653  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       470     961  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     961  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          373     961  haz              
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3331    4904  haz              
6 months    ki1135781-COHORTS          INDIA                          <20           371    4904  haz              
6 months    ki1135781-COHORTS          INDIA                          >=30         1202    4904  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1601    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          776    2708  haz              
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669  haz              
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669  haz              
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7679   16805  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7905   16805  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1221   16805  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       146     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            29     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       102     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       172     225  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <20            33     225  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     225  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           [20-30)        98     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           <20            55     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=30           48     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       106     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           92     214  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       295     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            34     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           42     371  haz              
24 months   ki1000108-IRC              INDIA                          [20-30)       343     409  haz              
24 months   ki1000108-IRC              INDIA                          <20            37     409  haz              
24 months   ki1000108-IRC              INDIA                          >=30           29     409  haz              
24 months   ki1000109-EE               PAKISTAN                       [20-30)        65     167  haz              
24 months   ki1000109-EE               PAKISTAN                       <20             1     167  haz              
24 months   ki1000109-EE               PAKISTAN                       >=30          101     167  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       289     427  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     427  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     427  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          105     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       790    1714  haz              
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1714  haz              
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1714  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       318     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            94     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           76     488  haz              
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2893    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        <20           369    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=30          773    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      1101    1638  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           219    1638  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          318    1638  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       527    1064  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      <20           152    1064  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          385    1064  haz              
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2463    3692  haz              
24 months   ki1135781-COHORTS          INDIA                          <20           247    3692  haz              
24 months   ki1135781-COHORTS          INDIA                          >=30          982    3692  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1460    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           292    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          693    2445  haz              
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       250     475  haz              
24 months   ki1148112-LCNI-5           MALAWI                         <20            80     475  haz              
24 months   ki1148112-LCNI-5           MALAWI                         >=30          145     475  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4058    8627  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3855    8627  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          714    8627  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/53a7b599-2aee-47f7-b842-ba26c7e13447/35734df5-424a-419c-af7f-2fc5dd27d923/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/53a7b599-2aee-47f7-b842-ba26c7e13447/35734df5-424a-419c-af7f-2fc5dd27d923/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/53a7b599-2aee-47f7-b842-ba26c7e13447/35734df5-424a-419c-af7f-2fc5dd27d923/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.0897202   -1.2482442   -0.9311962
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.3115784   -1.6930155   -0.9301413
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.0901454   -1.4711471   -0.7091438
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.8314634   -1.1601853   -0.5027415
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0325000   -0.6736983    0.7386983
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.6318750   -1.2213825   -0.0423675
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.8190594   -0.9744034   -0.6637154
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -1.2290283   -1.4487433   -1.0093133
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.6045914   -0.8899221   -0.3192607
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.6037036   -0.8727476   -0.3346595
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.5944268   -1.0387034   -0.1501503
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.2822890   -0.6424398    0.0778619
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.2513889   -1.5042858   -0.9984920
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.9942857   -1.5328498   -0.4557216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.0302174   -1.4291848   -0.6312500
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.2944615   -0.4694031   -0.1195200
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.6917143   -1.3023032   -0.0811254
Birth       ki1000108-IRC              INDIA                          >=30                 NA                 0.0139286   -0.4512765    0.4791336
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.4182115   -1.4943392   -1.3420837
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.5338485   -1.7134643   -1.3542326
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.3433865   -1.5663586   -1.1204145
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9770144   -1.0867664   -0.8672625
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.8524525   -1.1252473   -0.5796577
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.8673497   -1.0550946   -0.6796049
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8541121   -0.9454641   -0.7627600
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.1021647   -1.2941309   -0.9101985
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.8546923   -1.0341241   -0.6752604
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.9006006   -0.9868011   -0.8144001
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.9697226   -1.1595370   -0.7799082
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.8890103   -1.0674593   -0.7105614
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0974866    0.0038045    0.1911686
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.3271564   -0.4908115   -0.1635013
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                 0.1158880    0.0091920    0.2225839
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.9573807   -1.0526701   -0.8620913
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.5511326   -1.7298576   -1.3724076
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.9473493   -1.1561020   -0.7385966
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 1.3324567    1.1700667    1.4948467
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                 1.1067604    0.9534077    1.2601131
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                 1.4102659    1.2352946    1.5852372
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.4973842   -0.5223624   -0.4724059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5729785   -0.6272945   -0.5186624
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4649875   -0.5177284   -0.4122467
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2265199    0.1077131    0.3453268
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.1127966   -0.3529796    0.1273863
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.1166400   -0.0254861    0.2587662
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6912599   -0.7317545   -0.6507653
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.9871641   -1.1004163   -0.8739118
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.5434486   -0.6102475   -0.4766497
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2167909   -0.2659814   -0.1676005
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5169932   -0.6287310   -0.4052553
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1967323   -0.2705376   -0.1229270
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.4888173   -1.5136549   -1.4639797
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.7207882   -1.7475924   -1.6939839
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.5180610   -1.5774507   -1.4586713
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.1213276   -1.2528690   -0.9897862
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.5613905   -1.9362484   -1.1865325
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.2189199   -1.5270793   -0.9107604
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0101986   -0.2075790    0.2279762
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.1326928   -0.1868707    0.4522562
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0068553   -0.2878944    0.3016051
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.2269620   -1.3662533   -1.0876706
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.2735630   -1.5693031   -0.9778229
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.8673833   -1.1843976   -0.5503691
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.5526126   -0.6730083   -0.4322170
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.5042391   -0.7921347   -0.2163436
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.3039735   -1.4601731   -1.1477739
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -1.2948479   -1.4976762   -1.0920196
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.3811838   -1.6344068   -1.1279608
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.1185218   -1.2991657   -0.9378780
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.1467700   -1.5376660   -0.7558741
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.9699317   -1.1909950   -0.7488684
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3899514   -1.5707975   -1.2091053
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.5325947   -1.9251338   -1.1400555
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3180269   -1.4978124   -1.1382414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4358703   -1.5939347   -1.2778060
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -1.3034848   -1.7510472   -0.8559225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.4308915   -1.8644840   -0.9972989
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -1.2454678   -1.3893168   -1.1016189
6 months    ki1000108-IRC              INDIA                          <20                  NA                -1.3291204   -1.7465122   -0.9117286
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.9863793   -1.4834112   -0.4893474
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.3735106   -1.4626282   -1.2843929
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.3809290   -1.4941688   -1.2676893
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.6059604   -1.7545926   -1.4573281
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -1.8823105   -2.0167086   -1.7479125
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -1.8799624   -2.2348622   -1.5250625
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -2.0781012   -2.3324049   -1.8237975
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4256803   -1.5361087   -1.3152519
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.2548481   -1.4978864   -1.0118099
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.4685941   -1.6523725   -1.2848157
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.0354751   -1.1237631   -0.9471872
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.2584319   -1.4836401   -1.0332237
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.2396842   -1.4044166   -1.0749519
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.1821011   -1.2698702   -1.0943319
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.2020448   -1.3705448   -1.0335449
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2623780   -1.4482321   -1.0765239
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5730993   -0.6346180   -0.5115806
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5511901   -0.7359971   -0.3663831
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4716046   -0.5636236   -0.3795856
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.8627862   -0.9309489   -0.7946236
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.8717190   -0.9887875   -0.7546505
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.9693353   -1.0473826   -0.8912881
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.5040416   -1.6546028   -1.3534804
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -1.8647981   -2.1126477   -1.6169485
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -1.5592587   -1.8152624   -1.3032550
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.2768528   -1.3673726   -1.1863330
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.4910278   -1.6833889   -1.2986667
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.4254917   -1.6550987   -1.1958848
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1148147    0.0224130    0.2072163
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0420111   -0.1990213    0.1149990
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.1694427    0.0594909    0.2793944
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8415949   -0.8730845   -0.8101052
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9100780   -0.9742422   -0.8459137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.9182560   -0.9795815   -0.8569306
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.7720811   -1.8684715   -1.6756906
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.7547006   -1.9675927   -1.5418085
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -1.8832783   -1.9960823   -1.7704742
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -1.0063794   -1.0462503   -0.9665084
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -1.2800829   -1.3841782   -1.1759876
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -1.0759089   -1.1443149   -1.0075030
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -1.0698292   -1.1223431   -1.0173152
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -1.2515916   -1.3745420   -1.1286411
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -1.2323692   -1.3117895   -1.1529489
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.6379438   -1.7441853   -1.5317022
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.5572252   -1.7345831   -1.3798673
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.7193664   -1.8611124   -1.5776203
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2490998   -1.2787060   -1.2194936
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3735542   -1.4024832   -1.3446252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3304715   -1.3998514   -1.2610917
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.8774217   -2.0288309   -1.7260125
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -2.1109016   -2.4374752   -1.7843280
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -2.2874365   -2.6393291   -1.9355440
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0227729   -0.2067741    0.2523199
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0517765   -0.5607419    0.4571889
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0708241   -0.3963496    0.2547013
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.9360297   -2.0854469   -1.7866126
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.8065938   -2.0647650   -1.5484226
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -1.6251529   -1.9605825   -1.2897233
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.8028599   -2.0065660   -1.5991537
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -1.8041982   -2.0211692   -1.5872272
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.6103562   -1.8320284   -1.3886840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.6924632   -1.8937203   -1.4912062
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.5481178   -1.9395153   -1.1567204
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.6083169   -1.8268430   -1.3897908
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7479204   -2.9417835   -2.5540572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7855556   -3.3723518   -2.1987593
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.5061413   -2.6995868   -2.3126958
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5726497   -2.6845209   -2.4607785
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3255882   -2.6502470   -2.0009295
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.6509127   -2.9357594   -2.3660660
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -1.7936200   -1.8964136   -1.6908264
24 months   ki1000108-IRC              INDIA                          <20                  NA                -1.8915766   -2.1934891   -1.5896641
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -1.7413793   -2.0799764   -1.4027822
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2523091   -2.3792380   -2.1253803
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.9302673   -2.2126540   -1.6478806
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -2.2584124   -2.4721122   -2.0447125
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.5701369   -1.6685971   -1.4716768
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.6289061   -1.8911445   -1.3666677
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.7401914   -1.9387350   -1.5416478
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.4443380   -1.5487800   -1.3398960
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.4621117   -1.6413895   -1.2828339
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.3997464   -1.6241370   -1.1753557
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.5395822   -1.6118526   -1.4673118
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -1.6724433   -1.7981451   -1.5467414
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.5974222   -1.6781759   -1.5166685
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.8809699   -1.9798231   -1.7821167
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.8459575   -2.0790610   -1.6128541
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.9210005   -2.1460474   -1.6959535
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.1556935   -0.3689896    0.0576027
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2498603   -1.4303136    0.9305931
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0204603   -0.2970094    0.3379300
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.5857338   -1.6548509   -1.5166167
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.6987517   -1.8678132   -1.5296903
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.6368102   -1.7607728   -1.5128476
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -3.0097283   -3.1027028   -2.9167538
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -3.0308682   -3.2033501   -2.8583862
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -2.9742973   -3.0833776   -2.8652170
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -2.1492312   -2.1971245   -2.1013379
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -2.5628601   -2.6889053   -2.4368148
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -2.3085486   -2.3879162   -2.2291811
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -2.3677347   -2.4257747   -2.3096946
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -2.4774660   -2.6010456   -2.3538864
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -2.4835365   -2.5714637   -2.3956094
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.9433854   -2.0709383   -1.8158325
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.8033884   -2.0179105   -1.5888664
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.8901767   -2.0578144   -1.7225390
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.9703001   -2.0052070   -1.9353932
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -2.0499700   -2.0866068   -2.0133332
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -2.0664659   -2.1508781   -1.9820537


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9312706   -1.0202524   -0.8422889
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4999118   -0.5204765   -0.4793472
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5894137   -1.6086318   -1.5701955
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2016239   -1.3201698   -1.0830780
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8672235   -0.8928135   -0.8416336
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8901556   -2.0155338   -1.7647773
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2200371   -2.3231580   -2.1169161
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5798251   -1.6298520   -1.5297981
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6052656   -1.6623196   -1.5482116
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2182259   -2.2576094   -2.1788424
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8966105   -1.9881282   -1.8050928
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137151   -2.0414318   -1.9859984


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2218582   -0.6348843    0.1911680
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0004252   -0.4140516    0.4132012
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.8639634    0.0850064    1.6429205
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.1995884   -0.4753761    0.8745529
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.4099689   -0.6820688   -0.1378690
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.2144680   -0.1093582    0.5382942
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0092767   -0.5127736    0.5313270
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.3214146   -0.1336988    0.7765280
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2571032   -0.3378826    0.8520890
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2211715   -0.2511968    0.6935398
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)           -0.3972527   -1.0324089    0.2379034
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.3083901   -0.1886213    0.8054015
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.1156370   -0.3219953    0.0907213
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0748249   -0.1089175    0.2585674
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1245619   -0.1696276    0.4187515
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1096647   -0.1072622    0.3265916
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2480526   -0.4606166   -0.0354886
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0005802   -0.2019888    0.2008285
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0691220   -0.2777163    0.1394723
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0115903   -0.1866061    0.2097867
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.4246430   -0.6130217   -0.2362642
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0184014   -0.1225594    0.1593622
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.5937519   -0.7962016   -0.3913021
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0100314   -0.2193179    0.2393807
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.2256963   -0.3468496   -0.1045430
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0778093    0.0028532    0.1527653
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0755943   -0.1352951   -0.0158935
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0323966   -0.0258597    0.0906530
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.3393166   -0.6058882   -0.0727450
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1098799   -0.2932462    0.0734864
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2959042   -0.4161159   -0.1756924
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.1478113    0.0699111    0.2257115
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.3002022   -0.4218130   -0.1785914
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0200586   -0.0678264    0.1079437
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.2319709   -0.2655815   -0.1983602
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0292437   -0.0916234    0.0331360
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.4400628   -0.8375194   -0.0426063
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0975923   -0.4333010    0.2381165
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.1224941   -0.2662340    0.5112223
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0033433   -0.3688576    0.3621711
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0466010   -0.3734122    0.2802101
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3595786    0.0131161    0.7060412
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.8683874   -1.6322474   -0.1045274
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0483735   -0.2636825    0.3604295
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0091256   -0.2452023    0.2634535
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0772103   -0.3744310    0.2200105
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0282482   -0.4588999    0.4024034
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1485901   -0.1369731    0.4341534
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1426432   -0.5754276    0.2901411
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0719245   -0.1831455    0.3269946
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1323855   -0.3422685    0.6070394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0049788   -0.4565261    0.4664838
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0836525   -0.5251369    0.3578318
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2590885   -0.2583409    0.7765180
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0074185   -0.1023976    0.0875606
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.2324498   -0.3934528   -0.0714468
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0023482   -0.3774965    0.3821929
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.1957906   -0.4842958    0.0927146
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1708322   -0.0954595    0.4371238
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0429138   -0.2564767    0.1706491
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2229568   -0.4640973    0.0181838
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.2042091   -0.3893332   -0.0190851
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0199437   -0.2099663    0.1700789
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0802769   -0.2849595    0.1244058
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0219092   -0.1719713    0.2157897
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1014947   -0.0081335    0.2111229
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0089327   -0.1435599    0.1256944
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.1065491   -0.2085785   -0.0045196
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.3607565   -0.6508757   -0.0706373
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.0552171   -0.3527171    0.2422829
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2141750   -0.4267913   -0.0015588
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1486389   -0.3950950    0.0978172
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.1568258   -0.2599480   -0.0537036
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0546280   -0.0085658    0.1178218
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0684831   -0.1394263    0.0024601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0766612   -0.1450708   -0.0082516
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0173805   -0.2163163    0.2510772
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1111972   -0.2596188    0.0372244
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2737035   -0.3850946   -0.1623125
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0695296   -0.1485016    0.0094425
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1817624   -0.3145006   -0.0490242
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1625400   -0.2562072   -0.0688728
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0807186   -0.1252049    0.2866420
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0814226   -0.2571843    0.0943391
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.1244544   -0.1592926   -0.0896162
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0813717   -0.1515154   -0.0112281
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2334799   -0.5911552    0.1241954
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.4100148   -0.7900989   -0.0299307
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0745494   -0.6341695    0.4850708
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0935970   -0.4916930    0.3044990
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1294360   -0.1660370    0.4249089
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3108768   -0.0560313    0.6777850
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0013384   -0.2980728    0.2953960
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1925037   -0.1073109    0.4923183
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.1443454   -0.2967963    0.5854871
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0841463   -0.2117434    0.3800360
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0376352   -0.6556261    0.5803557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2417790   -0.0320897    0.5156477
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2470615   -0.0963311    0.5904541
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0782630   -0.3842904    0.2277645
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0979566   -0.4168887    0.2209756
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0522407   -0.3016160    0.4060974
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3220418    0.0137162    0.6303675
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0061032   -0.2524263    0.2402198
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0587691   -0.3383331    0.2207949
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1700545   -0.3918246    0.0517156
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0177737   -0.2247248    0.1891774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0445917   -0.2025246    0.2917079
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1328611   -0.2765010    0.0107789
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0578400   -0.1634748    0.0477948
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0350124   -0.2183359    0.2883606
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0400306   -0.2857973    0.2057362
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0941668   -1.2335857    1.0452521
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.1761538   -0.0161990    0.3685066
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1130179   -0.2951534    0.0691175
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0510764   -0.1912470    0.0890943
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0211399   -0.2169023    0.1746226
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0354310   -0.1077487    0.1786106
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.4136289   -0.5482488   -0.2790089
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1593174   -0.2515594   -0.0670755
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1097313   -0.2462391    0.0267764
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1158019   -0.2211455   -0.0104582
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.1399970   -0.1098489    0.3898429
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0532087   -0.1577268    0.2641442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0796699   -0.1244969   -0.0348429
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0961658   -0.1826721   -0.0096595


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0283750   -0.1213219    0.0645718
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1554634   -0.0636144    0.3745412
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0637303   -0.1858133    0.0583527
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0280038   -0.2094115    0.1534039
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0957889   -0.0895533    0.2811310
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0135797   -0.0855186    0.0583592
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0132103   -0.0488036    0.0223831
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0457438   -0.0146808    0.1061684
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0309900   -0.0818704    0.0198905
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0088939   -0.0612561    0.0434682
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0666829   -0.1371305    0.0037646
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.1277773   -0.1899203   -0.0656344
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0055121   -0.0244557    0.0134315
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0025277   -0.0172452    0.0121898
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0967899   -0.1856431   -0.0079367
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0133256   -0.0096046    0.0362559
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0322582   -0.0643031   -0.0002134
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.1005964   -0.1171640   -0.0840287
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0836655   -0.1704690    0.0031381
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0373771   -0.0902164    0.1649707
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0253380   -0.0374900    0.0881661
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0089693   -0.0756683    0.0577297
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0196925   -0.1306630    0.0912780
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0552016   -0.0912522    0.2016555
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0212065   -0.0967203    0.1391332
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0124195   -0.0598970    0.0847361
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0110616   -0.0454626    0.0675858
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0283457   -0.0464294   -0.0102620
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0163737   -0.0956364    0.0628890
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0194669   -0.0416245    0.0805583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0562164   -0.1033129   -0.0091199
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0165772   -0.0701796    0.0370252
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0320676   -0.0037738    0.0679090
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0412484   -0.0908031    0.0083063
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0576975   -0.1483270    0.0329319
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0739865   -0.1337634   -0.0142095
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0078161   -0.0231775    0.0075453
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0256287   -0.0437297   -0.0075276
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0436525   -0.1158312    0.0285261
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0377499   -0.0601366   -0.0153632
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0707432   -0.1050649   -0.0364215
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0119366   -0.0813945    0.0575212
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0644468   -0.0826352   -0.0462584
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1009745   -0.1876426   -0.0143064
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0166585   -0.1627324    0.1294154
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0458742   -0.0142531    0.1060015
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0503889   -0.0861894    0.1869671
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0474037   -0.1056671    0.2004745
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1023596   -0.0247706    0.2294898
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0137818   -0.0363540    0.0639176
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0051575   -0.0452480    0.0349331
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0322720   -0.0361113    0.1006554
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0322852   -0.0866014    0.0220310
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0030734   -0.0574123    0.0635592
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0402429   -0.0927217    0.0122359
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0064481   -0.0723502    0.0594539
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0242887   -0.1529487    0.2015261
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0195318   -0.0588223    0.0197588
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0191362   -0.0493122    0.0875846
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0689947   -0.0965596   -0.0414298
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0463799   -0.0835982   -0.0091615
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0467749   -0.0408344    0.1343842
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0434150   -0.0661864   -0.0206435
