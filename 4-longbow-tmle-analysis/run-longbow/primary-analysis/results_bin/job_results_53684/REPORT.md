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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        mhtcm           ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       19     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        6     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      104     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       59     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       46     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       20     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      115     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       15     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       49     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       38     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       30     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       25     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       56     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       59     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       39     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       33     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       31     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1       10     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       88     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       45     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       45     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       19     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0      149     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       20     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        4     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      161     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       43     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       23     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       10     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       29     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        4     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      138     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       15     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       42     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       40     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       12     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      350    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      218    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      270    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      217    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      199    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1      136    1390
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       46     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1       32     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      113     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1      107     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       56     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       55     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       62     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       54     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      180     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      182     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       84     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       62     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       98     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       40     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0      229     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      144     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0      101     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       57     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       98     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       42     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0      285     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      150     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0      123     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       57     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1138    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      352    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      282    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       76    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      380    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      131    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1076    2434
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      939    2434
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       50    2434
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       43    2434
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0      173    2434
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1      153    2434
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      127     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       16     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       49     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        7     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2261    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      639    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       62    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      161    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       65    3217
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0     9485   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3726   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0       90   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       35   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      291   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1      107   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     5901    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1918    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      410    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      164    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1093    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      344    9830
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0      121    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       44    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      605    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      230    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0      214    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       61    1275
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      381    1905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1      190    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      547    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1      276    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      341    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1      170    1905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      389    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      240    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      878    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      662    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      549    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      327    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0      474     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1       40     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0      123     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        8     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0      174     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1       18     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     3093   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1     1033   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    11759   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     4157   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     5060   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1735   26837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        6     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      125     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       38     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       52     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       14     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      118     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       12     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       51     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       38     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       37     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       18     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       79     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       36     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       25     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       34     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0      108     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       25     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       48     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       16     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0       59     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0      160     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      185     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       19     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        6     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       30     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      146     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        7     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       47     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      436    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      129    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      377    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      107    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      272    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       62    1383
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       67     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1       11     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      178     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       42     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       89     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       22     409
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       77     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       39     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      222     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      138     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0      101     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       45     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0      105     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       33     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0      272     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      101     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0      116     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       42     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0      108     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       32     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0      316     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      119     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0      137     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       43     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1279    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      211    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      312    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       46    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      439    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       72    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1284    2159
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      512    2159
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       51    2159
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1       25    2159
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0      210    2159
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       77    2159
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       34     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        0     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      127     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        5     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       51     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  0     9576   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3635   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   0       91   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   1       34   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              0      295   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              1      103   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6392    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1396    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      447    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      123    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1168    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      266    9792
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0      103    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       33    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      543    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      143    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0      188    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       35    1045
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  0      402    1863
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  1      153    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   0      618    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   1      189    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              0      372    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              1      129    1863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      475    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      154    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0     1169    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      370    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      683    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      193    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  0      159     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        2     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   0       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        2     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     3368   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      744   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    13102   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     2756   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     5558   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1212   26740
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      125     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       32     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       50     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1        9     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      116     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       48     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       45     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       10     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       75     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       36     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       50     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       18     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       36     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0      107     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       24     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       56     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1        7     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0       56     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0      142     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       13     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0       53     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      163     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       28     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       25     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      136     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       38     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       43     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      407    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      132    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      276    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      156    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      201    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1      105    1277
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       52     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1       24     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      139     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       76     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       67     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       43     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       70     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       28     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      220     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       97     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       93     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       34     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0      116     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       13     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0      275     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       61     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0      124     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       25     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0      123     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       15     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0      362     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1       57     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0      149     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       24     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1050    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      196    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      256    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       47    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      358    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       78    1985
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1291    2326
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      632    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       64    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       26    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0      207    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1      106    2326
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      124     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       12     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       47     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        6     225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2261    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      639    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       62    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      161    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       65    3217
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0    13069   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1      134   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0      123   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        2   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      393   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        5   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6162    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1      681    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      464    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1       55    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1148    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      114    8624
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0      132    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       14    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      658    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      104    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0      217    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       31    1156
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      493    1843
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1       55    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      684    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1      115    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      445    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1       51    1843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      449    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      132    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      991    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      431    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      620    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      186    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0      468     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1       38     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0      122     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        8     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0      170     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1       17     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     2352   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      363   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     8339   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1771   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     3732   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      690   17247


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/107edb28-4403-495b-a076-4035d2c444f3/80786cc8-9885-410c-97c8-4ee4193f9f12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/107edb28-4403-495b-a076-4035d2c444f3/80786cc8-9885-410c-97c8-4ee4193f9f12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/107edb28-4403-495b-a076-4035d2c444f3/80786cc8-9885-410c-97c8-4ee4193f9f12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/107edb28-4403-495b-a076-4035d2c444f3/80786cc8-9885-410c-97c8-4ee4193f9f12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.3619632   0.2880425   0.4358839
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.3030303   0.1919383   0.4141223
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4539463   0.3205210   0.5873716
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5111331   0.4187471   0.6035191
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.4557666   0.3385210   0.5730123
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.2308202   0.0950328   0.3666076
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.3388593   0.2578974   0.4198212
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2909157   0.1765446   0.4052868
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0980392   0.0508279   0.1452505
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1764706   0.0716399   0.2813013
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2307692   0.1160296   0.3455089
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3851952   0.3085134   0.4618770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4429161   0.3898464   0.4959858
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4083038   0.3185309   0.4980766
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.4121759   0.3023868   0.5219650
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4872822   0.4208770   0.5536874
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.5010635   0.4072068   0.5949203
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4665871   0.3757463   0.5574278
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5047406   0.4529422   0.5565389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4264064   0.3462927   0.5065202
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.3011624   0.2263067   0.3760181
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3854387   0.3364476   0.4344297
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3756504   0.2989195   0.4523812
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3018489   0.2253153   0.3783825
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3447377   0.2999820   0.3894933
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.3188270   0.2503913   0.3872628
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2358636   0.2142821   0.2574452
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2150958   0.1727552   0.2574365
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2553389   0.2174828   0.2931950
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.4669626   0.4451794   0.4887458
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4515175   0.3503465   0.5526885
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4666296   0.4119687   0.5212905
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2204410   0.1914925   0.2493895
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3227273   0.1897336   0.4557209
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2890190   0.2254129   0.3526252
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2821016   0.2198271   0.3443761
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2776461   0.2477730   0.3075193
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2575152   0.1890706   0.3259597
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2452608   0.2357220   0.2547995
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2868385   0.2496907   0.3239863
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2400548   0.2179589   0.2621507
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2722635   0.2046946   0.3398325
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2734080   0.2431844   0.3036316
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2263991   0.1773308   0.2754674
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3327013   0.2939898   0.3714128
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3346303   0.3023312   0.3669295
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3311000   0.2901716   0.3720284
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.3802143   0.3422304   0.4181982
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4295902   0.4048079   0.4543725
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.3730873   0.3408708   0.4053039
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0778210   0.0546480   0.1009940
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0610687   0.0200390   0.1020984
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500   0.0524959   0.1350041
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2493875   0.2349930   0.2637821
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2612145   0.2533663   0.2690626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2555242   0.2439281   0.2671202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.2331288   0.1680904   0.2981673
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.2121212   0.1132990   0.3109434
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3213552   0.1944015   0.4483089
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3119225   0.2263512   0.3974939
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3509004   0.2376729   0.4641279
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1707317   0.0553133   0.2861501
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1879699   0.1214324   0.2545075
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2500000   0.1436903   0.3563097
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2295650   0.1658171   0.2933128
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2150615   0.1640120   0.2661111
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1853554   0.1335973   0.2371135
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1801746   0.1050860   0.2552632
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1969267   0.1449958   0.2488575
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2040683   0.1295920   0.2785446
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3359921   0.2485912   0.4233930
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3829905   0.3325114   0.4334697
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.3102223   0.2349852   0.3854594
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2295483   0.1585358   0.3005609
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2658146   0.2206122   0.3110170
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2606503   0.1911992   0.3301014
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2315069   0.1612147   0.3017992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2729383   0.2309979   0.3148788
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2405985   0.1777622   0.3034348
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1413570   0.1236585   0.1590555
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1286485   0.0937853   0.1635116
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1402172   0.1100091   0.1704253
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2854865   0.2645915   0.3063815
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3239797   0.2177780   0.4301814
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2697519   0.2180004   0.3215033
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2752058   0.2122107   0.3382009
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2710928   0.2408624   0.3013232
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2518308   0.1808796   0.3227821
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1793586   0.1708367   0.1878805
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2154926   0.1815151   0.2494701
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1862161   0.1659881   0.2064441
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2458999   0.1733364   0.3184635
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2064119   0.1761056   0.2367183
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1558782   0.1075589   0.2041975
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2745698   0.2373529   0.3117867
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2346301   0.2053643   0.2638959
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2561569   0.2177858   0.2945280
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2436113   0.2101227   0.2770999
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2404399   0.2190397   0.2618400
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2204746   0.1928692   0.2480799
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1794139   0.1664934   0.1923344
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1739154   0.1670215   0.1808093
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1790018   0.1689372   0.1890664
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1679276   0.0627096   0.2731456
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3195849   0.2318625   0.4073074
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.2594438   0.1517374   0.3671502
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1219512   0.0215741   0.2223283
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1832061   0.1168219   0.2495903
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1111111   0.0333421   0.1888801
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0748299   0.0322087   0.1174512
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1739130   0.0641550   0.2836711
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1730769   0.0700415   0.2761124
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2465557   0.1854549   0.3076564
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3679760   0.3118250   0.4241270
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3471653   0.2644587   0.4298720
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3229096   0.2170755   0.4287437
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3547696   0.2907046   0.4188347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3980032   0.3060700   0.4899364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2862465   0.1952273   0.3772658
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3083680   0.2575605   0.3591754
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2608879   0.1832516   0.3385241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1023970   0.0500898   0.1547042
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1795935   0.1385017   0.2206853
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1688697   0.1080470   0.2296923
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1046489   0.0519581   0.1573397
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1343514   0.1014302   0.1672725
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1356198   0.0833884   0.1878512
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1572377   0.1369814   0.1774939
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1598154   0.1189151   0.2007158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1775716   0.1416715   0.2134717
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3303136   0.3093336   0.3512935
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2634247   0.1679431   0.3589063
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3328267   0.2801925   0.3854609
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2203191   0.1913289   0.2493092
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3255726   0.1943391   0.4568061
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2894559   0.2276875   0.3512242
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0994321   0.0923381   0.1065260
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1068259   0.0803618   0.1332899
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0903201   0.0745200   0.1061203
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0890792   0.0407755   0.1373829
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1363686   0.1119813   0.1607559
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1198536   0.0784471   0.1612601
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1036285   0.0783904   0.1288665
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1425802   0.1182678   0.1668926
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1033380   0.0766054   0.1300706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2283426   0.1940062   0.2626791
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3024150   0.2784892   0.3263409
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2300900   0.2009806   0.2591994
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0750988   0.0521214   0.0980762
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0615385   0.0202031   0.1028738
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0909091   0.0496805   0.1321377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1333773   0.1198956   0.1468591
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1753882   0.1675961   0.1831803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1558572   0.1444189   0.1672955


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3109244   0.2519946   0.3698541
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1406250   0.0979572   0.1832928
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4743276   0.4258753   0.5227800
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369648   0.2198019   0.2541277
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4663106   0.4464881   0.4861331
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816368   0.2197012   0.3435724
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2467955   0.2382720   0.2553190
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2627451   0.2385772   0.2869130
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3338583   0.3126757   0.3550409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580393   0.2515701   0.2645084
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2016807   0.1505956   0.2527658
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1833741   0.1458251   0.2209231
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1394659   0.1254831   0.1534487
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2843909   0.2653574   0.3034244
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746469   0.2119817   0.3373120
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1822917   0.1746442   0.1899391
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2019139   0.1775635   0.2262643
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2528180   0.2330767   0.2725593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762154   0.1705946   0.1818362
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0743652   0.1542062
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3566085   0.3096676   0.4035494
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1617128   0.1455117   0.1779140
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3284609   0.3093705   0.3475512
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0985622   0.0922708   0.1048535
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1288927   0.1095683   0.1482172
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1199132   0.1050778   0.1347486
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1637386   0.1576238   0.1698535


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          1.5081800   0.7281453   3.1238365
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          1.2626263   0.5734697   2.7799639
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.1259770   0.7966150   1.5915145
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0040100   0.6791595   1.4842406
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.4680660   0.7786642   2.7678398
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          1.2603562   0.6212440   2.5569625
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8000000   0.8378448   3.8670647
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.3538461   1.1780658   4.7031256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.1498485   0.9476524   1.3951863
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0599919   0.9232199   1.2170262
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1822191   0.8766657   1.5942703
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2156547   0.8780172   1.6831291
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0817715   0.8681103   1.3480194
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9138840   0.6968054   1.1985901
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2798367   0.9686574   1.6909820
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.2473349   0.9046282   1.7198717
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1420869   0.8588363   1.5187556
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0562472   0.7576220   1.4725787
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9119500   0.7339243   1.1331589
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0825700   0.9096548   1.2883544
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9669243   0.7691178   1.2156039
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9992869   0.8809181   1.1335609
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.4640074   0.9325461   2.2983505
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3110945   1.0328684   1.6642671
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9842062   0.8093540   1.1968333
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9128455   0.7857609   1.0604840
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1695248   1.0215889   1.3388832
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9787736   0.8857025   1.0816248
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0042035   0.7657548   1.3169030
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8315440   0.5984872   1.1553553
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0057981   0.8646804   1.1699464
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9951869   0.8398288   1.1792844
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1298634   1.0067328   1.2680538
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9812554   0.8598510   1.1198012
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.7847328   0.3763243   1.6363695
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2046875   0.7081457   2.0493974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0474239   0.9868268   1.1117420
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0246067   0.9537051   1.1007794
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          0.9713701   0.4576722   2.0616503
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.8838384   0.3815740   2.0472313
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.9706474   0.5996455   1.5711889
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0919395   0.6554251   1.8191735
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.1009667   0.5132962   2.3614585
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          1.4642857   0.6588380   3.2544155
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9368222   0.7032149   1.2480336
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.8074204   0.6375138   1.0226096
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.0929770   0.6654567   1.7951561
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.1326143   0.6496718   1.9745589
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1398794   0.8516801   1.5256023
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9233023   0.6471119   1.3173720
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1579896   0.8141194   1.6471048
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.1354921   0.7551850   1.7073198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1789640   0.8389070   1.6568654
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0392712   0.6963137   1.5511467
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9100961   0.6751029   1.2268868
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9919367   0.7732745   1.2724309
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.1348336   0.8110532   1.5878704
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9448847   0.7694507   1.1603176
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9850548   0.8066027   1.2029876
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9150637   0.7757394   1.0794109
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2014621   1.0189936   1.4166048
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0382334   0.9221204   1.1689674
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8394143   0.6039072   1.1667627
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6339090   0.4131362   0.9726589
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8545371   0.7108233   1.0273070
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9329391   0.7622980   1.1417782
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9869815   0.8379307   1.1625455
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9050259   0.7514647   1.0899671
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9693531   0.8982608   1.0460718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9977032   0.9116694   1.0918559
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9031113   0.9596516   3.7741118
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.5449741   0.7304228   3.2678949
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.5022901   0.6112012   3.6925245
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          0.9111111   0.3092704   2.6841345
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.3241107   0.9932349   5.4382807
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.3129371   1.0147224   5.2720607
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4924660   1.0912427   2.0412093
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4080604   1.1778563   1.6832565
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.0986656   0.7553267   1.5980715
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2325530   0.8252800   1.8408139
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0772811   0.7531385   1.5409311
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9114098   0.5895738   1.4089292
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.7538937   1.0022012   3.0693869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6491662   0.8822294   3.0828141
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.2838297   0.7331570   2.2481115
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2959505   0.6871375   2.4441797
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.0163940   0.7630511   1.3538500
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1293197   0.8885394   1.4353477
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.7974988   0.5520404   1.1520973
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0076083   0.8498482   1.1946539
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.4777322   0.9473726   2.3049983
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3138031   1.0401384   1.6594699
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0743599   0.8301941   1.3903365
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9083598   0.7520473   1.0971617
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5308698   0.8643497   2.7113590
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3454729   0.7075127   2.5586782
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.3758790   1.0222107   1.8519108
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9971970   0.6990808   1.4224420
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3243915   1.1173604   1.5697825
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0076524   0.8278485   1.2265087
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.8194332   0.3917059   1.7142216
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2105263   0.7004604   2.0920153
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.3149778   1.1809036   1.4642741
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.1685436   1.0350066   1.3193096


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0946457   -0.0665369   0.2558283
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0295248   -0.0881175   0.1471671
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0801042   -0.0453943   0.2056026
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0425858    0.0053674   0.0798042
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0255962   -0.0074106   0.0586030
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0621517   -0.0369895   0.1612930
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0109770   -0.0711386   0.0930927
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0590768   -0.0088076   0.1269611
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0279524   -0.0415529   0.0974578
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0011012   -0.0120127   0.0142151
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0006520   -0.0097089   0.0084049
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0074110    0.0008649   0.0139571
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0004648   -0.0019207   0.0009911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015348   -0.0028159   0.0058855
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0095184   -0.0724640   0.0534271
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0011570   -0.0312421   0.0335560
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0233982   -0.0105662   0.0573626
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0010320   -0.0135015   0.0155656
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0086517   -0.0037769   0.0210804
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0116535   -0.1706331   0.1473260
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0050911   -0.1069528   0.1171350
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0309490   -0.0755469   0.1374448
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0140913   -0.0449985   0.0168158
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0031995   -0.0672633   0.0736623
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0209211   -0.0581278   0.0999699
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0335309   -0.0302741   0.0973359
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0254467   -0.0385893   0.0894827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0018911   -0.0125152   0.0087329
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0010956   -0.0096535   0.0074623
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005589   -0.0020558   0.0009379
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0029330   -0.0010281   0.0068942
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0439861   -0.1110075   0.0230354
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0217518   -0.0525786   0.0090751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0080660   -0.0378129   0.0216809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0031985   -0.0144784   0.0080814
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1055767    0.0091154   0.2020379
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0312403   -0.0619769   0.1244574
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0394558    0.0043797   0.0745319
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0611969    0.0288456   0.0935481
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0336989   -0.0624020   0.1297998
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0071114   -0.0754220   0.0896448
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0588408    0.0093798   0.1083017
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0268579   -0.0215785   0.0752944
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0044752   -0.0081280   0.0170784
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0018527   -0.0105727   0.0068673
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0075330    0.0009408   0.0141251
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0008699   -0.0040377   0.0022978
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0398136   -0.0063326   0.0859598
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0162847   -0.0055862   0.0381557
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0383003    0.0072413   0.0693593
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0014504   -0.0130102   0.0159110
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0303613    0.0181724   0.0425502


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.2828235   -0.4024019   0.6332420
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0610684   -0.2168564   0.2755163
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2576323   -0.2792657   0.5691983
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.3028322   -0.0008100   0.5143505
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0623095   -0.0251762   0.1423294
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1310313   -0.1055899   0.3170102
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0229855   -0.1650223   0.1806531
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1639932   -0.0469027   0.3324046
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0847553   -0.1522228   0.2729941
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0046471   -0.0522621   0.0584784
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0013982   -0.0210104   0.0178373
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0325256    0.0023649   0.0617744
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0016503   -0.0067645   0.0034379
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0062188   -0.0115669   0.0236918
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0362269   -0.3057553   0.1776666
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0034654   -0.0984616   0.0959346
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0579719   -0.0300592   0.1384797
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0130881   -0.1895327   0.1811952
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0335287   -0.0159249   0.0805750
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0510345   -1.0383796   0.4580629
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0155956   -0.3951009   0.3053892
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.1534553   -0.5780681   0.5458764
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0653971   -0.2142443   0.0652038
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0174478   -0.4520686   0.3351494
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0586167   -0.1911558   0.2560146
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1274554   -0.1521303   0.3391945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0990322   -0.1879140   0.3166653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0135598   -0.0926615   0.0598155
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0038524   -0.0344004   0.0257934
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0020351   -0.0074218   0.0033228
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0160898   -0.0058747   0.0375747
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2178457   -0.5988726   0.0723788
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0860372   -0.2150073   0.0292430
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0342440   -0.1685635   0.0846363
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0181511   -0.0841815   0.0438579
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.3860147   -0.0873101   0.6532931
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2039295   -0.7049484   0.6283007
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.3452381   -0.0142598   0.5773143
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1988508    0.0777376   0.3040592
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0944983   -0.2193256   0.3275518
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0242414   -0.3018788   0.2686686
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.3649317   -0.0201695   0.6046620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2042323   -0.2629086   0.4985811
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0276737   -0.0534431   0.1025444
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0056405   -0.0325446   0.0205626
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0330608    0.0026580   0.0625367
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0088263   -0.0414779   0.0228016
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.3088892   -0.1578170   0.5874701
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.1358043   -0.0662494   0.2995690
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1436389    0.0190102   0.2524343
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0189472   -0.1893171   0.1907419
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1854254    0.1073376   0.2566822
