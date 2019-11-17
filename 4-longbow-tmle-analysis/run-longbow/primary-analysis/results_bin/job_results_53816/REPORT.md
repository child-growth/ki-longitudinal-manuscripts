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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* delta_W_mage
* delta_meducyrs
* delta_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       23     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      131     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       32     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       61     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        5     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      128     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        2     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       52     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       39     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       49     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1        6     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       82     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       58     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       14     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       40     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0      114     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       62     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      161     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        8     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1        4     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      189     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       15     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       29     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        4     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       31     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        2     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      145     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       43     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       45     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      478    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       90    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      342    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      145    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      250    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       85    1390
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       56     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       22     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      133     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1       87     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       66     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       45     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       95     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       21     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      275     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       87     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      117     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       29     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      127     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       11     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      320     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       53     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      132     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       26     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      131     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      390     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       45     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      163     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       17     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1426    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       64    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      338    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       20    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      479    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       32    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0     1718    2429
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      292    2429
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       68    2429
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       25    2429
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      261    2429
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       65    2429
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       35     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        1     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      131     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       12     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       51     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        5     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              0     2575    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              1      324    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               0       71    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               1       20    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          0      184    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          1       42    3216
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0    13189   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1       22   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     7462    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      355    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      537    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       37    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1368    9828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       69    9828
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      150    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       15    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      733    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1      102    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      246    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       29    1275
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      541    1905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1       30    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      737    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm               1       86    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      481    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1       30    1905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      554    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       75    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1186    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      354    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      745    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      131    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      488     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1       26     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0      124     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1        7     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      183     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        9     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     3928   26804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      197   26804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    14175   26804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     1717   26804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     6317   26804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      470   26804
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       24     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        1     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      155     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        8     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       66     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      129     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       53     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       39     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       53     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        2     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0      105     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1       10     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       66     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        6     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       40     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      126     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       64     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      168     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      201     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       33     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       33     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      151     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        2     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       51     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        1     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      532    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       33    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      443    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       41    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      311    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       22    1382
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       74     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1        4     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      199     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1       21     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0      103     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1        6     407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0      110     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      330     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       30     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      137     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        9     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      131     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        7     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      357     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       16     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      151     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        7     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      140     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      423     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       12     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      175     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        5     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1481    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        9    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      356    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        2    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      504    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1746    2156
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1       47    2156
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       69    2156
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1        7    2156
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      281    2156
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1        6    2156
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       34     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        0     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      129     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1        3     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       51     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        2     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    13197   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1       14   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     7694    9788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       91    9788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      560    9788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        9    9788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1413    9788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       21    9788
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      133    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        3    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      669    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1       16    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      221    1044
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1        2    1044
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      542    1863
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       13    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      786    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm               1       21    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      493    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1        8    1863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      619    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       10    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1493    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       46    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      860    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       16    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      161     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     4004   26697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      107   26697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    15098   26697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      729   26697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     6537   26697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      222   26697
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       22     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      128     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       28     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       54     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        5     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      119     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       49     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       49     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1        6     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       79     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       32     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       59     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        9     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0      117     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       58     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      147     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        8     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       53     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      177     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       14     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       28     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        2     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      140     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       39     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       45     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      461    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       78    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      301    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      131    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      227    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       79    1277
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       54     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       21     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      135     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1       80     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       67     400
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       43     400
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       82     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       16     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      245     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       72     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      101     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       26     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      122     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        7     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      291     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       44     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      125     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       24     613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      129     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      379     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       40     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      159     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       14     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1185    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       61    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      284    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       19    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      405    1984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       30    1984
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0     1646    2324
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      275    2324
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       67    2324
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       23    2324
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      252    2324
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       61    2324
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       35     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        1     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      125     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       11     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       49     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        4     225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              0     2575    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm              1      324    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               0       71    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm               1       20    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          0      184    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm          1       42    3216
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0    13194   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1        9   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      398   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        0   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6564    8622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      277    8622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      490    8622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       29    8622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1209    8622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       53    8622
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      133    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       13    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      667    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1       93    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      221    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       27    1154
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      521    1843
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1       27    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      721    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm               1       78    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      468    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1       28    1843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      510    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       71    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1083    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      339    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      679    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      126    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      480     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1       26     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0      123     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1        7     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      178     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        9     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2612   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      103   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     8988   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     1109   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4132   17229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      285   17229


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/d0b8fb2a-cc3b-4e62-af86-159a3eea1179/67659af9-19f3-4eca-a4e6-96bc540317d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0b8fb2a-cc3b-4e62-af86-159a3eea1179/67659af9-19f3-4eca-a4e6-96bc540317d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0b8fb2a-cc3b-4e62-af86-159a3eea1179/67659af9-19f3-4eca-a4e6-96bc540317d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0b8fb2a-cc3b-4e62-af86-159a3eea1179/67659af9-19f3-4eca-a4e6-96bc540317d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265295   0.1916523
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2869565   0.2041119   0.3698012
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1944444   0.1028379   0.2860510
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0522876   0.0169457   0.0876295
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1568627   0.0568577   0.2568678
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416656   0.2275651
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1606722   0.1248126   0.1965318
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2993897   0.2338113   0.3649682
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2584398   0.1992115   0.3176682
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2797488   0.1787632   0.3807344
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3964205   0.3315487   0.4612922
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4052555   0.3125663   0.4979447
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1839955   0.1126887   0.2553023
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2416222   0.1971856   0.2860587
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1939291   0.1274502   0.2604079
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0787891   0.0323652   0.1252131
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1419639   0.1063987   0.1775291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1674386   0.1084161   0.2264611
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0642857   0.0236320   0.1049395
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1034483   0.0748104   0.1320861
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0944444   0.0516935   0.1371954
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0428105   0.0325087   0.0531124
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0568296   0.0328860   0.0807733
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0620034   0.0410011   0.0830058
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1464997   0.1310879   0.1619116
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2479169   0.1589211   0.3369127
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1949488   0.1517868   0.2381108
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1117677   0.0918904   0.1316449
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2244583   0.0889941   0.3599226
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1816459   0.1152194   0.2480723
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0453337   0.0407173   0.0499501
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0640424   0.0438983   0.0841866
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0482222   0.0371555   0.0592889
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0881591   0.0445772   0.1317411
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1218097   0.0995920   0.1440273
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1048886   0.0682249   0.1415524
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0537803   0.0354508   0.0721099
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1029958   0.0820831   0.1239085
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0588425   0.0384247   0.0792604
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1192982   0.0939967   0.1445998
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2298389   0.2087814   0.2508964
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1495663   0.1257257   0.1734069
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0505837   0.0316271   0.0695402
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0534351   0.0148996   0.0919706
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0468750   0.0169591   0.0767909
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0483087   0.0417646   0.0548528
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1077245   0.1023218   0.1131271
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0694790   0.0629800   0.0759780
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0584859   0.0313462   0.0856256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.0827579   0.0489579   0.1165579
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0662061   0.0351313   0.0972810
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0517241   0.0113891   0.0920592
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0833333   0.0547600   0.1119067
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0616438   0.0226002   0.1006874
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0507246   0.0140860   0.0873632
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0428954   0.0223174   0.0634735
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0443038   0.0121949   0.0764126
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0262131   0.0188162   0.0336099
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0921053   0.0270770   0.1571335
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0209059   0.0043499   0.0374619
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0116891   0.0093014   0.0140768
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0158172   0.0055650   0.0260694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0146444   0.0084267   0.0208620
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0234234   0.0108372   0.0360097
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0260223   0.0150354   0.0370092
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0159681   0.0049887   0.0269474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0152184   0.0058528   0.0245840
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0295765   0.0210900   0.0380630
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0180973   0.0093550   0.0268395
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0266449   0.0212704   0.0320195
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0459279   0.0424910   0.0493649
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0328703   0.0283195   0.0374211
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1090909   0.0265237   0.1916581
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2882883   0.2038417   0.3727349
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1323529   0.0516365   0.2130694
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0476190   0.0131227   0.0821154
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1521739   0.0481625   0.2561853
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1457999   0.1197289   0.1718710
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3057378   0.2436139   0.3678618
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2622403   0.2071381   0.3173425
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2817424   0.1805236   0.3829613
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3764821   0.3113557   0.4416084
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3971821   0.3050051   0.4893592
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1564558   0.0822836   0.2306279
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2255833   0.1793306   0.2718360
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2007770   0.1299546   0.2715994
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0542636   0.0151392   0.0933879
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1313433   0.0951433   0.1675433
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1610738   0.1020015   0.2201461
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0652174   0.0239940   0.1064407
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0954654   0.0673092   0.1236216
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0809249   0.0402581   0.1215916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0487034   0.0367522   0.0606545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0631320   0.0353432   0.0909207
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0678816   0.0441455   0.0916178
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1443990   0.1287242   0.1600739
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2390382   0.1487485   0.3293278
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1894396   0.1457211   0.2331581
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1117294   0.0918200   0.1316388
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2237324   0.0910277   0.3564371
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1901399   0.1217177   0.2585621
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0404728   0.0358014   0.0451442
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0557896   0.0358959   0.0756833
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0418544   0.0307675   0.0529413
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0855212   0.0407033   0.1303392
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1231302   0.0998243   0.1464362
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1081184   0.0694477   0.1467891
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0496379   0.0315455   0.0677302
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0969583   0.0763762   0.1175404
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0570638   0.0366003   0.0775274
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1226523   0.0960034   0.1493012
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2382704   0.2160703   0.2604705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1566072   0.1313024   0.1819120
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0513834   0.0321350   0.0706318
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0538462   0.0150223   0.0926700
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0481283   0.0174324   0.0788243
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0376845   0.0307526   0.0446165
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1098987   0.1032792   0.1165182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0644315   0.0567196   0.0721435


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0898438   0.0547459   0.1249416
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2302158   0.1856981   0.2747335
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3765281   0.3295143   0.4235419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0491734   0.0404458   0.0579009
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1572664   0.1427858   0.1717470
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0469068   0.0427263   0.0510872
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1145098   0.0970244   0.1319952
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0766404   0.0646915   0.0885893
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0501792   0.0353804   0.0649781
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0889419   0.0850166   0.0928673
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0694645   0.0441638   0.0947653
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0278293   0.0208847   0.0347739
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123621   0.0101730   0.0145512
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0225443   0.0158017   0.0292868
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396299   0.0371163   0.0421435
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2255286   0.1871466   0.2639106
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3600000   0.3129020   0.4070980
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0554435   0.0453713   0.0655158
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1544750   0.1397785   0.1691716
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416377   0.0374209   0.0458544
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1152513   0.0968196   0.1336830
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0721649   0.0603481   0.0839818
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0510328   0.0359888   0.0660768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868884   0.0822172   0.0915596


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6304348   1.1701604   5.913025
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.7824074   0.7308807   4.346778
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.0000000   1.1846760   7.597014
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.5745192   0.9796292   6.765978
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8633573   1.5279110   2.272449
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.6084913   1.2428648   2.081678
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.4170586   0.9533305   2.106358
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.4486407   0.9447982   2.221173
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3131959   0.8548292   2.017343
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0539879   0.6277939   1.769515
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.8018205   0.9495920   3.418897
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.1251481   1.0691965   4.223971
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.6091954   0.8068674   3.209337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.4691358   0.6750113   3.197517
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.3274682   0.8171548   2.156472
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4483217   0.9560457   2.194075
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6922686   1.1643217   2.459606
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3307109   1.0419239   1.699540
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0082584   1.0707529   3.766604
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6252094   1.1368494   2.323356
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4126891   1.0150174   1.966164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0637168   0.8275904   1.367214
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3817024   0.8154501   2.341163
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1897647   0.6495117   2.179391
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9151202   1.2882091   2.847120
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0941274   0.6727615   1.779405
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9265911   1.5292295   2.427205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2537176   0.9615810   1.634608
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0563711   0.4686570   2.381101
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9266827   0.4420883   1.942465
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2299205   1.9321279   2.573611
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4382311   1.2171288   1.699499
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4150071   0.9797955   2.043534
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.1320018   0.7535944   1.700421
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.6111111   0.6873308   3.776463
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1917808   0.4364095   3.254607
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8456530   0.3553172   2.012650
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8734177   0.3139381   2.429964
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          3.5137178   1.6427149   7.515737
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7975387   0.3440649   1.848686
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3531548   0.6858110   2.669872
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2528162   0.7821060   2.006823
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1109522   0.5609346   2.200283
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.6817136   0.2848523   1.631489
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9434720   0.9859736   3.830816
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1891725   0.5438370   2.600285
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.7237022   1.3894191   2.138411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2336411   0.9678535   1.572418
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6426426   1.1737529   5.949770
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2132353   0.4590007   3.206836
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.1956521   1.1803561   8.651789
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.8269230   1.0391141   7.690680
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0969681   1.7245365   2.549830
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.7986310   1.3767058   2.349866
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3362632   0.8968161   1.991043
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.4097348   0.9186430   2.163356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4418342   0.8605343   2.415808
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2832830   0.7106056   2.317481
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.4204691   1.1185943   5.237529
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.9683605   1.3219292   6.665383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.4638027   0.7287117   2.940420
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2408478   0.5533781   2.782371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2962549   0.7830752   2.145741
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3937776   0.9091218   2.136805
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6553998   1.1175211   2.452167
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3119173   1.0170064   1.692346
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0024483   1.0777430   3.720552
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7017893   1.1968586   2.419740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3784459   0.9475697   2.005249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0341359   0.7746050   1.380622
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4397623   0.8236496   2.516744
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2642288   0.6706225   2.383270
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.9533133   1.2812556   2.977886
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1496027   0.6893457   1.917161
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9426500   1.5336238   2.460766
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2768389   0.9739960   1.673844
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0479290   0.4650063   2.361592
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9366516   0.4470383   1.962508
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.9162802   2.4081649   3.531606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7097606   1.3717301   2.131091


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1099174    0.0296403   0.1901944
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0375562    0.0061253   0.0689871
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0695436    0.0451841   0.0939032
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0967793    0.0042353   0.1893234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0355558   -0.0301468   0.1012583
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0557400    0.0114233   0.1000567
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0297540   -0.0086368   0.0681448
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0063628   -0.0005848   0.0133105
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0107666    0.0034664   0.0180669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082572    0.0028987   0.0136157
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015731   -0.0006369   0.0037832
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0263507   -0.0150511   0.0677524
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0228601    0.0062051   0.0395151
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0646098    0.0408311   0.0883885
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0004044   -0.0121093   0.0113004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0406333    0.0339694   0.0472971
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0109787   -0.0000303   0.0219876
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0206231   -0.0172615   0.0585078
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0058816   -0.0380513   0.0262881
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0016163   -0.0018388   0.0050713
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006729   -0.0005206   0.0018664
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0008791   -0.0113429   0.0095847
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0084347   -0.0004672   0.0173366
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0129850    0.0078570   0.0181130
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0917638    0.0126502   0.1708774
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0380952    0.0065391   0.0696514
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0797286    0.0540713   0.1053860
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0782576   -0.0145297   0.1710448
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0538763   -0.0147920   0.1225447
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0680855    0.0285827   0.1075884
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0210840   -0.0172877   0.0594556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0067402   -0.0013050   0.0147854
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0100760    0.0026600   0.0174920
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082955    0.0029375   0.0136534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0011648   -0.0010667   0.0033964
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0297301   -0.0131157   0.0725759
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0225271    0.0060448   0.0390094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0682309    0.0431621   0.0932998
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0003506   -0.0122349   0.0115337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0492038    0.0419586   0.0564491


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.5018868   -0.0101766   0.7543828
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4180165    0.0012619   0.6608672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.3020801    0.2114569   0.3822885
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2570308   -0.0342417   0.4662725
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1619474   -0.1967684   0.4131428
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.4143340   -0.0155353   0.6622425
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.3163984   -0.2327008   0.6209046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1293959   -0.0221109   0.2584448
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0684611    0.0212146   0.1134270
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0687959    0.0235181   0.1119742
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0335369   -0.0146675   0.0794512
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2301171   -0.2293997   0.5178787
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2982773    0.0502327   0.4815417
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3513158    0.2106063   0.4669438
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0080600   -0.2705026   0.2001709
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.4568518    0.3810192   0.5233939
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1580471   -0.0256809   0.3088643
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2850575   -0.4757933   0.6536488
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1311594   -1.1303471   0.3993835
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0580777   -0.0737124   0.1736916
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0544350   -0.0466895   0.1457896
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0389961   -0.6239218   0.3352433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3566012   -0.1391201   0.6365950
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.3276562    0.1865957   0.4442540
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.4568665   -0.0954428   0.7307080
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4444444    0.0022396   0.6906652
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.3535190    0.2678514   0.4291628
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2173821   -0.0874178   0.4367475
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2561489   -0.1524588   0.5198836
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.5564858    0.1210607   0.7762020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2443064   -0.3552454   0.5786204
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1215686   -0.0344321   0.2540432
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0652273    0.0163018   0.1117195
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0691146    0.0237630   0.1123594
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0279758   -0.0270529   0.0800561
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2579587   -0.2212192   0.5491184
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.3121608    0.0487177   0.5026474
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3574486    0.2142275   0.4745651
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0068699   -0.2688686   0.2010307
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.5662879    0.4821760   0.6367373
