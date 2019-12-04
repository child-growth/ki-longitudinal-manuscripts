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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     209  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134     209  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        54     209  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm            32      61  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             19      61  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        10      61  whz              
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            11      41  whz              
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             19      41  whz              
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        11      41  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             6      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             13      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         7      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            47     221  whz              
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            127     221  whz              
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        47     221  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm            80     100  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              9     100  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        11     100  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            67     113  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     113  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        25     113  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           432     992  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm            319     992  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       241     992  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           107     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm            333     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       135     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           108     510  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm            281     510  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       121     510  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129     704  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            404     704  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       171     704  whz              
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1135    1362  whz              
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             46    1362  whz              
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       181    1362  whz              
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13149   13670  whz              
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            124   13670  whz              
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       397   13670  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9060  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            499    9060  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9060  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           103     748  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            484     748  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       161     748  whz              
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508    1676  whz              
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712    1676  whz              
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456    1676  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2966   17936  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          10259   17936  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4711   17936  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           509    1226  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1226  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       296    1226  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            75     379  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       102     379  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            329     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     602  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995  whz              
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877  whz              
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877  whz              
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12531   13030  whz              
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13030  whz              
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       378   13030  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            440    7270  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     946  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            632     946  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     946  whz              
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819  whz              
6 months    ki1135781-COHORTS          INDIA                          <151 cm            791    1819  whz              
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       487    1819  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           560    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       778    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836  whz              
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836  whz              
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2651   16734  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9787   16734  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4296   16734  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     234  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            76     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            316     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     578  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339    1603  whz              
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1603  whz              
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1603  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3798    3942  whz              
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             34    3942  whz              
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       110    3942  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           267     367  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     367  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           128    1006  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            668    1006  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       210    1006  whz              
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           549    1803  whz              
24 months   ki1135781-COHORTS          INDIA                          <151 cm            776    1803  whz              
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       478    1803  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           507    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1239    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       703    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           345     561  whz              
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             92     561  whz              
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       124     561  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1305    8570  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5052    8570  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2213    8570  whz              


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
![](/tmp/cff58d87-f258-4253-a670-9b79f4694d3d/54b9938f-c113-43f2-a5fa-a0e25e12e36c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cff58d87-f258-4253-a670-9b79f4694d3d/54b9938f-c113-43f2-a5fa-a0e25e12e36c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cff58d87-f258-4253-a670-9b79f4694d3d/54b9938f-c113-43f2-a5fa-a0e25e12e36c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9636151   -1.3552364   -0.5719939
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.9804886   -1.1633963   -0.7975808
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8717111   -1.2024590   -0.5409632
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.3004352   -0.0985832    0.6994536
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.4993163   -0.1091225    1.1077551
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.4793900   -0.5727806    1.5315606
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.1300180   -1.7247167   -0.5353193
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.9381322   -1.4498031   -0.4264614
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9827933   -1.3940641   -0.5715225
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1715836   -0.4299103    0.0867432
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0411341   -0.2151230    0.1328548
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1117421   -0.1541448    0.3776289
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6607579    0.3854885    0.9360273
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.0933945    0.7154284    1.4713606
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.8635869    0.4661343    1.2610395
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6301142   -0.8746517   -0.3855766
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7309327   -0.8889605   -0.5729048
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6821027   -0.8209775   -0.5432279
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.3964599   -1.6104421   -1.1824777
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4147805   -1.5438046   -1.2857564
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1396776   -1.3172585   -0.9620968
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.2393194   -1.4145002   -1.0641386
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.3410537   -1.4446767   -1.2374308
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.2706721   -1.4362071   -1.1051370
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -1.1840089   -1.3809260   -0.9870918
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.2895248   -1.4030136   -1.1760361
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.2385758   -1.4060196   -1.0711320
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.2191892   -1.2895384   -1.1488400
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.5444284   -1.9439767   -1.1448801
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2862829   -1.4773451   -1.0952206
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -1.1411759   -1.3531427   -0.9292090
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.2564646   -1.3339439   -1.1789852
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -1.1861743   -1.3892687   -0.9830799
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4496571   -0.4840257   -0.4152885
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.7936628   -0.9321265   -0.6551990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6050174   -0.6853441   -0.5246907
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.3957199   -1.6531121   -1.1383277
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.0150473   -1.1416543   -0.8884404
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9887927   -1.2125588   -0.7650267
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.0522990   -1.1593980   -0.9451999
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.0007134   -1.0867815   -0.9146453
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.8619242   -0.9711693   -0.7526791
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7465909   -0.8463599   -0.6468220
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7397523   -0.8052457   -0.6742589
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7557373   -0.8433849   -0.6680897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7351690   -0.7767387   -0.6935994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.8024647   -0.8256899   -0.7792394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.7520110   -0.7852418   -0.7187803
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3065386   -0.8088930    0.1958159
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1378670   -0.2853753    0.0096412
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0633894   -0.3565711    0.2297923
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0362238    0.8153580    1.2570895
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.8028842    0.4637154    1.1420531
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.1559974    0.7899381    1.5220568
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5746105   -0.8303474   -0.3188736
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6463837   -0.8538482   -0.4389192
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8820373   -1.1120466   -0.6520279
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.3366730    0.0340575    0.6392886
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0698066   -0.0986216    0.2382349
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0380220   -0.2450879    0.3211318
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1488832    0.8663074    1.4314591
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9575784    0.7946791    1.1204777
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.2524238    0.9868654    1.5179822
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5042392    0.3245487    0.6839297
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.6285581    0.1742455    1.0828708
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.3910514   -0.0257942    0.8078969
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5157650    0.3492214    0.6823085
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.5665238    0.2747149    0.8583327
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4774567    0.1695747    0.7853386
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.5996139   -0.7754923   -0.4237355
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7222725   -0.8681907   -0.5763542
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6089398   -0.7498437   -0.4680360
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.0055496   -1.2767701   -0.7343290
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9674875   -1.1298380   -0.8051369
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.1026984   -1.3228771   -0.8825197
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5647331   -0.7646345   -0.3648316
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4748738   -0.5913631   -0.3583845
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2849784   -0.4868977   -0.0830592
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0198321   -0.2123059    0.1726417
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.3013422   -0.4085075   -0.1941769
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.1064770   -0.2906073    0.0776533
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1020520   -0.0761681    0.2802720
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0015909   -0.1054544    0.1022726
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0304987   -0.1408844    0.2018819
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0673185    0.0015253    0.1331117
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2140528    0.0797631    0.3483425
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0170233   -0.1038518    0.1378984
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2263245   -0.2844663   -0.1681826
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3023623   -0.6568238    0.0520993
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0250917   -0.1711646    0.1209812
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.3103315    0.0180535    0.6026096
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0609330   -0.2193156    0.0974496
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.2119309   -0.4902891    0.0664273
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5834063    0.5248660    0.6419465
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6358105    0.5479025    0.7237185
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5542514    0.4166467    0.6918562
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2918885    0.2613022    0.3224748
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2846951    0.1672722    0.4021181
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3125820    0.2370155    0.3881485
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1182798   -0.0791796    0.3157392
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2234158    0.1337468    0.3130849
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1409962   -0.0072787    0.2892712
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5686316   -0.6692301   -0.4680331
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7893303   -0.8693021   -0.7093584
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6196512   -0.7209658   -0.5183366
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.2972682   -0.3872642   -0.2072723
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3222679   -0.3799506   -0.2645852
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2350261   -0.3139289   -0.1561233
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4235423    0.3339456    0.5131391
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5872881    0.4030032    0.7715730
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4449628    0.2904750    0.5994507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5004500   -0.5467421   -0.4541579
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6164500   -0.6407462   -0.5921538
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.5966307   -0.6319815   -0.5612798
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.6617472   -1.1040569   -0.2194375
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8270066   -0.9736796   -0.6803336
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.6724234   -0.9114168   -0.4334299
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5872807    0.2792543    0.8953070
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1728255   -0.1417435    0.4873946
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.4969573    0.0656545    0.9282600
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.6938133   -0.9220918   -0.4655347
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.0935631   -1.2659226   -0.9212037
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9178528   -1.1402101   -0.6954954
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1905074   -0.4888348    0.1078201
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4534817   -0.6034332   -0.3035303
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.3057269   -0.5444974   -0.0669564
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1597822   -0.0863366    0.4059010
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0862379   -0.0894209    0.2618967
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.2017345   -0.0323412    0.4358101
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4113889    0.2755598    0.5472179
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.2574968   -0.2063266    0.7213203
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.3359036   -0.0350600    0.7068671
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1243697   -0.0308127    0.2795521
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2638493   -0.5384863    0.0107877
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0465603   -0.2508085    0.3439292
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.8615988   -1.1009865   -0.6222111
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9413831   -1.0638334   -0.8189328
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8233150   -1.0459786   -0.6006514
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7121826   -0.9208175   -0.5035478
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9877837   -1.0846015   -0.8909659
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.7971907   -0.9892652   -0.6051163
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3700136   -0.5823208   -0.1577063
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7402333   -0.8654254   -0.6150412
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.5307973   -0.7329723   -0.3286223
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8199161   -0.8734388   -0.7663935
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.0378090   -1.2975634   -0.7780547
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6723000   -0.8139816   -0.5306184
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6913862    0.5751795    0.8075929
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5851425    0.3612406    0.8090445
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6178320    0.2900584    0.9456055
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1858413   -1.3117776   -1.0599049
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4631729   -1.9431693   -0.9831765
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9125092   -1.1454116   -0.6796067
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2777212   -0.4435778   -0.1118645
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.3042281   -0.3726158   -0.2358404
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2407794   -0.3625039   -0.1190550
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4511813   -0.5368404   -0.3655223
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6859305   -0.7547777   -0.6170833
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5335703   -0.6253640   -0.4417767
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4591704   -0.5399349   -0.3784059
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7270598   -0.7789970   -0.6751225
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5110957   -0.5785925   -0.4435989
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0190982   -0.1183759    0.0801795
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.1102759   -0.3154085    0.0948567
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0828690   -0.2935778    0.1278397
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1580117   -1.2177084   -1.0983150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3546132   -1.3847806   -1.3244459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2432703   -1.2856714   -1.2008693


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6752218   -0.8548888   -0.4955547
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2360866   -1.3011735   -1.1709998
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1428961   -1.3532157   -0.9325766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4906181   -0.5214690   -0.4597672
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7780564   -0.7970843   -0.7590285
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2053991   -0.2588843   -0.1519138
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948466    0.2673139    0.3223793
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932195   -0.6127714   -0.5736676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1712534   -1.2800940   -1.0624128
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0168734   -0.4498229    0.4160760
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0919041   -0.4201785    0.6039866
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.1988811   -0.5304867    0.9282488
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1789548   -0.9448507    1.3027603
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.1918857   -0.6010728    0.9848442
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.1472246   -0.5862374    0.8806867
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.1304495   -0.1832220    0.4441209
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.2833256   -0.0825433    0.6491946
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4326366   -0.0357600    0.9010333
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.2028290   -0.2811587    0.6868167
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1008185   -0.2742424    0.0726054
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0519886   -0.1836334    0.0796563
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0183206   -0.2678205    0.2311794
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2567823   -0.0206022    0.5341669
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.1017343   -0.3044094    0.1009408
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0313527   -0.2722341    0.2095287
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1055160   -0.3324153    0.1213834
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0545669   -0.3121782    0.2030444
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3252392   -0.7309504    0.0804720
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0670937   -0.2702336    0.1360463
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1152887   -0.2944331    0.0638557
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0449984   -0.1478415    0.0578446
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3440057   -0.4867625   -0.2012489
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1553603   -0.2426958   -0.0680249
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3806726    0.0941427    0.6672024
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.4069271    0.0657847    0.7480696
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm           0.0515856   -0.0856654    0.1888367
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1903748    0.0371845    0.3435650
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0068386   -0.1123340    0.1260112
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0091464   -0.1419682    0.1236755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0672956   -0.1126090   -0.0219822
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0168420   -0.0670359    0.0333518
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1686716   -0.3550512    0.6923943
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.2431492   -0.3385346    0.8248330
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2333396   -0.6402931    0.1736140
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1197737   -0.3085152    0.5480625
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0717732   -0.4032807    0.2597344
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.3074268   -0.6522455    0.0373920
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2668664   -0.6136866    0.0799537
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.2986511   -0.7130906    0.1157885
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1913048   -0.5196556    0.1370459
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.1035405   -0.2826351    0.4897162
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.1243189   -0.3640691    0.6127070
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.1131879   -0.5672404    0.3408647
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0507588   -0.2849923    0.3865099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0383083   -0.3891322    0.3125156
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1226586   -0.3024591    0.0571419
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0093260   -0.1992709    0.1806189
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0380621   -0.2803511    0.3564752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0971489   -0.4466401    0.2523424
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0898593   -0.1416924    0.3214109
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2797546   -0.0054867    0.5649960
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2815101   -0.5020637   -0.0609565
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0866449   -0.3534140    0.1801242
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1036429   -0.3105540    0.1032682
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0715533   -0.3190505    0.1759440
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1467342   -0.0031950    0.2966635
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0502952   -0.1879977    0.0874072
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0760378   -0.4353013    0.2832257
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.2012328    0.0442039    0.3582617
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3712645   -0.7041859   -0.0383431
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.5222624   -0.9261673   -0.1183575
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0524042   -0.0426973    0.1475058
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0291548   -0.1582507    0.0999410
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0071934   -0.1285254    0.1141386
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0206935   -0.0608372    0.1022242
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1051361   -0.1112745    0.3215466
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0227165   -0.2231203    0.2685532
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2206987   -0.3493873   -0.0920100
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0510196   -0.1937621    0.0917230
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0249997   -0.1318567    0.0818572
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0622421   -0.0575329    0.1820172
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1637458   -0.0413217    0.3688133
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0214205   -0.1573312    0.2001722
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1160000   -0.1662349   -0.0657651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0961807   -0.1534775   -0.0388838
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1652594   -0.6337028    0.3031839
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0106762   -0.5149052    0.4935527
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4144551   -0.8568036    0.0278934
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0903234   -0.6224565    0.4418097
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.3997499   -0.6863782   -0.1131215
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2240395   -0.5430571    0.0949781
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2629744   -0.5984897    0.0725410
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.1152196   -0.4975169    0.2670778
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0735443   -0.3762706    0.2291821
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0419523   -0.2988565    0.3827611
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1538920   -0.6380373    0.3302532
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0754853   -0.4706275    0.3196569
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3882190   -0.7051683   -0.0712697
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0778093   -0.4116528    0.2560341
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0797843   -0.3489032    0.1893347
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0382838   -0.2889334    0.3655010
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2756011   -0.5049337   -0.0462685
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0850081   -0.3691068    0.1990906
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3702197   -0.6174210   -0.1230185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1607837   -0.4550308    0.1334633
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2178929   -0.4831119    0.0473260
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1476161   -0.0039951    0.2992274
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1062437   -0.3640257    0.1515384
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0735542   -0.3886657    0.2415573
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2773316   -0.7731650    0.2185017
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2733321    0.0080824    0.5385818
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0265069   -0.2058867    0.1528730
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0369417   -0.1691493    0.2430328
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2347492   -0.3445577   -0.1249406
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0823890   -0.2081410    0.0433630
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2678893   -0.3640161   -0.1717626
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0519253   -0.1572101    0.0533595
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0911777   -0.3182482    0.1358927
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0637708   -0.2973825    0.1698408
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1966015   -0.2648379   -0.1283652
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0852586   -0.1569461   -0.0135711


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0102659   -0.3738800    0.3944117
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1013681   -0.2138997    0.4166358
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1622131   -0.3598823    0.6843084
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1285971   -0.1070061    0.3642003
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0975607   -0.0628105    0.2579319
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0451076   -0.1267482    0.0365330
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0465382   -0.1479765    0.2410529
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0667786   -0.2215509    0.0879936
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0594641   -0.2379279    0.1189996
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0168974   -0.0472865    0.0134916
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0017202   -0.0054585    0.0020180
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0409610   -0.0565088   -0.0254132
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.3339284    0.0923599    0.5754969
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0749064   -0.0138202    0.1636329
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0038658   -0.0848269    0.0925586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0428874   -0.0791565   -0.0066182
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1688622   -0.3057584    0.6434829
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0641464   -0.2053812    0.0770883
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1288044   -0.3590155    0.1014067
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2262422   -0.5054875    0.0530030
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0940242   -0.3454166    0.1573682
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0249107   -0.0628455    0.1126670
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0204563   -0.0898673    0.1307799
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0430166   -0.1429842    0.0569509
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0001670   -0.2450424    0.2453763
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1173293   -0.0676293    0.3022879
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1788750   -0.3480702   -0.0096798
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0722897   -0.2350557    0.0904762
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0114572   -0.0305780    0.0534924
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0209254   -0.0034118    0.0452626
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3359232   -0.6098074   -0.0620389
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0006116   -0.0049566    0.0037335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0029581   -0.0114130    0.0173292
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0743206   -0.1109760    0.2596173
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1081798   -0.1918738   -0.0244859
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0034249   -0.0769985    0.0838484
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0280127   -0.0294109    0.0854363
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0927695   -0.1340014   -0.0515376
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1575453   -0.5703953    0.2553047
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1246574   -0.3096251    0.0603103
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2581115   -0.4647413   -0.0514817
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1844049   -0.4579120    0.0891022
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0485840   -0.2696779    0.1725099
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0197471   -0.0903097    0.0508154
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0695722   -0.1762262    0.0370818
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0499802   -0.2664112    0.1664508
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1792533   -0.3586570    0.0001503
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2403366   -0.4336260   -0.0470473
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0097445   -0.0125637    0.0320526
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0033167   -0.0131893    0.0065560
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0145879   -0.0550991    0.0842749
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0066824   -0.1606454    0.1472806
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1207710   -0.1916564   -0.0498855
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1507887   -0.2230834   -0.0784941
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0277735   -0.0952788    0.0397318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.1390525   -0.1944527   -0.0836523
