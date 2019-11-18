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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     222  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     222  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        55     222  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm            32      64  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             20      64  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        12      64  haz              
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            12      43  haz              
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             20      43  haz              
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        11      43  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             6      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             13      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         8      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            48     226  haz              
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            131     226  haz              
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        47     226  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm            80     101  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             10     101  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        11     101  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            72     122  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     122  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        29     122  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           467    1135  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm            385    1135  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       283    1135  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           111     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm            356     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       141     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           110     517  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm            286     517  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       121     517  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     729  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            418     729  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       177     729  haz              
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1187    1431  haz              
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1431  haz              
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       193    1431  haz              
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13206   13729  haz              
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            125   13729  haz              
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       398   13729  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7732    9705  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            560    9705  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1413    9705  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           110     840  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            545     840  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     840  haz              
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           530    1774  haz              
Birth       ki1135781-COHORTS          INDIA                          <151 cm            763    1774  haz              
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       481    1774  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           630    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1545    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       875    3050  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3317   22356  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          13436   22356  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      5603   22356  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           510    1228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       297    1228  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            74     379  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       103     379  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            330     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     603  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996  haz              
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877  haz              
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877  haz              
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12533   13033  haz              
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13033  haz              
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       379   13033  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5888    7394  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            445    7394  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1061    7394  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     943  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            629     943  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     943  haz              
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819  haz              
6 months    ki1135781-COHORTS          INDIA                          <151 cm            790    1819  haz              
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       488    1819  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           561    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       779    2708  haz              
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836  haz              
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836  haz              
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2660   16761  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9797   16761  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4304   16761  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     234  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            77     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     577  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1338    1602  haz              
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1602  haz              
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1602  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3859    4005  haz              
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             35    4005  haz              
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       111    4005  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1084    1374  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             98    1374  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       192    1374  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           126     994  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            659     994  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       209     994  haz              
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           552    1819  haz              
24 months   ki1135781-COHORTS          INDIA                          <151 cm            785    1819  haz              
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       482    1819  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           510    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1234    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       701    2445  haz              
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           355     577  haz              
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             95     577  haz              
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       127     577  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1314    8599  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5067    8599  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2218    8599  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/43987ec6-0aa3-4efd-ac0f-733d038a1117/cdcffb72-3982-4076-b003-6e032dda6828/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/43987ec6-0aa3-4efd-ac0f-733d038a1117/cdcffb72-3982-4076-b003-6e032dda6828/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/43987ec6-0aa3-4efd-ac0f-733d038a1117/cdcffb72-3982-4076-b003-6e032dda6828/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8705782   -1.4222623   -0.3188942
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.2062622   -1.3706079   -1.0419166
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8256137   -1.0684440   -0.5827835
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.4230667   -0.6870007   -0.1591327
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -1.1562217   -1.7985845   -0.5138589
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -1.0609454   -1.8964770   -0.2254138
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.3056628   -1.9970647   -0.6142609
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.5915140   -1.9956829   -1.1873450
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.2017269   -1.8490462   -0.5544076
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.3616667   -0.9392632    0.2159299
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.0115385   -1.4603724   -0.5627046
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.9650000   -1.7501399   -0.1798601
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4817554   -0.7447613   -0.2187496
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.0208291   -1.1785975   -0.8630607
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.9194709   -1.1436889   -0.6952529
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.4859255   -0.6998463   -0.2720047
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.1408621   -2.2110732   -0.0706510
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2916985   -1.6017856   -0.9816115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.0127885   -1.3038603   -0.7217167
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.4328034   -1.7840482   -1.0815586
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.1916804   -1.7255134   -0.6578474
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1549350   -1.2883677   -1.0215022
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7469022   -1.8703341   -1.6234703
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.5139478   -1.6821758   -1.3457199
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5594069   -0.7649017   -0.3539122
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.0672293   -1.1824723   -0.9519864
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8721888   -1.0616269   -0.6827507
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6494841   -0.8253287   -0.4736394
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.0516207   -1.1505269   -0.9527144
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.7706699   -0.9250269   -0.6163128
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.6260139   -0.8230010   -0.4290268
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.0331666   -1.1207787   -0.9455546
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.8356034   -0.9832579   -0.6879488
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.1050829    0.0339801    0.1761857
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3303313   -0.7734907    0.1128281
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.1822653   -0.3693801    0.0048495
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 1.3399210    1.1799898    1.4998522
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                 1.0085884    0.9059920    1.1111849
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 1.0120435    0.8148895    1.2091974
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4377356   -0.4651183   -0.4103530
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.6978865   -0.8056149   -0.5901581
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6029627   -0.6646102   -0.5413152
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.5408192    0.3002549    0.7813834
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0266403   -0.1265842    0.0733036
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.4105705    0.2159423    0.6051987
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2702371   -0.3658371   -0.1746371
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.8358136   -0.9150975   -0.7565298
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5823618   -0.6815561   -0.4831674
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0789810    0.0008071    0.1571548
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.4349147   -0.4907020   -0.3791274
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1523258   -0.2237664   -0.0808852
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1387503   -1.1826053   -1.0948953
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.7669080   -1.7894251   -1.7443910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.4316698   -1.4653994   -1.3979401
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9099104   -1.2278201   -0.5920007
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3700977   -1.5229750   -1.2172203
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9054339   -1.0944654   -0.7164025
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1722507   -0.0181041    0.3626055
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.3019014   -0.5372121   -0.0665906
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1826089   -0.2005595    0.5657772
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9051444   -1.1169811   -0.6933077
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4684359   -1.6499478   -1.2869239
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0365874   -1.2372960   -0.8358787
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0149533   -0.2002484    0.2301549
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7832291   -0.9308981   -0.6355601
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4054373   -0.6180234   -0.1928512
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.1041605   -1.3248396   -0.8834813
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4496548   -1.6000296   -1.2992800
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2050894   -1.4251812   -0.9849976
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9669889   -1.1126331   -0.8213447
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5442461   -1.9615090   -1.1269833
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.3364180   -1.6743150   -0.9985209
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1860059   -1.3349010   -1.0371109
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8678903   -2.1650536   -1.5707270
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4800515   -1.7384443   -1.2216587
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.0874404   -1.1652226   -1.0096583
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7704062   -1.9070800   -1.6337324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4776081   -1.6889540   -1.2662622
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.3954712   -1.6223911   -1.1685513
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1387171   -2.2833772   -1.9940569
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7457325   -1.9769239   -1.5145410
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9230768   -1.1356063   -0.7105474
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6593383   -1.7705402   -1.5481365
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1465431   -1.3284007   -0.9646854
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6763840   -0.8479457   -0.5048224
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2829188   -1.3803873   -1.1854503
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.0129404   -1.1586874   -0.8671935
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8843457   -1.0486442   -0.7200473
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3533485   -1.4450379   -1.2616592
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0850547   -1.2322856   -0.9378238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3458846   -0.4079164   -0.2838528
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9671059   -1.0827709   -0.8514409
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7913771   -0.8926244   -0.6901298
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8400940   -0.8933095   -0.7868785
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4919744   -1.7695535   -1.2143953
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2481202   -1.3844955   -1.1117450
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3094438   -1.6506634   -0.9682242
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6476694   -1.8150270   -1.4803118
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4957321   -1.7517711   -1.2396931
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1331732    0.0398537    0.2264927
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.4907825   -0.5832461   -0.3983190
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.2618458   -0.3870670   -0.1366247
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.7890149   -0.8195447   -0.7584850
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5486937   -1.6580341   -1.4393533
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1036808   -1.1721377   -1.0352239
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2369562   -1.4403448   -1.0335677
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9789669   -2.0608110   -1.8971229
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.5994983   -1.7356125   -1.4633840
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4922421   -0.5861220   -0.3983622
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2353113   -1.3134986   -1.1571239
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9097194   -1.0039269   -0.8155119
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7129255   -0.8027001   -0.6231508
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3801099   -1.4379062   -1.3223136
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0160778   -1.0916014   -0.9405542
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4663664   -1.5541878   -1.3785451
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.2092798   -2.3797606   -2.0387990
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.8117102   -1.9487084   -1.6747120
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7344295   -0.7809831   -0.6878760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.5526489   -1.5784468   -1.5268510
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1290271   -1.1658019   -1.0922524
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.4373486   -1.7394987   -1.1351985
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.2021056   -2.3569672   -2.0472441
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.5795645   -1.8063274   -1.3528017
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0746635   -0.1631635    0.3124905
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0508802   -0.3371431    0.2353827
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.1363083   -0.5832983    0.3106817
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4490201   -1.7175523   -1.1804879
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1457573   -2.3344493   -1.9570652
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.7839240   -1.9740728   -1.5937751
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7549302   -0.9839739   -0.5258864
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5804838   -1.7294192   -1.4315484
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.1086102   -1.3453940   -0.8718264
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.2825418   -1.5476557   -1.0174278
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9596509   -2.1142102   -1.8050916
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6404454   -1.8824056   -1.3984852
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5535084   -1.7058276   -1.4011891
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.8622271   -2.2923289   -1.4321253
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8073533   -2.2140501   -1.4006565
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4244256   -2.5917845   -2.2570668
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1717381   -3.4584169   -2.8850594
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7290550   -3.0177087   -2.4404012
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5126038   -1.7554150   -1.2697926
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.5105740   -2.6332679   -2.3878802
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9886220   -2.1923775   -1.7848666
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1703663   -1.3612206   -0.9795119
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.8173084   -1.9240617   -1.7105551
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.5211934   -1.6967090   -1.3456779
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9163756   -1.0784229   -0.7543283
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6468339   -1.7586513   -1.5350164
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3903934   -1.5521719   -1.2286148
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.5042036   -1.5608987   -1.4475086
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.3470889   -2.5903998   -2.1037781
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8500470   -1.9853869   -1.7147072
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1074529   -0.4145488    0.1996430
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.5199020   -1.6174231   -1.4223809
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5607628   -0.8229321   -0.2985936
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4756265   -1.5443837   -1.4068694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2567872   -2.4678045   -2.0457698
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9592393   -2.1259543   -1.7925243
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.3868473   -2.5873306   -2.1863640
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.1409511   -3.2184787   -3.0634235
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9380499   -3.0825698   -2.7935299
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.5324136   -1.6296517   -1.4351755
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.4196126   -2.4963997   -2.3428254
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -2.1105241   -2.2103834   -2.0106648
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9442462   -2.0396355   -1.8488568
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6846759   -2.7459135   -2.6234383
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2719101   -2.3536250   -2.1901952
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6687158   -1.7663982   -1.5710334
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4113942   -2.6317981   -2.1909903
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0966308   -2.2584926   -1.9347689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.4380326   -1.4978960   -1.3781692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.2523428   -2.2840032   -2.2206825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8100378   -1.8558196   -1.7642559


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5707921   -0.7685593   -0.3730248
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4438150   -1.5337502   -1.3538797
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0474004   -0.0188757    0.1136765
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3274390    1.1683164    1.4865616
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4765410   -0.5009545   -0.4521274
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5893474   -1.6086366   -1.5700581
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8882058   -1.9998264   -1.7765852
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424553   -0.5916933   -0.4932174
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9159303   -0.9650776   -0.8667830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5599206   -1.6885363   -1.4313049
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1157811    0.0226850    0.2088772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8803077   -0.9076731   -0.8529423
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8116225   -1.8800533   -1.7431916
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9254151   -0.9779952   -0.8728349
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3139055   -1.3370256   -1.2907854
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5829641   -1.6348134   -1.5311148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5981623   -1.6603107   -1.5360139
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9963380   -3.0630990   -2.9295770
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0710720   -2.1255079   -2.0166362
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.3356840   -0.9113557    0.2399876
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0449645   -0.5576199    0.6475489
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.7331550   -1.4408878   -0.0254221
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.6378787   -1.5209137    0.2451563
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.2858512   -1.0927780    0.5210757
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.1039359   -0.8581787    1.0660505
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.6498718   -1.3813563    0.0816128
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.6033333   -1.5780448    0.3713782
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.5390737   -0.8451966   -0.2329507
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.4377155   -0.7851696   -0.0902613
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.6549366   -1.7483210    0.4384478
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.8057730   -1.1849109   -0.4266351
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.4200149   -0.8832991    0.0432693
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1788919   -0.7875247    0.4297408
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.5919672   -0.7394678   -0.4444666
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3590128   -0.6230130   -0.0950127
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.5078224   -0.7437706   -0.2718742
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.3127818   -0.5936994   -0.0318643
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.4021366   -0.6035486   -0.2007246
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1211858   -0.3544692    0.1120977
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4071527   -0.6233485   -0.1909569
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2095895   -0.4557624    0.0365835
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.4354142   -0.8844339    0.0136055
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2873482   -0.4879327   -0.0867636
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3313325   -0.4978013   -0.1648637
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3278775   -0.4517948   -0.2039602
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2601509   -0.3713334   -0.1489684
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1652271   -0.2326899   -0.0977642
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5674595   -0.8280504   -0.3068685
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1302487   -0.4399600    0.1794626
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.5655765   -0.6899221   -0.4412309
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3121247   -0.4497404   -0.1745089
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5138957   -0.6098865   -0.4179049
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2313068   -0.3371356   -0.1254780
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6281577   -0.6761569   -0.5801586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2929195   -0.3452715   -0.2405675
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.4601872   -0.8133796   -0.1069948
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0044765   -0.3656007    0.3745537
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4741521   -0.7767383   -0.1715659
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0103582   -0.4178566    0.4385729
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5632915   -0.8435666   -0.2830163
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1314430   -0.4239389    0.1610529
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7981824   -1.0598029   -0.5365618
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.4203905   -0.7231714   -0.1176097
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3454943   -0.6128439   -0.0781448
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1009289   -0.4127717    0.2109139
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5772572   -1.0198736   -0.1346409
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3694291   -0.7377597   -0.0010984
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6818844   -1.0149441   -0.3488247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2940456   -0.5923071    0.0042159
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.6829658   -0.8030114   -0.5629202
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3901677   -0.6273099   -0.1530254
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7432458   -1.0128856   -0.4736061
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3502612   -0.6745746   -0.0259479
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7362615   -0.9764160   -0.4961070
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2234662   -0.5047871    0.0578546
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6065347   -0.8039580   -0.4091115
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3365564   -0.5615935   -0.1115194
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4690028   -0.6571912   -0.2808145
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2007090   -0.4210501    0.0196322
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6212213   -0.7525900   -0.4898527
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4454925   -0.5642428   -0.3267423
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6518804   -0.9345972   -0.3691637
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4080263   -0.5544315   -0.2616210
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3382256   -0.7190096    0.0425585
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1862883   -0.6136526    0.2410760
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6239557   -0.7305789   -0.5173325
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3950190   -0.5152760   -0.2747620
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7596788   -0.8732172   -0.6461405
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3146659   -0.3896523   -0.2396796
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7420107   -0.9612763   -0.5227451
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3625420   -0.6073066   -0.1177775
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.7430692   -0.8652772   -0.6208612
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4174773   -0.5505389   -0.2844157
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6671844   -0.7739616   -0.5604073
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3031523   -0.4205708   -0.1857339
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7429134   -0.9349549   -0.5508718
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3453438   -0.5076401   -0.1830474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8182194   -0.8681325   -0.7683062
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3945976   -0.4521123   -0.3370830
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.7647571   -1.1044811   -0.4250330
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1422160   -0.5191346    0.2347027
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1255437   -0.4987719    0.2476844
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2109718   -0.7190747    0.2971310
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6967371   -1.0249468   -0.3685274
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.3349039   -0.6641139   -0.0056939
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8255536   -1.0989911   -0.5521162
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3536801   -0.6835015   -0.0238586
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.6771091   -0.9836311   -0.3705871
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3579037   -0.7179469    0.0021396
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3087187   -0.7646455    0.1472080
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2538449   -0.6891957    0.1815058
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7473125   -1.0789207   -0.4157043
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3046293   -0.6392407    0.0299820
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9979702   -1.2707070   -0.7252335
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4760183   -0.7929831   -0.1590534
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6469421   -0.8661229   -0.4277614
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3508272   -0.6112151   -0.0904393
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.7304582   -0.9274943   -0.5334221
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4740178   -0.7031539   -0.2448816
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8428853   -1.0929362   -0.5928344
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3458434   -0.4925727   -0.1991141
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.4124491   -1.7531982   -1.0717000
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4533099   -0.8528122   -0.0538076
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7811606   -1.0032464   -0.5590749
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4836128   -0.6641612   -0.3030643
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7541038   -0.9691883   -0.5390192
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5512025   -0.7981643   -0.3042408
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8871990   -1.0110599   -0.7633381
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5781105   -0.7174498   -0.4387713
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7404297   -0.8538267   -0.6270327
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3276639   -0.4532832   -0.2020446
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7426785   -0.9839266   -0.5014303
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4279150   -0.6170756   -0.2387544
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8143103   -0.8787342   -0.7498864
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3720052   -0.4479533   -0.2960571


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2073047   -0.7255206    0.3109113
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.2653708   -0.5540191    0.0232775
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0754302   -0.4830056    0.6338661
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4916667   -1.0510427    0.0677093
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4233773   -0.6553923   -0.1913623
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0848666   -0.1994235    0.0296903
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1236869   -0.3040832    0.0567094
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2888800   -0.3730255   -0.2047344
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3716128   -0.5595337   -0.1836919
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.2430304   -0.3968539   -0.0892070
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2829024   -0.4565192   -0.1092857
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0576825   -0.0907167   -0.0246482
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0124820   -0.0166735   -0.0082904
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0388053   -0.0511334   -0.0264773
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.4072953   -0.6312613   -0.1833294
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3270853   -0.4078215   -0.2463492
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3280301   -0.3994307   -0.2566296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4505971   -0.4905289   -0.4106653
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2950827   -0.6040845    0.0139192
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1246749   -0.2486329   -0.0007169
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3008130   -0.4970862   -0.1045399
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5765352   -0.7863658   -0.3667046
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2199419   -0.4218792   -0.0180045
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1057554   -0.1850363   -0.0264745
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1827390   -0.2867198   -0.0787582
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.3194488   -0.3662980   -0.2725996
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4927346   -0.7034341   -0.2820351
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4843052   -0.6792318   -0.2893787
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4131461   -0.5652501   -0.2610422
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3143326   -0.4630147   -0.1656505
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1965708   -0.2350938   -0.1580478
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0758364   -0.0986534   -0.0530193
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2504768   -0.5638488    0.0628952
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0173921   -0.0214271   -0.0133570
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0912928   -0.1053705   -0.0772152
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5746663   -0.7639311   -0.3854014
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4331730   -0.5128603   -0.3534856
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4276469   -0.5083772   -0.3469167
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1914087   -0.2479107   -0.1349066
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5794760   -0.6207153   -0.5382366
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.5410477   -0.8387540   -0.2433413
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0685491   -0.2197243    0.0826261
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4354489   -0.6734534   -0.1974444
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5526576   -0.7752944   -0.3300208
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4699292   -0.7027662   -0.2370922
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0897146   -0.1687858   -0.0106433
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2211351   -0.3372477   -0.1050225
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.7064541   -0.9277729   -0.4851353
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4298937   -0.6002675   -0.2595199
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.5248890   -0.6771855   -0.3725924
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0787605   -0.1020039   -0.0555170
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0247652   -0.0369687   -0.0125616
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1225358   -0.1565861   -0.0884855
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6094907   -0.7953316   -0.4236498
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5386584   -0.6203867   -0.4569301
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4698683   -0.5556023   -0.3841344
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2164662   -0.2837159   -0.1492165
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5757307   -0.6301984   -0.5212630
