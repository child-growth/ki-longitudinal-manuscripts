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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -------------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    0       23     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    1        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     0      114     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     1       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                0       62     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                1        4     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    0      123     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    1        7     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                     0       47     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                     1        6     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                0       34     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                1        5     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                    0       46     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                    1        9     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                     0       81     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                     1       34     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm                0       60     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm                1       12     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                    0       41     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                    1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                     0      117     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                     1       16     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm                0       59     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm                1        5     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                    0       49     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                    1       11     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                     0      124     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                     1       45     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm                0       54     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm                1        7     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                    0      160     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                    1       44     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                     0       19     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                     1       14     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm                0       22     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm                1       11     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0       89     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       64     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       15     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       36     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       18     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       34     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                    0      449    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                    1      123    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                     0      275    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                     1      219    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm                0      219    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm                1      122    1407
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                    0       50     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                    1       28     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                     0      102     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                     1      118     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm                0       57     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm                1       54     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                    0       99     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                    1       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                     0      224     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                     1      142     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm                0      110     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm                1       36     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                    0      130     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                    1        8     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                     0      306     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                     1       67     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm                0      140     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm                1       18     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                    0      132     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                    1        8     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                     0      362     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                     1       73     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm                0      162     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm                1       18     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0     1371    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1      119    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     0      301    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       57    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0      451    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       60    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                    0     1602    2430
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                    1      409    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                     0       53    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                     1       40    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm                0      226    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm                1      100    2430
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                    0       32     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                    1        4     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                     0      108     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                     1       35     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm                0       47     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm                1        9     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                    0     2601    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                    1      262    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                     0       68    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                     1       21    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm                0      180    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm                1       45    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                    0    12711   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                    1      500   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                     0      111   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                     1       14   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm                0      379   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm                1       19   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    0     6592    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    1     1247    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     0      402    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     1      172    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1127    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                1      312    9852
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                    0      115    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                    1       51    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                     0      412    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                     1      433    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm                0      160    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm                1      121    1292
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                    0      540    1906
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                    1       31    1906
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                     0      687    1906
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                     1      137    1906
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm                0      458    1906
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm                1       53    1906
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                    0      490    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                    1      142    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                     0      855    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                     1      694    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm                0      624    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm                1      253    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                    0      443     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                    1       71     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                     0       76     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                     1       55     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm                0      141     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm                1       51     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    0     3820   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    1      335   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     0    12369   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     1     3734   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                0     5944   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                1      912   27114
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    0       24     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    1        1     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     0      145     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     1       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                0       66     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    0      124     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    1        6     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                     0       47     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                     1        6     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                0       36     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                1        3     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                    0       54     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                    1        1     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                     0      100     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                     1       15     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm                0       69     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm                1        3     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                    0       41     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                    1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                     0      128     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                     1        5     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm                0       60     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm                1        4     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                    0       54     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                    1        6     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                     0      144     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                     1       25     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm                0       55     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm                1        6     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                    0      185     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                    1       19     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                     0       26     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                     1        7     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm                0       32     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm                1        1     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0      137     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       16     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       38     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       13     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       45     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1        7     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                    0      517    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                    1       54    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                     0      387    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                     1      105    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm                0      284    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm                1       57    1404
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                    0       74     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                    1        4     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                     0      188     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                     1       32     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm                0       96     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm                1       13     407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                    0      110     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                    1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                     0      324     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                     1       42     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm                0      136     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm                1       10     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                    0      136     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                    1        2     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                     0      350     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                     1       23     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm                0      152     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm                1        6     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                    0      134     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                    1        6     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                     0      400     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                     1       35     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm                0      174     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm                1        6     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0     1442    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       48    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     0      334    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       24    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0      481    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       30    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                    0     1599    2158
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                    1      196    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                     0       58    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                     1       18    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm                0      250    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm                1       37    2158
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                    0       31     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                    1        3     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                     0      118     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                     1       14     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm                0       49     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm                1        4     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                    0    13047   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                    1      164   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                     0      120   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                     1        5   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm                0      390   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm                1        8   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    0     7107    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    1      725    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     0      486    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     1       86    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1259    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                1      177    9840
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                    0      127    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                    1       11    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                     0      620    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                     1       83    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm                0      214    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm                1       15    1070
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                    0      546    1872
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                    1       13    1872
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                     0      758    1872
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                     1       52    1872
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm                0      485    1872
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm                1       18    1872
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                    0      614    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                    1       18    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                     0     1421    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                     1      128    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm                0      832    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm                1       45    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                    0      156     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                    1        5     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                     0       30     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                     1        8     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm                0       65     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm                1        7     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    0     3867   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    1      278   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     0    13138   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     1     2927   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                0     6080   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                1      758   27048


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/beced9d6-2c6e-42f4-9566-7ee3926db949/cdc90c52-b8ee-476e-a841-6f384aee2462/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/beced9d6-2c6e-42f4-9566-7ee3926db949/cdc90c52-b8ee-476e-a841-6f384aee2462/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/beced9d6-2c6e-42f4-9566-7ee3926db949/cdc90c52-b8ee-476e-a841-6f384aee2462/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/beced9d6-2c6e-42f4-9566-7ee3926db949/cdc90c52-b8ee-476e-a841-6f384aee2462/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0538462   0.0149582   0.0927341
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.1132075   0.0277128   0.1987022
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1282051   0.0230438   0.2333664
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1636364   0.0656640   0.2616087
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2956522   0.2120760   0.3792283
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1666667   0.0804056   0.2529277
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1833333   0.0852567   0.2814100
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2662722   0.1995170   0.3330274
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1147541   0.0346326   0.1948756
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2144269   0.1576297   0.2712240
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4008598   0.2208528   0.5808668
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.3129289   0.1464151   0.4794427
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4160599   0.3373202   0.4947996
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7087519   0.5813377   0.8361662
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6477343   0.5132649   0.7822036
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2166042   0.1892153   0.2439932
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4413754   0.3807232   0.5020277
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3580631   0.3229057   0.3932206
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3636200   0.2547878   0.4724522
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5379749   0.4716569   0.6042928
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4910123   0.3962186   0.5858059
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1501358   0.0837751   0.2164964
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3873831   0.3371760   0.4375902
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2476088   0.1766087   0.3186089
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0579710   0.0189525   0.0969895
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1796247   0.1406387   0.2186106
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1139241   0.0643462   0.1635019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0571429   0.0186681   0.0956176
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1678161   0.1326748   0.2029574
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1000000   0.0561448   0.1438552
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0797969   0.0660294   0.0935644
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1593272   0.1212832   0.1973712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1189324   0.0912050   0.1466597
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2037791   0.1861874   0.2213707
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4357440   0.3315930   0.5398951
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3091547   0.2590526   0.3592568
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0915039   0.0719011   0.1111066
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2291841   0.1007511   0.3576171
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2032856   0.1255495   0.2810216
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0378399   0.0296904   0.0459895
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1107651   0.0880932   0.1334370
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0487482   0.0272097   0.0702868
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1590517   0.1509558   0.1671475
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3014477   0.2640864   0.3388090
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2167380   0.1953972   0.2380789
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3142473   0.2449585   0.3835361
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.5122178   0.4785310   0.5459047
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4350687   0.3775232   0.4926142
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0552395   0.0367458   0.0737331
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1644812   0.1390042   0.1899582
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1038647   0.0773364   0.1303931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2230260   0.1904831   0.2555688
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4483455   0.4235629   0.4731280
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2883984   0.2582244   0.3185725
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1388603   0.1088624   0.1688581
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.4131837   0.3276839   0.4986836
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.2658406   0.2021959   0.3294852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0824315   0.0732659   0.0915972
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2303341   0.2226444   0.2380238
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1344208   0.1254038   0.1434377
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1000000   0.0239597   0.1760403
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1479290   0.0943099   0.2015481
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.0983607   0.0234988   0.1732225
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1045752   0.0559925   0.1531578
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2549020   0.1350607   0.3747432
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416656   0.2275651
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0928176   0.0655333   0.1201020
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2147717   0.1755333   0.2540100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1685797   0.1327141   0.2044453
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0598291   0.0168200   0.1028381
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1147541   0.0820751   0.1474331
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0684932   0.0274884   0.1094979
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0428571   0.0092856   0.0764287
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0804598   0.0548818   0.1060377
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0333333   0.0070925   0.0595742
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0324521   0.0234943   0.0414100
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0683432   0.0422933   0.0943932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0601918   0.0398648   0.0805188
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1089393   0.0945143   0.1233643
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2532012   0.1583052   0.3480971
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1348909   0.0959268   0.1738549
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0124139   0.0089646   0.0158632
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0400000   0.0312475   0.0487525
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0201005   0.0062686   0.0339324
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0925912   0.0861712   0.0990112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1504385   0.1210695   0.1798075
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1227921   0.1057745   0.1398098
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0711085   0.0261537   0.1160633
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1177868   0.0938658   0.1417078
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0649907   0.0329900   0.0969913
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0229456   0.0103913   0.0354999
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0641910   0.0472729   0.0811092
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0356921   0.0194121   0.0519721
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0277806   0.0149606   0.0406006
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0829637   0.0691662   0.0967613
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0514290   0.0365473   0.0663106
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0310559   0.0042112   0.0579006
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2105263   0.0806646   0.3403880
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0972222   0.0286643   0.1657802
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0692165   0.0604978   0.0779353
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1807287   0.1738755   0.1875818
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1123098   0.1039579   0.1206616


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0810811   0.0450937   0.1170685
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2272727   0.1743641   0.2801813
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2172414   0.1696986   0.2647841
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2555556   0.2034324   0.3076787
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5234375   0.4621361   0.5847389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3297797   0.2987556   0.3608038
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4889976   0.4404930   0.5375021
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1390135   0.1127781   0.1652488
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1000424   0.0879314   0.1121534
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2259259   0.2092953   0.2425566
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1032421   0.0833685   0.1231156
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0388088   0.0305671   0.0470504
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1757004   0.1681852   0.1832155
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4682663   0.4410469   0.4954857
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1159496   0.1015724   0.1303268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1837058   0.1781339   0.1892777
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1275862   0.0891215   0.1660509
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1406250   0.0979572   0.1832928
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1538462   0.1345929   0.1730994
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432387   0.0350292   0.0514481
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1163114   0.1027818   0.1298410
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0128877   0.0095203   0.0162552
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1004065   0.0944680   0.1063450
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1018692   0.0837370   0.1200014
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0443376   0.0350104   0.0536648
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0738007   0.0426155   0.1049860
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1465173   0.1415001   0.1515345


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          2.1024259   0.7394462    5.977710
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          2.3809524   0.7982073    7.102083
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.8067633   0.9318696    3.503058
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0185185   0.4615950    2.247381
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4523938   0.8044622    2.622184
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.6259314   0.2597331    1.508434
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.8694477   1.1084107    3.153014
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4593738   0.8038839    2.649352
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7034853   1.3117884    2.212142
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5568293   1.1751888    2.062407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0377047   1.8290231    2.270196
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.6530754   1.3642206    2.003091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.4794973   1.0707021    2.044371
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.3503444   0.9457189    1.928089
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.5802181   1.6278068    4.089874
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.6492327   0.9731552    2.795000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          3.0985255   1.5276458    6.284742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.9651899   0.8816904    4.380190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.9367816   1.4509154    5.944307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.7500000   0.7835495    3.908496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9966582   1.4871081    2.680803
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4904381   1.1150522    1.992199
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.1383161   1.6584374    2.757050
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.5171074   1.2629091    1.822471
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.5046381   1.3761687    4.558461
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          2.2216059   1.5198427    3.247397
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.9272031   2.1828827    3.925322
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.2882754   0.8823107    1.881031
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.8952817   1.6575977    2.167047
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3626894   1.2197337    1.522400
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.6299833   1.2955036    2.050821
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3844789   1.0710065    1.789701
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.9776034   2.0591004    4.305823
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.8802633   1.2341904    2.864542
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.0102835   1.7198216    2.349802
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2931158   1.0805945    1.547434
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          2.9755363   2.2047008    4.015881
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.9144468   1.3859335    2.644504
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.7942473   2.4941165    3.130494
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.6306954   1.4291655    1.860644
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4792899   0.6371109    3.434722
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.9836066   0.3354135    2.884445
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.4375000   1.2586200    4.720572
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2872596   0.5600624    2.958666
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.3139100   1.5999754    3.346414
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.8162461   1.2005177    2.747773
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9180328   0.8852217    4.155851
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1448141   0.4492102    2.917564
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.8773946   0.8061383    4.372216
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          0.7777778   0.2561806    2.361374
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1059706   1.3150859    3.372489
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8547866   1.1987399    2.869875
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.3242410   1.5615282    3.459493
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2382207   0.9011099    1.701447
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          3.2221951   2.2334006    4.648759
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.6191935   0.7802597    3.360148
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6247601   1.3207384    1.998765
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3261743   1.1357999    1.548458
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.6564378   0.8537181    3.213925
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.9139648   0.4115550    2.029696
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.7975278   1.5236867    5.136333
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5555072   0.7628808    3.171665
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.9863875   1.8282026    4.878294
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.8512518   1.0740605    3.190820
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          6.7789474   2.3440894   19.604255
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          3.1305556   1.0259933    9.552087
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.6110617   2.2950397    2.970599
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.6225860   1.4000041    1.880556


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0272349   -0.0049557   0.0594255
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0636364   -0.0260013   0.1532740
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0339080   -0.0549686   0.1227847
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0411287    0.0077348   0.0745226
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1073776    0.0563526   0.1584026
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1131754    0.0966178   0.1297331
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1253775    0.0264387   0.2243164
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1614699    0.0972841   0.2256558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0810424    0.0412600   0.1208249
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0739830    0.0351014   0.1128645
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0202455    0.0103958   0.0300951
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0221469    0.0136089   0.0306848
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0117382    0.0059591   0.0175172
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0009689    0.0001982   0.0017395
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0166487    0.0124401   0.0208573
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1540190    0.0885425   0.2194954
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0607102    0.0422036   0.0792168
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1330891    0.1029038   0.1632744
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0726093    0.0487646   0.0964539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1012743    0.0920811   0.1104674
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0275862   -0.0421924   0.0973648
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0360498   -0.0008223   0.0729220
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0610285    0.0390880   0.0829690
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0339706   -0.0070364   0.0749777
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0193945   -0.0123307   0.0511197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0107865    0.0039851   0.0175880
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0073721    0.0006709   0.0140733
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0004738    0.0000136   0.0009340
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0078153    0.0045171   0.0111135
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0307607   -0.0119474   0.0734688
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0213920    0.0091019   0.0336820
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0346785    0.0216411   0.0477158
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0427448    0.0138156   0.0716740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0773008    0.0686883   0.0859132


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.3358974   -0.1619039   0.6204228
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2800000   -0.2398021   0.5818688
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1560847   -0.3691355   0.4798228
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1609384    0.0214117   0.2805713
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2051393    0.0988107   0.2989225
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3431850    0.2965718   0.3867093
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2563971    0.0228014   0.4341525
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5181867    0.2681276   0.6828081
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5829827    0.2084548   0.7802988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.5642136    0.1708072   0.7709703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2023689    0.1004544   0.2927369
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0980272    0.0597766   0.1347216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1136956    0.0558317   0.1680134
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0249653    0.0050789   0.0444542
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0947562    0.0707007   0.1181889
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3289132    0.1733425   0.4552067
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5235908    0.3513310   0.6501055
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.3737250    0.2836085   0.4525055
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3433558    0.2274429   0.4418773
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5512851    0.5010372   0.5964728
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2162162   -0.5688354   0.6084248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2563544   -0.0454615   0.4710386
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3966854    0.2328908   0.5255062
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3621614   -0.2505234   0.6746657
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3115502   -0.4293673   0.6684105
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2494649    0.0833095   0.3855036
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0633825    0.0043182   0.1189431
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0367657   -0.0019937   0.0740259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0778364    0.0446629   0.1098580
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3019625   -0.2706164   0.6165197
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4824793    0.1453514   0.6866225
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5552189    0.3101312   0.7132350
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5791925    0.1153040   0.7998421
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5275879    0.4674112   0.5809653
