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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       18     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        7     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1      118     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       36     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       30     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      104     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1       26     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       38     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1       15     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       29     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1       10     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       22     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       30     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       85     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       32     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       40     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0       75     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       58     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       43     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       21     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       27     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1       33     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0       53     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1      116     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       24     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1       37     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0       91     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1      113     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0        7     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1       26     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       13     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1       20     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       29     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      124     256
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      174     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1      199     669
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1921    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      942    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       30    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       59    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       95    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11031   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1     2180   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       80   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1       45   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      299   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       99   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4606    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     3233    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      217    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      357    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      705    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      734    9852
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     2918   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1     1237   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     6767   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     9336   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4033   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     2823   27114
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       20     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        5     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       93     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       70     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       53     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       13     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      108     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1       22     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       40     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1       13     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       32     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        7     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       42     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    0       68     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    1       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       49     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       23     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        3     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      106     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       27     238
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       16     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1       15     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       55     256
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      262     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1      111     669
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     5760    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     2072    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      326    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      246    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      940    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      496    9840
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3148   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      997   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     8235   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     7830   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4551   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     2287   27048
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       17     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       43     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       48     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       32     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       17     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0       96     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       36     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        2     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       27     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        3     168
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       33     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       29     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       38     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       29     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       17     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0       73     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       31     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       43     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       10     195
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       26     148
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1       13     148
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0       44     148
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1       36     148
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       20     148
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        9     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0       82     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1       42     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        9     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       11     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        5     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       27     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       69     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       30     145
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0       93     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       16     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      143     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0       84     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       33     457
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1921    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      942    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       30    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       59    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       95    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3177
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11023   12394
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1      926   12394
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       80   12394
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1       19   12394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      299   12394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       47   12394
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     3901    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     1161    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      183    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      111    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      597    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      238    6191
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     1895   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      240   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     3842   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     1506   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     2474   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      536   10493


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
![](/tmp/77532150-4d7d-434e-933c-39afe2dd0b8e/1301ddef-631d-44c3-831e-f225e589624f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77532150-4d7d-434e-933c-39afe2dd0b8e/1301ddef-631d-44c3-831e-f225e589624f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/77532150-4d7d-434e-933c-39afe2dd0b8e/1301ddef-631d-44c3-831e-f225e589624f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/77532150-4d7d-434e-933c-39afe2dd0b8e/1301ddef-631d-44c3-831e-f225e589624f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2800000   0.1036482   0.4563518
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7239264   0.6551609   0.7926919
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.4545455   0.3341803   0.5749106
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1998916   0.1305809   0.2692023
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2746056   0.1508844   0.3983268
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.2464750   0.1058653   0.3870847
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3864670   0.2564004   0.5165336
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.7406116   0.6590275   0.8221957
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.5597219   0.4413378   0.6781060
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.5308311   0.4026538   0.6590084
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.6834646   0.6130146   0.7539145
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.5980142   0.4739155   0.7221129
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.5539216   0.4855826   0.6222605
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.7878788   0.6481395   0.9276181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.6060606   0.4390402   0.7730810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5884616   0.5562338   0.6206894
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.7879886   0.7269663   0.8490110
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7144460   0.6417443   0.7871477
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7102738   0.6087286   0.8118190
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.8726673   0.8283916   0.9169430
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8566781   0.7908961   0.9224600
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4861397   0.3954145   0.5768649
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7449358   0.7001386   0.7897331
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5967045   0.5164988   0.6769101
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2633687   0.1888031   0.3379343
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5342325   0.4834091   0.5850558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.4299976   0.3520826   0.5079126
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2859968   0.2100966   0.3618969
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.5580871   0.5113272   0.6048470
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.4407228   0.3676289   0.5138166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2894579   0.2663875   0.3125282
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4939617   0.4423508   0.5455726
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4064972   0.3635621   0.4494323
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5143695   0.4925072   0.5362318
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8297803   0.7555120   0.9040486
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6323842   0.5798339   0.6849346
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.4362125   0.2690904   0.6033345
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.6065716   0.5250026   0.6881405
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.5135684   0.3822468   0.6448899
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3292562   0.2764736   0.3820387
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6551237   0.5268299   0.7834174
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5768219   0.3983047   0.7553391
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.1649438   0.1460263   0.1838614
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3530601   0.3130435   0.3930766
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2503460   0.1989896   0.3017023
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4125220   0.4016268   0.4234172
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6235869   0.5840203   0.6631536
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.5102493   0.4843499   0.5361487
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6073390   0.5336996   0.6809784
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8105425   0.7841147   0.8369702
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7242504   0.6723065   0.7761943
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2055149   0.1725701   0.2384598
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.4674459   0.4333375   0.5015544
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3580814   0.3162537   0.3999090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5411260   0.5021046   0.5801473
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7661501   0.7449942   0.7873061
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6487672   0.6169468   0.6805876
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5569357   0.5139219   0.5999494
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8464200   0.7837675   0.9090726
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7126712   0.6476667   0.7776758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3015984   0.2859427   0.3172542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5781747   0.5688556   0.5874938
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4137917   0.4006396   0.4269437
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2000000   0.0428933   0.3571067
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.4294479   0.3533077   0.5055880
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1969697   0.1008310   0.2931084
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1692308   0.1046302   0.2338314
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2452830   0.1291873   0.3613788
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1794872   0.0587738   0.3002006
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2688709   0.1528470   0.3848947
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.4039039   0.3151940   0.4926138
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3335769   0.2230086   0.4441452
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3283166   0.2058612   0.4507720
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4677539   0.3912142   0.5442935
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.4832808   0.3597330   0.6068287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3467664   0.2813098   0.4122231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5016327   0.3371988   0.6660667
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4264943   0.2447191   0.6082696
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3610115   0.2844095   0.4376135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6719101   0.5375493   0.8062709
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3505206   0.2142542   0.4867870
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3091329   0.2702702   0.3479957
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5564922   0.4968478   0.6161367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4408836   0.3804804   0.5012868
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2458016   0.1484373   0.3431659
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4829788   0.4166096   0.5493479
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3140190   0.2260819   0.4019562
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1997220   0.1271696   0.2722745
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.4314598   0.3804997   0.4824199
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2669315   0.1952204   0.3386427
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1422965   0.0829710   0.2016219
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2952794   0.2486673   0.3418915
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2151192   0.1506571   0.2795812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1722852   0.1085802   0.2359902
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3566687   0.3114821   0.4018554
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2595608   0.1946093   0.3245124
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1487688   0.1306663   0.1668714
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2933618   0.2458283   0.3408953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2550096   0.2168151   0.2932040
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2912844   0.2702536   0.3123152
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.5083408   0.3932234   0.6234583
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4013032   0.3445494   0.4580571
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2058824   0.0696581   0.3421066
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3712121   0.2886049   0.4538194
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2641509   0.1451845   0.3831174
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0948970   0.0818081   0.1079860
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2081182   0.1796599   0.2365766
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1267081   0.0870603   0.1663560
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2646838   0.2549111   0.2744566
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4322207   0.3916124   0.4728290
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3449979   0.3203226   0.3696733
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1966535   0.1297818   0.2635253
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.3821238   0.3460890   0.4181586
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2326424   0.1779062   0.2873785
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0918908   0.0678580   0.1159236
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2366000   0.2073192   0.2658808
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1558443   0.1239310   0.1877577
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1341833   0.1075793   0.1607873
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3116885   0.2885855   0.3347915
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1846292   0.1588571   0.2104013
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2494989   0.1821038   0.3168941
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5601563   0.3937074   0.7266051
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4984371   0.3808539   0.6160203
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2448105   0.2301615   0.2594595
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4855407   0.4764627   0.4946187
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3362333   0.3235353   0.3489313
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2142857   0.0897890   0.3387824
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5671642   0.4481408   0.6861875
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3695652   0.2296257   0.5095047
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3333333   0.1848828   0.4817839
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4500000   0.3406137   0.5593863
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3103448   0.1413943   0.4792953
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3387097   0.2551410   0.4222784
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5625000   0.3186432   0.8063568
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.3125000   0.0846516   0.5403484
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4231827   0.3687888   0.4775767
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.6064038   0.5287680   0.6840397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.5227238   0.4493322   0.5961153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.6648653   0.5406731   0.7890575
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.7874405   0.7099217   0.8649594
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8141257   0.7229618   0.9052897
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4384274   0.3278548   0.5490000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6638440   0.5929167   0.7347714
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5419010   0.4405359   0.6432661
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1441203   0.0778298   0.2104109
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3822867   0.3194172   0.4451563
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2814763   0.1991242   0.3638283
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1354403   0.0729751   0.1979055
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3315791   0.2755118   0.3876464
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2581896   0.1818717   0.3345074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1992930   0.1751403   0.2234456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.3471852   0.2821620   0.4122084
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2445760   0.1973281   0.2918239
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3577409   0.3328672   0.3826146
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7130681   0.5911960   0.8349403
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4481521   0.3787945   0.5175097
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3190076   0.1427144   0.4953008
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.4272008   0.3218212   0.5325803
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.3625458   0.2093737   0.5157180
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3292229   0.2762339   0.3822120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6533790   0.5274083   0.7793497
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5803324   0.3928726   0.7677923
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0774961   0.0635564   0.0914359
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1913307   0.1687995   0.2138619
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1362347   0.0916866   0.1807828
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2293494   0.2177642   0.2409345
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3805162   0.3252113   0.4358210
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2838140   0.2529121   0.3147160
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6185719   0.5312324   0.7059113
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8026010   0.7682503   0.8369518
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7475394   0.6867173   0.8083614
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1336918   0.1040076   0.1633760
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3155521   0.2787127   0.3523915
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2476180   0.2059972   0.2892388
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5104232   0.4664675   0.5543789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7263769   0.6982717   0.7544821
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6239764   0.5866909   0.6612618
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5258521   0.4803787   0.5713255
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8258186   0.7526658   0.8989713
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.6617249   0.5858377   0.7376120
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1121546   0.0976002   0.1267089
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2816954   0.2676723   0.2957185
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1782934   0.1631407   0.1934460


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2297297   0.1742694   0.2851900
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6074380   0.5457864   0.6690897
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5888889   0.5300901   0.6476877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6865672   0.6433613   0.7297731
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8386308   0.8029353   0.8743263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454854   0.3262920   0.3646787
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5419753   0.5221615   0.5617891
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5574468   0.4938076   0.6210860
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692151   0.1502685   0.1881616
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4388957   0.4290960   0.4486953
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7662539   0.7431681   0.7893396
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3599161   0.3383625   0.3814696
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4940621   0.4862037   0.5019205
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1891892   0.1375523   0.2408261
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3814815   0.3234338   0.4395292
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4266382   0.3925570   0.4607194
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3906634   0.3432048   0.4381220
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1937262   0.1777743   0.2096780
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3141798   0.2945906   0.3337690
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3196347   0.2577308   0.3815386
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0969856   0.0839703   0.1100009
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2859756   0.2770468   0.2949044
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3261682   0.2980650   0.3542714
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1714744   0.1543953   0.1885534
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108991   0.4034353   0.4183630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4939435   0.4498186   0.5380683
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268695   0.2061992   0.2475397
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3805837   0.3573526   0.4038147
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3885350   0.3120482   0.4650219
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0800387   0.0658162   0.0942612
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2439024   0.2332045   0.2546004
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7612827   0.7324712   0.7900941
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2385621   0.2171991   0.2599251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2174783   0.2081017   0.2268550


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.5854514   1.3674523   4.888331
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          1.6233766   0.8197776   3.214716
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.3737728   0.7769158   2.429159
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.2330433   0.6321626   2.405071
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9163645   1.3449683   2.730512
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.4483046   0.9739771   2.153630
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.2875369   0.9905156   1.673625
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.1265622   0.8184632   1.550641
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.4223652   1.1459916   1.765391
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.0941271   0.8089790   1.479784
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.3390655   1.2394120   1.446731
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2140910   1.1260844   1.308976
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.2286351   1.0556428   1.429976
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2061237   1.0254493   1.418631
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5323492   1.2597392   1.863953
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2274341   0.9746714   1.545746
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0284583   1.5043955   2.735081
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6326829   1.1666907   2.284798
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.9513755   1.4771012   2.577932
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5410060   1.1270025   2.107093
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7065063   1.4963511   1.946177
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4043399   1.2300796   1.603287
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6131989   1.4609116   1.781361
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2294358   1.1200429   1.349513
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.3905416   0.9269820   2.085915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.1773354   0.7446134   1.861528
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9897081   1.5556745   2.544837
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7518941   1.2781542   2.401223
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1404869   1.8365685   2.494698
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5177652   1.2423066   1.854302
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.5116451   1.4112841   1.619143
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2369019   1.1681019   1.309754
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3345799   1.1772576   1.512926
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1924977   1.0361041   1.372498
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2745108   1.9073140   2.712400
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7423618   1.4287365   2.124832
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4158444   1.3105994   1.529541
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1989208   1.0987543   1.308219
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5197806   1.3655559   1.691423
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2796294   1.1353946   1.442187
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9170349   1.8185493   2.020854
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3719954   1.2924229   1.456467
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.1472393   0.9597232   4.804131
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.9848485   0.3905933   2.483213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.4493997   0.7890572   2.662366
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.0606061   0.4894427   2.298298
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.5022227   0.9247906   2.440199
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2406583   0.7220540   2.131742
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4247038   0.9482046   2.140657
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.4719964   0.9351942   2.316924
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.4466012   0.9868990   2.120435
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.2299182   0.7723073   1.958675
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8611874   1.3896859   2.492663
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9709402   0.6226591   1.514031
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.8001713   1.4906455   2.173969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4261942   1.1389915   1.785817
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9649134   1.2914077   2.989671
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2775307   0.7858654   2.076799
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.1603017   1.4747479   3.164543
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3365153   0.8508541   2.099388
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0751000   1.3287660   3.240631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5117673   0.9049861   2.525387
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.0702232   1.3996654   3.062035
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5065769   0.9643790   2.353612
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9719304   1.6101167   2.415048
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7141330   1.4132150   2.079126
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.7451701   1.3759340   2.213492
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3777025   1.1753546   1.614886
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.8030303   0.8970788   3.623894
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2830189   0.5762704   2.856536
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1930958   1.8241957   2.636597
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.3352174   0.9716722   1.834781
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6329697   1.4761394   1.806462
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3034341   1.2026075   1.412714
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.9431325   1.3649528   2.766223
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1830064   0.7828656   1.787669
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.5747959   1.9277251   3.439066
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6959732   1.2163022   2.364811
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.3228553   1.8796232   2.870605
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3759472   1.0797557   1.753388
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          2.2451247   1.5036913   3.352141
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.9977524   1.3947321   2.861492
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9833326   1.8649064   2.109279
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3734431   1.2808690   1.472708
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6467662   1.4270572   4.908963
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.7246377   0.8620245   3.450453
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.3500000   0.8128024   2.242242
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.9310345   0.4607905   1.881170
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.6607143   1.0084685   2.734812
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          0.9226190   0.4273006   1.992101
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4329597   1.1940541   1.719665
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2352200   1.0762860   1.417624
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1843610   0.9588305   1.462940
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2244973   0.9841195   1.523589
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5141482   1.1534443   1.987651
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2360108   0.9011744   1.695258
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.6525525   1.6269066   4.324793
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.9530644   1.1314982   3.371159
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.4481575   1.4968015   4.004188
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.9062983   1.1018381   3.298101
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7420843   1.3937060   2.177545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2272183   0.9767897   1.541852
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.9932529   1.6572395   2.397395
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2527282   1.0574005   1.484138
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.3391555   0.7334180   2.445178
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.1364803   0.5662666   2.280883
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9846096   1.5506523   2.540012
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7627340   1.2689422   2.448678
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.4689060   2.0836242   2.925430
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7579542   1.3027664   2.372185
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6591114   1.4225205   1.935052
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2374746   1.0974457   1.395371
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.2975065   1.1195675   1.503726
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2084923   1.0268366   1.422284
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.3602952   1.8379003   3.031173
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.8521555   1.4021117   2.446652
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4230875   1.2948689   1.564002
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2224687   1.1007815   1.357608
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5704388   1.3875180   1.777475
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2583859   1.0901676   1.452561
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.5116708   2.1905828   2.879823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.5897112   1.3630170   1.854109


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.3302362    0.1611525   0.4993200
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0298381   -0.0180626   0.0777389
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2209710    0.1063354   0.3356066
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1105482   -0.0028746   0.2239710
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0349673    0.0022519   0.0676827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0981055    0.0739747   0.1222364
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1283570    0.0404570   0.2162570
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1784072    0.0972707   0.2595436
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1880513    0.1192513   0.2568513
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1934734    0.1233056   0.2636412
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0560275    0.0408846   0.0711704
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0276058    0.0187393   0.0364724
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1212344   -0.0337087   0.2761774
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0267401    0.0162882   0.0371919
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0042713    0.0026549   0.0058877
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0263736    0.0212910   0.0314562
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1589148    0.0914054   0.2264243
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1544011    0.1244491   0.1843531
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1452704    0.1110643   0.1794765
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0786677    0.0532854   0.1040499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1924637    0.1780565   0.2068708
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1464567   -0.0060612   0.2989745
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0199584   -0.0242233   0.0641402
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0741043   -0.0321918   0.1804005
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1130627    0.0020855   0.2240400
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0347151   -0.0000814   0.0695115
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0569572    0.0060878   0.1078266
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1175052    0.0795921   0.1554183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1448618    0.0544003   0.2353233
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1500395    0.0815168   0.2185622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1043403    0.0482046   0.1604760
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1310261    0.0705083   0.1915439
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0449573    0.0319612   0.0579534
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0228954    0.0133739   0.0324169
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1137524   -0.0151939   0.2426986
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0020886    0.0010009   0.0031762
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0212918    0.0164656   0.0261180
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1295147    0.0652878   0.1937416
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0795836    0.0566778   0.1024893
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1048618    0.0794919   0.1302317
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1084346    0.0589131   0.1579561
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1660886    0.1522844   0.1798928
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1986175    0.0839587   0.3132763
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0585586   -0.0704796   0.1875967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0202647   -0.0195397   0.0600691
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0707607    0.0310086   0.1105128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.0923363   -0.0135477   0.1982204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1354856    0.0378225   0.2331488
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1556609    0.0918400   0.2194818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1274056    0.0671512   0.1876600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0275765    0.0123263   0.0428266
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0228428    0.0125329   0.0331526
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0695274   -0.0918995   0.2309544
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0267733    0.0161588   0.0373878
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0025426    0.0012117   0.0038735
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0145531    0.0091338   0.0199723
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1427108    0.0632594   0.2221622
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1048703    0.0772311   0.1325095
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1345556    0.0966206   0.1724906
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0724973    0.0461716   0.0988230
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1053237    0.0911331   0.1195143


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.5411613    0.1566110   0.7503727
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1298837   -0.1044757   0.3145142
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3637754    0.1393404   0.5296843
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1723601   -0.0263085   0.3325713
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0593785    0.0015845   0.1138270
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1428929    0.1125586   0.1721902
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1530555    0.0397222   0.2530130
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2684644    0.1336887   0.3822724
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4165772    0.2424468   0.5506822
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4035150    0.2370517   0.5336587
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1621704    0.1172662   0.2047904
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0509356    0.0342905   0.0672938
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2174815   -0.1175883   0.4520923
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0751133    0.0416569   0.1074017
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0252416    0.0153961   0.0349887
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0600909    0.0484033   0.0716349
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2073919    0.1132178   0.2915649
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4289920    0.3411899   0.5050924
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2116421    0.1595338   0.2605198
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1237685    0.0818263   0.1637948
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3895536    0.3596900   0.4180244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4227273   -0.2327309   0.7296703
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1054945   -0.1600130   0.3102318
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2160632   -0.1611827   0.4707492
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2561578   -0.0438759   0.4699549
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0910006   -0.0049880   0.1778212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1362715    0.0051502   0.2501110
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2754213    0.1885345   0.3530048
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3708098    0.0918106   0.5640994
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4289766    0.1981177   0.5933721
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4230525    0.1496725   0.6085409
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4319856    0.1965483   0.5984322
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2320663    0.1638268   0.2947368
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0728735    0.0421191   0.1026405
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3558824   -0.2005949   0.6544317
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0215348    0.0098112   0.0331196
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0744531    0.0574654   0.0911347
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3970795    0.1659080   0.5641810
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4641135    0.3203902   0.5774423
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4386694    0.3246720   0.5334237
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3029463    0.1518904   0.4270977
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4042078    0.3699940   0.4365634
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4810268    0.1206505   0.6937132
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1494253   -0.2528576   0.4225383
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0564516   -0.0612510   0.1610999
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1432567    0.0600441   0.2191027
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1219442   -0.0311078   0.2522780
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2360735    0.0438802   0.3896332
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5192483    0.2627000   0.6865289
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4847160    0.2077676   0.6648488
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1215522    0.0521603   0.1858639
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0600204    0.0324964   0.0867613
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1789477   -0.3623859   0.5051865
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0752067    0.0411504   0.1080534
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0317669    0.0155044   0.0477608
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0596675    0.0372481   0.0815649
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1874610    0.0749717   0.2862708
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4395933    0.3166620   0.5404094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2086202    0.1468114   0.2659512
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1211621    0.0750158   0.1650062
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4842953    0.4179029   0.5431152
