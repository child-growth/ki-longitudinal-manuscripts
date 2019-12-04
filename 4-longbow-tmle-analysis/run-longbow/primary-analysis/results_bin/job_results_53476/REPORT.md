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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        mhtcm           ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       17     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        8     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1      118     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       36     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       30     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0       99     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1       31     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       38     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1       15     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       27     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1       12     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       32     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       23     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       29     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       86     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       32     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       40     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0       74     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       59     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       43     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       21     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       27     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1       33     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0       53     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1      116     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       24     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1       37     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0       89     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1      115     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0        6     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1       27     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       13     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1       20     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       28     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      125     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       48     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       48     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      238    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1      334    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      103    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1      391    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      100    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1      241    1407
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       22     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       56     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       28     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1      192     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       16     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       95     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       60     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       57     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0       93     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1      273     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0       58     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       88     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      102     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       36     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      173     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1      200     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0       91     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       67     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      100     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       40     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      192     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1      243     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      101     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       79     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1058    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      432    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      182    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      176    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      304    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      207    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0      979    2430
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1     1032    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       16    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       77    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      118    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1      208    2430
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1       17     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0       56     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1       87     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       29     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1       27     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1942    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      957    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       31    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       60    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       96    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3216
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11031   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1     2180   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       80   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1       45   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      299   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       99   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4447    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     3392    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      205    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      369    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      682    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      757    9852
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       65    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1      101    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      160    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1      685    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0       77    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1      204    1292
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      454    1906
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1      117    1906
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      437    1906
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1      387    1906
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      329    1906
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1      182    1906
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      290    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1      342    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0      361    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1     1188    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      308    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      569    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      229     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1      285     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0       20     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1      111     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       56     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1      136     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     2910   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1     1245   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     6741   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     9354   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4023   27106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     2833   27106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       20     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        5     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       92     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       71     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       53     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       13     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      105     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1       25     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       40     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1       13     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       30     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        9     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       42     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    0       67     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    1       48     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       49     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       23     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        3     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      105     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       28     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       53     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       11     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   0       40     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   1       20     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    0       89     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    1       80     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               0       33     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               1       28     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      133     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1       71     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       15     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1       15     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       97     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       56     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       17     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       18     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      393    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1      178    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      220    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1      272    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      192    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1      149    1404
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       59     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       19     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0      114     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1      106     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       75     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       34     407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       94     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       23     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      209     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1      157     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      106     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       40     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      118     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       20     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      261     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1      112     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      124     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       34     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      115     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       25     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      279     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1      156     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      132     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       48     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1268    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      222    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      253    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      105    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      381    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      130    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1272    2158
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   1      523    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    0       38    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    1       38    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               0      170    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               1      117    2158
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       27     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        7     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0       83     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1       49     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       39     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1       14     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11957   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   1     1254   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    0       99   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    1       26   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               0      346   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               1       52   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     5758    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     2074    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      325    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      247    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      938    9841
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      499    9841
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0      111    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       27    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      434    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    1      269    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      176    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1       53    1070
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   0      507    1872
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   1       52    1872
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    0      619    1872
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    1      191    1872
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               0      425    1872
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               1       78    1872
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      546    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       86    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1066    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      483    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      715    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      162    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      121     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   1       40     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    0       17     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    1       21     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       36     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               1       36     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3139   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1     1006   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     8194   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     7863   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4538   27040
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     2300   27040
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       16     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        3     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       43     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       47     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       32     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       17     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0       91     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        6     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       36     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        2     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       25     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        3     163
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       32     154
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       10     154
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       28     154
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       38     154
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       29     154
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       17     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        0     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0       72     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       31     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       43     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       10     194
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       26     148
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1       13     148
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0       44     148
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1       36     148
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       20     148
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        9     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0       80     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1       44     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0        6     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        9     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       11     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        5     155
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       26     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       69     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        1     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       30     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      216     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1      156     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0       75     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1      119     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0       85     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       92     743
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       37     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       24     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1       86     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       15     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       61     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       45     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       34     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0       58     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1      116     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0       44     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       48     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0       93     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       16     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      142     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       88     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0       84     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       33     456
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0       98     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       15     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      181     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       87     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0       94     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       31     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      843    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      210    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      136    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       71    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      241    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       77    1578
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0      917    1679
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      509    1679
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       15    1679
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       39    1679
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      108    1679
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       91    1679
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1       10     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0       50     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1       38     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       27     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1       13     157
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1942    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      957    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       31    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       60    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       96    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3216
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11023   12394
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1      926   12394
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       80   12394
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1       19   12394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      299   12394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       47   12394
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4007    6493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     1318    6493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      181    6493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      122    6493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      607    6493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      258    6493
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       48     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       74     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      102     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1      416     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0       51     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1      151     842
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      432    1530
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1       65    1530
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      418    1530
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1      196    1530
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      315    1530
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1      104    1530
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      245    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1      256    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0      264    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      705    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      244    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      407    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      221     727
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1      245     727
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0       19     727
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1       90     727
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       52     727
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1      100     727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     1893   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      239   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     3833   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     1491   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     2471   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      533   10460


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/52be83fb-c46b-4ec2-9de4-be4f15dfdb68/32b34352-b410-43eb-a34f-e5641fbd4830/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/52be83fb-c46b-4ec2-9de4-be4f15dfdb68/32b34352-b410-43eb-a34f-e5641fbd4830/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/52be83fb-c46b-4ec2-9de4-be4f15dfdb68/32b34352-b410-43eb-a34f-e5641fbd4830/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/52be83fb-c46b-4ec2-9de4-be4f15dfdb68/32b34352-b410-43eb-a34f-e5641fbd4830/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.3200000   0.1367837   0.5032163
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7239264   0.6551609   0.7926919
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.4545455   0.3341803   0.5749106
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2398637   0.1660064   0.3137209
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2894159   0.1652916   0.4135402
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.3078072   0.1601594   0.4554550
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4112634   0.2790779   0.5434490
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.7454482   0.6644916   0.8264048
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.5665672   0.4477951   0.6853393
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.5430111   0.4123904   0.6736318
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.6801803   0.6087633   0.7515973
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.6314993   0.5146495   0.7483492
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.5637255   0.4955462   0.6319048
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8181818   0.6863439   0.9500198
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.6060606   0.4390402   0.7730810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5884616   0.5562338   0.6206894
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.7879886   0.7269663   0.8490110
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7144460   0.6417443   0.7871477
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7287411   0.6262195   0.8312628
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.8756259   0.8311850   0.9200668
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8650090   0.7981566   0.9318614
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4866075   0.3947496   0.5784653
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7451868   0.7003813   0.7899922
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.6031719   0.5238367   0.6825071
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2551433   0.1811761   0.3291106
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5335631   0.4827200   0.5844063
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.4210057   0.3431954   0.4988160
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2905824   0.2142906   0.3668741
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.5595302   0.5127716   0.6062888
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.4411701   0.3681588   0.5141813
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2892305   0.2661578   0.3123032
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4952013   0.4434246   0.5469780
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4060899   0.3632008   0.4489791
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5139001   0.4920479   0.5357524
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8376516   0.7604314   0.9148718
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6306628   0.5784712   0.6828544
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.4483010   0.2850990   0.6115030
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.6085332   0.5275635   0.6895029
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.5151965   0.3859600   0.6444330
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3301977   0.2778296   0.3825658
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6250924   0.4888292   0.7613556
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5723466   0.3876799   0.7570132
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.1649941   0.1460632   0.1839250
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3568362   0.3176744   0.3959980
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2543715   0.2052512   0.3034918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4327724   0.4218065   0.4437383
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6447403   0.6055324   0.6839482
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.5262514   0.5003378   0.5521650
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6060629   0.5313976   0.6807282
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8106920   0.7842809   0.8371032
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7188377   0.6668500   0.7708254
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2063895   0.1732402   0.2395389
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.4658449   0.4317043   0.4999855
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3549230   0.3131867   0.3966592
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5422720   0.5028521   0.5816919
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7653297   0.7440286   0.7866309
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6483984   0.6163833   0.6804135
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5562592   0.5132594   0.5992591
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8436823   0.7813418   0.9060227
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7042213   0.6388523   0.7695903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3032579   0.2875050   0.3190108
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5796621   0.5703397   0.5889845
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4148862   0.4017899   0.4279825
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2000000   0.0428933   0.3571067
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.4355828   0.3593141   0.5118515
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1969697   0.1008310   0.2931084
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1923077   0.1244064   0.2602090
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2452830   0.1291873   0.3613788
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.2307692   0.0982395   0.3632990
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2159531   0.1003460   0.3315603
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.4108694   0.3210862   0.5006527
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3193773   0.2086409   0.4301138
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3336318   0.2127954   0.4544682
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4677652   0.3914646   0.5440657
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.4809047   0.3578981   0.6039113
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3502827   0.2847016   0.4158638
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5787527   0.4097514   0.7477541
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4512178   0.2735917   0.6288440
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3654365   0.2887102   0.4421629
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6684408   0.5353402   0.8015415
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3499322   0.2160190   0.4838455
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3091329   0.2702702   0.3479957
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5564922   0.4968478   0.6161367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4408836   0.3804804   0.5012868
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2528970   0.1555314   0.3502627
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4829564   0.4165822   0.5493306
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3213260   0.2330578   0.4095942
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1979925   0.1258377   0.2701473
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.4308323   0.3799353   0.4817293
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2701303   0.1978756   0.3423849
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1435467   0.0841615   0.2029318
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2984414   0.2517485   0.3451343
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2168014   0.1522001   0.2814027
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1797116   0.1157671   0.2436561
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3581012   0.3129044   0.4032980
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2647120   0.1995209   0.3299031
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1488090   0.1307106   0.1669075
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2941074   0.2467578   0.3414570
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2554870   0.2174229   0.2935511
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2911501   0.2701198   0.3121805
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.5088176   0.3918092   0.6258261
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4060956   0.3491230   0.4630682
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2058824   0.0696581   0.3421066
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3712121   0.2886049   0.4538194
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2641509   0.1451845   0.3831174
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0949172   0.0818253   0.1080091
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2078863   0.1784443   0.2373283
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1299406   0.0891219   0.1707593
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2649145   0.2551410   0.2746880
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4328861   0.3920079   0.4737643
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3477052   0.3229799   0.3724305
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1939692   0.1275631   0.2603752
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.3825029   0.3464909   0.4185149
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2312890   0.1764501   0.2861279
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0918740   0.0678229   0.1159251
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2372183   0.2079398   0.2664967
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1557769   0.1239554   0.1875984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1330216   0.1064835   0.1595597
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3108693   0.2877378   0.3340008
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1849224   0.1588997   0.2109452
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2482491   0.1808608   0.3156373
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5477540   0.3802987   0.7152094
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5102037   0.3912634   0.6291440
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2467929   0.2320001   0.2615858
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4879321   0.4788236   0.4970407
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3381033   0.3254426   0.3507640
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2081830   0.0713753   0.3449907
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5783671   0.4575786   0.6991555
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3680223   0.2239171   0.5121276
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3333333   0.1848828   0.4817839
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4500000   0.3406137   0.5593863
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3103448   0.1413943   0.4792953
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3548387   0.2703512   0.4393262
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.6000000   0.3512784   0.8487216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.3125000   0.0846469   0.5403531
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4231827   0.3687888   0.4775767
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.6064038   0.5287680   0.6840397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.5227238   0.4493322   0.5961153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.6405477   0.5166145   0.7644810
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.7796737   0.7016238   0.8577237
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.7940571   0.7038460   0.8842682
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4416469   0.3329876   0.5503062
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6583397   0.5874373   0.7292422
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5375603   0.4371606   0.6379599
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1489846   0.0815045   0.2164647
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3847732   0.3215696   0.4479768
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2825932   0.2000129   0.3651736
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1301049   0.0663243   0.1938855
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3257754   0.2695599   0.3819909
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2471652   0.1707018   0.3236286
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1992849   0.1751154   0.2234544
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.3422792   0.2773076   0.4072507
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2414839   0.1940903   0.2888775
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3576954   0.3328181   0.3825728
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7132017   0.5908890   0.8355143
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4419252   0.3721427   0.5117077
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2972384   0.1245315   0.4699452
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.4252472   0.3189821   0.5315123
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.3845166   0.2320192   0.5370141
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3303092   0.2780044   0.3826141
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6524837   0.5202566   0.7847107
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5716193   0.3841646   0.7590741
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0774763   0.0635385   0.0914140
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1926983   0.1703621   0.2150344
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1366800   0.0923367   0.1810234
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2474817   0.2358835   0.2590799
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4024236   0.3473149   0.4575323
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2969445   0.2661485   0.3277405
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6069986   0.5211170   0.6928801
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8030186   0.7686323   0.8374048
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7524147   0.6921009   0.8127284
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1337482   0.1040729   0.1634235
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3131427   0.2764626   0.3498229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2490181   0.2073666   0.2906696
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5103787   0.4665400   0.5542174
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7273762   0.6992814   0.7554711
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6233940   0.5860349   0.6607531
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5256212   0.4801461   0.5710963
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8321638   0.7594526   0.9048749
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.6702849   0.5936324   0.7469375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1120330   0.0974852   0.1265807
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2802939   0.2663029   0.2942850
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1772156   0.1620896   0.1923417


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2612613   0.2033404   0.3191821
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6000000   0.5414566   0.6585434
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6865672   0.6433613   0.7297731
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8386308   0.8029353   0.8743263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454854   0.3262920   0.3646787
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5419753   0.5221615   0.5617891
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5574468   0.4938076   0.6210860
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692151   0.1502685   0.1881616
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4585871   0.4487474   0.4684268
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7662539   0.7431681   0.7893396
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3599161   0.3383625   0.3814696
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4955360   0.4876904   0.5033817
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2117117   0.1578516   0.2655718
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3851852   0.3270313   0.4433391
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4266382   0.3925570   0.4607194
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3906634   0.3432048   0.4381220
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1937262   0.1777743   0.2096780
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3141798   0.2945906   0.3337690
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3196347   0.2577308   0.3815386
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0969856   0.0839703   0.1100009
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2865562   0.2776225   0.2954900
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3261682   0.2980650   0.3542714
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1714744   0.1543953   0.1885534
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4130547   0.4055931   0.4205164
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4939435   0.4498186   0.5380683
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268695   0.2061992   0.2475397
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3805837   0.3573526   0.4038147
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3885350   0.3120482   0.4650219
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0800387   0.0658162   0.0942612
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2615124   0.2508224   0.2722024
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7612827   0.7324712   0.7900941
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2385621   0.2171991   0.2599251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2163480   0.2069669   0.2257290


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.2622699   1.2661636   4.042025
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          1.4204545   0.7559014   2.669252
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.2065850   0.7113048   2.046728
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.2832589   0.7249997   2.271385
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.8125809   1.2906648   2.545548
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3776261   0.9387147   2.021758
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.2526085   0.9630541   1.629221
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.1629585   0.8588529   1.574743
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.4513834   1.1865411   1.775340
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.0750988   0.7956926   1.452618
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.3390655   1.2394120   1.446731
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2140910   1.1260844   1.308976
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.2015596   1.0346525   1.395392
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.1869908   1.0109492   1.393687
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5313920   1.2563805   1.866601
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2395452   0.9841854   1.561161
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0912290   1.5408609   2.838179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6500752   1.1696531   2.327825
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.9255475   1.4615837   2.536792
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5182272   1.1131417   2.070728
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7121338   1.5011544   1.952765
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4040357   1.2298134   1.602939
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6299892   1.4725474   1.804264
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2272090   1.1183577   1.346655
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.3574209   0.9216298   1.999275
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.1492200   0.7396920   1.785482
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.8930850   1.4598527   2.454885
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7333449   1.2504630   2.402698
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1627213   1.8615731   2.512586
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5417008   1.2795068   1.857623
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4897908   1.3948418   1.591203
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2160003   1.1504750   1.285258
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3376368   1.1777558   1.519222
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1860777   1.0284950   1.367805
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2571150   1.8919795   2.692718
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7196752   1.4089653   2.098904
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4113391   1.3055984   1.525644
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1957069   1.0950726   1.305589
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5167069   1.3627410   1.688068
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2659948   1.1218372   1.428677
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9114493   1.8130570   2.015181
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3680968   1.2886931   1.452393
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.1779141   0.9739028   4.870414
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.9848485   0.3905933   2.483213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.2754717   0.7066720   2.302098
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.2000000   0.6115039   2.354850
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9025862   1.0681128   3.389000
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.4789197   0.7809134   2.800827
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4020401   0.9421729   2.086365
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.4414234   0.9242188   2.248062
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.6522446   1.1647892   2.343696
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.2881533   0.8321184   1.994114
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8291571   1.3688036   2.444336
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9575732   0.6179183   1.483928
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8001713   1.4906455   2.173969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4261942   1.1389915   1.785817
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9096958   1.2685159   2.874964
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2705804   0.7916307   2.039302
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.1760027   1.4842227   3.190214
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3643457   0.8685474   2.143164
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0790546   1.3359739   3.235444
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5103200   0.9069927   2.514978
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.9926436   1.3662410   2.906243
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.4729823   0.9559218   2.269722
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9764079   1.6151774   2.418427
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7168780   1.4164311   2.081054
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.7476126   1.3732119   2.224092
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3947979   1.1911361   1.633282
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.8030303   0.8970788   3.623894
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2830189   0.5762704   2.856536
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1901858   1.8221378   2.632575
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.3689894   0.9967377   1.880266
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6340595   1.4764777   1.808460
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3125186   1.2114567   1.422011
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.9719781   1.3824617   2.812879
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1924009   0.7865628   1.807637
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.5819951   1.9329767   3.448929
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6955492   1.2162349   2.363760
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.3369841   1.8886808   2.891698
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3901689   1.0890336   1.774573
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          2.2064697   1.4671153   3.318423
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.0552091   1.4371662   2.939037
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9770910   1.8587750   2.102938
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3699877   1.2775304   1.469136
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.7781662   1.3914255   5.546979
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.7677825   0.8216161   3.803546
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.3500000   0.8128024   2.242242
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.9310345   0.4607905   1.881170
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.6909091   1.0483482   2.727313
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          0.8806818   0.4089834   1.896411
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4329597   1.1940541   1.719665
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2352200   1.0762860   1.417624
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.2171985   0.9791014   1.513196
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2396533   0.9902569   1.551860
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4906472   1.1413754   1.946799
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2171720   0.8923587   1.660216
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.5826380   1.5950676   4.181653
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.8967951   1.1057214   3.253832
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.5039439   1.4885777   4.211896
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.8997377   1.0636906   3.392907
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7175368   1.3711017   2.151505
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2117522   0.9618971   1.526508
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.9938797   1.6567778   2.399571
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2354789   1.0398524   1.467909
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.4306605   0.7618182   2.686717
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2936305   0.6449000   2.594945
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9753721   1.5399280   2.533946
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7305581   1.2446477   2.406168
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.4871909   2.0852421   2.966619
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7641538   1.3098072   2.376104
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6260742   1.4069663   1.879304
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1998645   1.0707237   1.344581
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3229332   1.1410104   1.533862
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2395658   1.0538811   1.457966
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.3412854   1.8231217   3.006721
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.8618424   1.4102504   2.458044
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4251696   1.2970776   1.565911
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2214341   1.0999340   1.356355
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5832004   1.4000121   1.790358
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2752242   1.1046872   1.472088
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.5018880   2.1810816   2.869880
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.5818171   1.3571866   1.843627


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2941732    0.1193640   0.4689825
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0213976   -0.0283222   0.0711174
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2044391    0.0880912   0.3207870
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0983682   -0.0173978   0.2141343
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0362745    0.0038482   0.0687008
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0981055    0.0739747   0.1222364
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1098897    0.0210537   0.1987257
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1779394    0.0957294   0.2601494
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1977715    0.1293976   0.2661453
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1888878    0.1183531   0.2594226
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0562549    0.0411154   0.0713944
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0280752    0.0191975   0.0369529
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1091458   -0.0419785   0.2602701
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0264565    0.0159824   0.0369306
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0042210    0.0026046   0.0058374
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0258147    0.0207430   0.0308864
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1601910    0.0917040   0.2286779
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1535265    0.1234290   0.1836240
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1441243    0.1094867   0.1787619
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0793441    0.0539173   0.1047709
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1922781    0.1777695   0.2067868
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1503937   -0.0021835   0.3029709
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0194040   -0.0265493   0.0653573
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1311543    0.0256283   0.2366803
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1077475   -0.0016743   0.2171693
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0349025   -0.0003649   0.0701698
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0564385    0.0055591   0.1073178
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1175052    0.0795921   0.1554183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1377664    0.0472883   0.2282444
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1517690    0.0836130   0.2199249
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1045849    0.0483547   0.1608150
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1235997    0.0631145   0.1840848
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0449171    0.0319291   0.0579051
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0230297    0.0135050   0.0325543
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1137524   -0.0151939   0.2426986
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0020684    0.0009794   0.0031574
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0216417    0.0168097   0.0264738
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1321991    0.0684190   0.1959792
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0796003    0.0566939   0.1025068
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1060236    0.0806742   0.1313729
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1096845    0.0602749   0.1590942
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1662618    0.1523114   0.1802122
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2138949    0.0892146   0.3385752
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0585586   -0.0704796   0.1875967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0193548   -0.0201224   0.0588320
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0707607    0.0310086   0.1105128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1166539    0.0114041   0.2219037
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1322661    0.0364625   0.2280697
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1514540    0.0867424   0.2161656
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1327409    0.0714952   0.1939867
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0275845    0.0123186   0.0428505
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0228882    0.0125816   0.0331949
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0912967   -0.0669132   0.2495065
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0263450    0.0160729   0.0366171
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0025625    0.0012301   0.0038948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0140307    0.0087006   0.0193608
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1542841    0.0762620   0.2323062
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1048139    0.0771840   0.1324438
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1346001    0.0967704   0.1724298
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0727282    0.0463749   0.0990814
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1043150    0.0901319   0.1184982


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4789744    0.0959206   0.6997302
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0819012   -0.1291885   0.2535299
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3320420    0.1093039   0.4990795
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1533698   -0.0491755   0.3168134
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0604575    0.0042120   0.1135261
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1428929    0.1125586   0.1721902
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1310346    0.0168841   0.2319310
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2677605    0.1310233   0.3829816
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4366637    0.2635974   0.5690567
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3939511    0.2268966   0.5249080
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1628285    0.1179267   0.2054447
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0518016    0.0351347   0.0681806
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1957959   -0.1274752   0.4263783
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0741797    0.0409484   0.1062595
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0249446    0.0150842   0.0347062
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0562918    0.0451287   0.0673244
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2090573    0.1134049   0.2943900
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4265620    0.3382175   0.5031130
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2099724    0.1572054   0.2594357
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1248327    0.0828177   0.1649231
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3880205    0.3580306   0.4166094
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4292135   -0.2191174   0.7327597
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0916530   -0.1527165   0.2842176
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3778493   -0.0140265   0.6182827
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2441155   -0.0498103   0.4557480
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0906122   -0.0056475   0.1776580
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1337800    0.0039645   0.2466764
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2754213    0.1885345   0.3530048
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3526472    0.0753736   0.5467730
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4339213    0.2042317   0.5973136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4214896    0.1498289   0.6063448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4075011    0.1736604   0.5751686
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2318588    0.1636647   0.2944923
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0733009    0.0425349   0.1030783
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3558824   -0.2005949   0.6544317
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0213267    0.0095899   0.0329245
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0755235    0.0585511   0.0921900
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4053095    0.1755173   0.5710561
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4642113    0.3204122   0.5775829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4435295    0.3296358   0.5380728
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3064382    0.1554835   0.4304102
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4025176    0.3681071   0.4350542
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5067663    0.1009426   0.7294061
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1494253   -0.2528576   0.4225383
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0517241   -0.0599469   0.1516301
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1432567    0.0600441   0.2191027
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1540592    0.0009345   0.2837149
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2304637    0.0426755   0.3814155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5041097    0.2447461   0.6744047
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.5050144    0.2178806   0.6867348
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1215878    0.0521139   0.1859697
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0601398    0.0326219   0.0868750
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2349767   -0.3037179   0.5510833
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0738670    0.0412065   0.1054150
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0320153    0.0157392   0.0480222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0536521    0.0330892   0.0737778
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2026633    0.0920877   0.2997718
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4393568    0.3164823   0.5401424
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2086891    0.1470641   0.2658617
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1215480    0.0753537   0.1654344
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4821632    0.4154651   0.5412507
