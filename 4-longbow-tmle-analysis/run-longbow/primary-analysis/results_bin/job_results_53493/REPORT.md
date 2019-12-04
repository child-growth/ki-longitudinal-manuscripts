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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    0       22     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    1        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     0      114     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     1       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                0       62     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                1        4     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    0      119     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    1       11     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                     0       47     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                     1        6     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                0       34     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                1        5     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                    0       46     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                    1        9     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                     0       79     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                     1       36     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm                0       59     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm                1       13     242
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                    0      159     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                    1       45     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                     0       19     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                     1       14     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm                0       22     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm                1       11     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0       88     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       65     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       15     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       36     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       17     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       35     256
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                    0      129     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                    1        9     669
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                    0     2628    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                    1      271    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                     0       69    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                     1       22    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm                0      181    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm                1       45    3216
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                    0    12711   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                    1      500   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                     0      111   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                     1       14   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm                0      379   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm                1       19   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    0     6539    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    1     1300    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     0      394    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     1      180    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1119    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                1      320    9852
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    0     3819   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    1      336   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     0    12348   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     1     3747   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                0     5940   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                1      916   27106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    0       24     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                    1        1     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     0      145     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                     1       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                0       66     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm                1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    0      122     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                    1        8     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                     0       47     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                     1        6     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                0       36     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm                1        3     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                    0       54     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                    1        1     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                     0      100     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                     1       15     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm                0       68     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm                1        4     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                    0       41     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                    1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                     0      127     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                     1        6     238
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0      136     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       17     256
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    0     7105    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                    1      727    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     0      486    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                     1       86    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1260    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm                1      177    9841
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    0     3866   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                    1      279   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     0    13117   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                     1     2940   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                0     6075   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm                1      763   27040


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
![](/tmp/3f89bf80-2628-4a29-adc9-d9d5cd19005b/6da79131-8297-4b84-b2a2-016a19a09d2f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f89bf80-2628-4a29-adc9-d9d5cd19005b/6da79131-8297-4b84-b2a2-016a19a09d2f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f89bf80-2628-4a29-adc9-d9d5cd19005b/6da79131-8297-4b84-b2a2-016a19a09d2f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f89bf80-2628-4a29-adc9-d9d5cd19005b/6da79131-8297-4b84-b2a2-016a19a09d2f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0846154   0.0366660   0.1325648
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.1132075   0.0277128   0.1987022
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1282051   0.0230438   0.2333664
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1636364   0.0656640   0.2616087
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3130435   0.2281127   0.3979743
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1805556   0.0915235   0.2695876
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1833333   0.0852567   0.2814100
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2662722   0.1995170   0.3330274
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1147541   0.0346326   0.1948756
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2195202   0.1624308   0.2766095
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4136254   0.2350370   0.5922138
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.3243402   0.1579778   0.4907025
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4290748   0.3496606   0.5084890
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7188639   0.5887904   0.8489374
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6805728   0.5495070   0.8116386
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2166042   0.1892153   0.2439932
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4413754   0.3807232   0.5020277
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3580631   0.3229057   0.3932206
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3636942   0.2564788   0.4709095
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5393347   0.4731935   0.6054758
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4906130   0.3963111   0.5849149
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1496729   0.0831761   0.2161698
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3874572   0.3373356   0.4375787
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2485612   0.1777110   0.3194114
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0652174   0.0239915   0.1064433
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1796247   0.1406387   0.2186106
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1139241   0.0643462   0.1635019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0571429   0.0186681   0.0956176
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1678161   0.1326748   0.2029574
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1000000   0.0561448   0.1438552
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0797931   0.0660259   0.0935604
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1593126   0.1213519   0.1972734
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1184315   0.0904537   0.1464093
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2038245   0.1862314   0.2214176
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4313532   0.3271103   0.5355961
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3063666   0.2566810   0.3560522
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0934339   0.0741642   0.1127037
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2356966   0.1125601   0.3588331
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2030174   0.1267874   0.2792474
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0378360   0.0296890   0.0459831
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1117226   0.0890226   0.1344225
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0501638   0.0279146   0.0724130
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1658541   0.1576193   0.1740889
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3132101   0.2753050   0.3511152
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2214333   0.1999048   0.2429618
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3062532   0.2363859   0.3761205
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.5118145   0.4781015   0.5455274
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4287197   0.3708685   0.4865709
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0550410   0.0364098   0.0736722
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1639513   0.1385065   0.1893961
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1023604   0.0758211   0.1288998
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2212962   0.1888806   0.2537117
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4487347   0.4239723   0.4734971
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2886851   0.2584791   0.3188912
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1373687   0.1074215   0.1673159
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.4070033   0.3212714   0.4927352
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.2670840   0.2038367   0.3303314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0826269   0.0734614   0.0917924
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2313266   0.2236115   0.2390418
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1349498   0.1258628   0.1440367
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1000000   0.0239597   0.1760403
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1479290   0.0943099   0.2015481
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.0983607   0.0234988   0.1732225
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1111111   0.0612164   0.1610058
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0321299   0.0231573   0.0411025
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0648322   0.0387854   0.0908790
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0566972   0.0361291   0.0772653
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1089236   0.0944954   0.1233518
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2322611   0.1351382   0.3293840
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1308158   0.0915422   0.1700893
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0124139   0.0089646   0.0158632
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0400000   0.0312475   0.0487525
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0201005   0.0062686   0.0339324
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0928468   0.0864192   0.0992744
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1507169   0.1213368   0.1800969
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1230420   0.1060482   0.1400359
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0793787   0.0337490   0.1250084
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1180814   0.0941923   0.1419704
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0666259   0.0345135   0.0987382
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0230589   0.0105296   0.0355882
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0642011   0.0472864   0.0811158
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0357194   0.0194362   0.0520026
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0272084   0.0145180   0.0398987
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0830204   0.0692027   0.0968381
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0521615   0.0369994   0.0673236
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0310559   0.0042112   0.0579006
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2105263   0.0806646   0.3403880
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0972222   0.0286643   0.1657802
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0694561   0.0607334   0.0781788
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1816789   0.1748062   0.1885516
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1128011   0.1043857   0.1212164


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0990991   0.0597055   0.1384927
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2172414   0.1696986   0.2647841
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2592593   0.2068905   0.3116280
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3297797   0.2987556   0.3608038
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4889976   0.4404930   0.5375021
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1000424   0.0879314   0.1121534
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2259259   0.2092953   0.2425566
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0388088   0.0305671   0.0470504
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1827040   0.1750732   0.1903348
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4682663   0.4410469   0.4954857
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1159496   0.1015724   0.1303268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1844241   0.1788262   0.1900221
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1275862   0.0891215   0.1660509
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1445313   0.1013733   0.1876892
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1538462   0.1345929   0.1730994
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432387   0.0350292   0.0514481
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1163114   0.1027818   0.1298410
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0128877   0.0095203   0.0162552
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1005995   0.0946563   0.1065428
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1018692   0.0837370   0.1200014
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0443376   0.0350104   0.0536648
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0738007   0.0426155   0.1049860
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1472633   0.1422106   0.1523160


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.3379074   0.5204504    3.439321
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.5151515   0.5590860    4.106137
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9130435   0.9914102    3.691444
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.1033951   0.5080144    2.396548
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4523938   0.8044622    2.622184
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.6259314   0.2597331    1.508434
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.8842252   1.1377324    3.120509
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4774961   0.8314288    2.625594
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.6753812   1.2923055    2.172011
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5861401   1.2144551    2.071580
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0377047   1.8290231    2.270196
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.6530754   1.3642206    2.003091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.4829346   1.0775945    2.040744
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.3489712   0.9492889    1.916933
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.5886926   1.6294317    4.112679
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.6606959   0.9787449    2.817804
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.7542449   1.4116934    5.373592
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.7468354   0.8108757    3.763134
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.9367816   1.4509154    5.944307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.7500000   0.7835495    3.908496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9965713   1.4876405    2.679610
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4842321   1.1077577    1.988652
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.1162974   1.6373037    2.735421
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.5030903   1.2511852    1.805712
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.5226011   1.4407534    4.416798
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          2.1728443   1.5054506    3.136106
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.9528079   2.2050484    3.954142
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.3258209   0.9053617    1.941546
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.8884670   1.6568601    2.152449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3351087   1.1970186    1.489129
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.6712133   1.3183443    2.118532
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3998863   1.0743008    1.824146
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.9787140   2.0532238    4.321369
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.8597138   1.2139612    2.848967
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.0277564   1.7338833    2.371437
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3045194   1.0895855    1.561852
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          2.9628536   2.1870956    4.013771
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.9442860   1.4085501    2.683787
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.7996529   2.4994786    3.135877
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.6332424   1.4328842    1.861616
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4792899   0.6371109    3.434722
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.9836066   0.3354135    2.884445
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.2941176   1.1974633    4.395104
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2115385   0.5316503    2.760885
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.0178137   1.2368429    3.291907
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7646230   1.1164206    2.789177
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.1323294   1.3750735    3.306608
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2009860   0.8650251    1.667428
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          3.2221951   2.2334006    4.648759
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.6191935   0.7802597    3.360148
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6232851   1.3199385    1.996346
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3252152   1.1355103    1.546613
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4875702   0.8091830    2.734690
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8393421   0.3968400    1.775262
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.7842235   1.5222328    5.092454
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5490513   0.7622163    3.148135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.0512824   1.8592999    5.007435
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.9171144   1.1068013    3.320675
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          6.7789474   2.3440894   19.604255
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          3.1305556   1.0259933    9.552087
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.6157366   2.3000376    2.974768
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.6240624   1.4030302    1.879916


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0144837   -0.0195502   0.0485176
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0760331   -0.0141902   0.1662563
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0339080   -0.0549686   0.1227847
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0397391    0.0066569   0.0728214
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1021752    0.0510700   0.1532803
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1131754    0.0966178   0.1297331
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1253034    0.0279254   0.2226813
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1619328    0.0975683   0.2262973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0752908    0.0341461   0.1164356
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0739830    0.0351014   0.1128645
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0202493    0.0104040   0.0300945
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0221014    0.0135625   0.0306404
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0116656    0.0060891   0.0172420
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0009728    0.0001979   0.0017476
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0168499    0.0125884   0.0211114
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1620130    0.0959896   0.2280365
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0609087    0.0423063   0.0795110
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1348190    0.1047486   0.1648894
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0741009    0.0502164   0.0979853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1017972    0.0926215   0.1109730
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0275862   -0.0421924   0.0973648
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0334201   -0.0036795   0.0705198
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0610285    0.0390880   0.0829690
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0339706   -0.0070364   0.0749777
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0193945   -0.0123307   0.0511197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0111087    0.0043022   0.0179153
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0073878    0.0006869   0.0140886
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0004738    0.0000136   0.0009340
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0077527    0.0044537   0.0110517
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0224905   -0.0208234   0.0658044
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0212787    0.0090116   0.0335459
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0352508    0.0223121   0.0481894
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0427448    0.0138156   0.0716740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0778072    0.0692122   0.0864022


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1461538   -0.2706298   0.4262268
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3172414   -0.1783116   0.6043837
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1560847   -0.3691355   0.4798228
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1532794    0.0172022   0.2705155
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1923297    0.0875432   0.2850826
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3431850    0.2965718   0.3867093
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2562454    0.0269776   0.4314921
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5196721    0.2686269   0.6845456
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5358464    0.1554915   0.7448948
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.5642136    0.1708072   0.7709703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2024070    0.1005338   0.2927420
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0978260    0.0595707   0.1345252
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1109954    0.0562754   0.1625425
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0250653    0.0050859   0.0446435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0922251    0.0687939   0.1150667
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3459848    0.1883753   0.4729882
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5253028    0.3514342   0.6525605
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.3785825    0.2887968   0.4570332
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3504091    0.2342861   0.4489217
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5519734    0.5020017   0.5969307
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2162162   -0.5688354   0.6084248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2312312   -0.0638206   0.4444501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3966854    0.2328908   0.5255062
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3621614   -0.2505234   0.6746657
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3115502   -0.4293673   0.6684105
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2569170    0.0903167   0.3930059
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0635171    0.0044512   0.1190787
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0367657   -0.0019937   0.0740259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0770649    0.0439441   0.1090384
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2207781   -0.3425727   0.5477438
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4799247    0.1442195   0.6839396
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5643814    0.3211203   0.7204754
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5791925    0.1153040   0.7998421
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5283543    0.4685833   0.5814025
