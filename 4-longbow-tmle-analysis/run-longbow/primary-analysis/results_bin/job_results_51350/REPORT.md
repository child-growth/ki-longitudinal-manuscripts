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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      116     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       14     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       49     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       38     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       31     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       24     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       57     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       58     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       39     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       33     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       34     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        7     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       89     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       44     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       46     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       18     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0      150     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       19     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        4     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      162     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       42     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       23     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       10     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      139     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       14     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       42     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       43     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9     256
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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       97     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       43     755
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
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1214    2433
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      800    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       57    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       36    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0      199    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1      127    2433
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      127     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       16     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       49     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        7     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2237    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      627    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       60    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      159    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       66    3178
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0     9485   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3726   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0       90   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       35   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      291   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1      107   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     5915    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1904    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      412    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      162    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1097    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      340    9830
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     3093   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1     1033   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    11759   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     4160   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     5060   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1735   26840
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        6     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      126     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       37     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       52     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       14     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      119     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       11     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       51     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       38     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       38     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       17     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       80     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       35     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       48     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       24     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       37     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        4     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0      109     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       24     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       49     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       15     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0       59     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0      160     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      186     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        6     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       31     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      147     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       48     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        4     256
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0      107     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       33     755
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
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1483    2133
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      291    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       61    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1       15    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0      243    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       40    2133
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6392    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1396    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      448    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      122    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1167    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      266    9791
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     3367   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      745   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    13102   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     2759   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     5558   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1212   26743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      124     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       33     240
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
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0      143     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       12     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0       53     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      164     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       27     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       25     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      136     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       38     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       45     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        7     245
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       70     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       28     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      219     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       97     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       93     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       34     541
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
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1290    2326
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      633    2326
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2237    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      627    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       60    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      159    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       66    3178
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0    13069   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1      134   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0      123   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        2   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      393   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        5   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6149    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1      665    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      465    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1       53    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1144    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      110    8586
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/dee5e1ea-b259-4d88-9ebb-fe5ae665fdb3/d0b9f1cf-c7f2-47bf-b8fd-120f809fc959/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dee5e1ea-b259-4d88-9ebb-fe5ae665fdb3/d0b9f1cf-c7f2-47bf-b8fd-120f809fc959/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dee5e1ea-b259-4d88-9ebb-fe5ae665fdb3/d0b9f1cf-c7f2-47bf-b8fd-120f809fc959/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dee5e1ea-b259-4d88-9ebb-fe5ae665fdb3/d0b9f1cf-c7f2-47bf-b8fd-120f809fc959/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.3619632   0.2880425   0.4358839
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.3030303   0.1919383   0.4141223
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4385822   0.3041514   0.5730131
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5007132   0.4080716   0.5933548
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.4572363   0.3392637   0.5752089
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1707317   0.0553133   0.2861501
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.3308271   0.2506950   0.4109591
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2812500   0.1708656   0.3916344
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0915033   0.0457279   0.1372787
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1764706   0.0716399   0.2813013
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1730769   0.0700505   0.2761033
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3851952   0.3085134   0.4618770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4429161   0.3898464   0.4959858
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4083038   0.3185309   0.4980766
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.4091527   0.2996038   0.5187016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4857215   0.4193433   0.5520998
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4892922   0.3945989   0.5839855
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4599995   0.3690143   0.5509847
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5059806   0.4540964   0.5578648
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4187619   0.3385477   0.4989762
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2941453   0.2181093   0.3701813
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3834897   0.3341825   0.4327969
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3647864   0.2890577   0.4405152
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3054060   0.2283881   0.3824239
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3438071   0.2990273   0.3885870
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.3150041   0.2463917   0.3836166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2358749   0.2142969   0.2574529
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2162901   0.1737166   0.2588636
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2558308   0.2181896   0.2934721
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3992487   0.3778911   0.4206063
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3673593   0.2672735   0.4674451
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3824890   0.3290618   0.4359162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2189484   0.1902295   0.2476673
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3206335   0.1810522   0.4602147
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2903921   0.2293107   0.3514734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2820386   0.2197481   0.3443291
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2761158   0.2460466   0.3061849
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2699419   0.1971498   0.3427341
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2435172   0.2340034   0.2530310
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2824286   0.2455423   0.3193149
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2366818   0.2147187   0.2586448
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2679333   0.2002122   0.3356545
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2737276   0.2434883   0.3039669
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2261485   0.1768908   0.2754061
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3336674   0.2949580   0.3723769
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3353655   0.3030903   0.3676408
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3344170   0.2934406   0.3753935
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.3824021   0.3442607   0.4205436
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4299821   0.4052090   0.4547551
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.3729769   0.3406996   0.4052541
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0778210   0.0546480   0.1009940
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0610687   0.0200390   0.1020984
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500   0.0524959   0.1350041
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2494837   0.2350797   0.2638876
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2613844   0.2535405   0.2692282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2554612   0.2438595   0.2670628
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.2269939   0.1625607   0.2914270
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.2121212   0.1132990   0.3109434
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3152853   0.1912720   0.4392987
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3029728   0.2187150   0.3872307
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3333123   0.2230402   0.4435844
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2295650   0.1658171   0.2933128
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2150615   0.1640120   0.2661111
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1853554   0.1335973   0.2371135
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1464933   0.0681770   0.2248096
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1916342   0.1395882   0.2436802
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2024269   0.1277413   0.2771124
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3306886   0.2449813   0.4163958
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3845176   0.3339445   0.4350907
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.3078530   0.2331501   0.3825559
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2309670   0.1596203   0.3023136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2679883   0.2228365   0.3131401
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2582356   0.1883500   0.3281212
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2359654   0.1651985   0.3067323
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2743808   0.2323596   0.3164020
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2405116   0.1777221   0.3033012
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1411577   0.1234597   0.1588558
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1296142   0.0945661   0.1646624
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1401601   0.1098921   0.1704280
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1648358   0.1476005   0.1820711
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1862282   0.0953371   0.2771193
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1376433   0.0965690   0.1787177
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2751598   0.2121297   0.3381900
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2668361   0.2359162   0.2977560
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2601408   0.1853639   0.3349177
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1794162   0.1708950   0.1879375
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2140436   0.1800679   0.2480193
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1860702   0.1658287   0.2063118
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2423519   0.1698163   0.3148875
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2069408   0.1765927   0.2372888
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1576429   0.1093023   0.2059836
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2755250   0.2383649   0.3126850
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2351747   0.2059818   0.2643675
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2598857   0.2215157   0.2982556
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2440846   0.2104974   0.2776719
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2400754   0.2187100   0.2614409
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2207440   0.1931318   0.2483562
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1796325   0.1666889   0.1925761
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1740460   0.1671406   0.1809513
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1788086   0.1687836   0.1888336
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1847249   0.0806145   0.2888352
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3212518   0.2337153   0.4087884
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.2692310   0.1612797   0.3771823
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1219512   0.0215741   0.2223283
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1832061   0.1168219   0.2495903
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1111111   0.0333421   0.1888801
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0748299   0.0322087   0.1174512
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1739130   0.0641550   0.2836711
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2465557   0.1854549   0.3076564
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3679760   0.3118250   0.4241270
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3471653   0.2644587   0.4298720
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3241122   0.2171374   0.4310869
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3539936   0.2897857   0.4182016
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3914375   0.2994330   0.4834420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2881422   0.1971076   0.3791767
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3120389   0.2610013   0.3630765
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2566833   0.1799555   0.3334111
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1024784   0.0496007   0.1553560
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1793095   0.1383446   0.2202745
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1693297   0.1081829   0.2304765
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1070947   0.0548227   0.1593667
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1351077   0.1021814   0.1680340
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1365393   0.0846750   0.1884036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1572150   0.1369841   0.1774460
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1563160   0.1153427   0.1972893
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1787078   0.1426371   0.2147785
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3307279   0.3097191   0.3517367
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2778626   0.1845350   0.3711901
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3319040   0.2789133   0.3848948
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2189320   0.1903057   0.2475582
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3352789   0.1918295   0.4787283
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2896580   0.2275779   0.3517381
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0975826   0.0905350   0.1046302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1007197   0.0744002   0.1270393
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0875195   0.0718551   0.1031839
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0935039   0.0458970   0.1411108
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1367432   0.1123565   0.1611298
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1240877   0.0826477   0.1655276
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1015780   0.0764498   0.1267063
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1430115   0.1186557   0.1673672
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1031417   0.0763255   0.1299579
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2293675   0.1948111   0.2639240
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3020819   0.2780866   0.3260773
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2299134   0.2005737   0.2592531
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0750988   0.0521214   0.0980762
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0615385   0.0202031   0.1028738
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0909091   0.0496805   0.1321377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1334280   0.1199675   0.1468885
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1755264   0.1677385   0.1833143
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1556688   0.1442513   0.1670862


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2899160   0.2321510   0.3476810
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1250000   0.0844083   0.1655917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4743276   0.4258753   0.5227800
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369648   0.2198019   0.2541277
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3958076   0.3763721   0.4152432
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816368   0.2197012   0.3435724
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2447609   0.2362612   0.2532607
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2627451   0.2385772   0.2869130
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3338583   0.3126757   0.3550409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2581222   0.2516585   0.2645860
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1833741   0.1458251   0.2209231
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1394659   0.1254831   0.1534487
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1622128   0.1465647   0.1778610
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746469   0.2119817   0.3373120
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1822082   0.1745617   0.1898546
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2019139   0.1775635   0.2262643
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2528180   0.2330767   0.2725593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763452   0.1707264   0.1819640
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1061224   0.0674772   0.1447677
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3566085   0.3096676   0.4035494
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1617128   0.1455117   0.1779140
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3288908   0.3097941   0.3479875
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0964361   0.0901919   0.1026803
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
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.1416632   0.7965106   1.6363810
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0425326   0.6979692   1.5571950
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.9377014   0.9449693   3.9733425
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          1.6473214   0.7538643   3.5996769
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9285714   0.8870586   4.1929446
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8914835   0.8691862   4.1161606
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.1498485   0.9476524   1.3951863
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0599919   0.9232199   1.2170262
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1871401   0.8790915   1.6031341
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.1958670   0.8597197   1.6634468
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0999590   0.8801983   1.3745878
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9103530   0.6911543   1.1990701
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.3037423   0.9771169   1.7395501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.2401573   0.8903776   1.7273458
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1257380   0.8475629   1.4952117
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0314275   0.7390867   1.4394017
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9169696   0.7379617   1.1393995
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0846037   0.9122756   1.2894845
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9201266   0.6970671   1.2145644
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9580220   0.8250225   1.1124619
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.4644250   0.9140225   2.3462666
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3263039   1.0563557   1.6652364
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9790000   0.8053724   1.1900596
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9571099   0.8197355   1.1175061
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1597893   1.0119831   1.3291836
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9719305   0.8788514   1.0748676
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0216257   0.7759131   1.3451494
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8440475   0.6049830   1.1775807
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0050892   0.8644499   1.1686095
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0022465   0.8466082   1.1864970
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1244238   1.0020685   1.2617190
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9753525   0.8546695   1.1130765
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.7847328   0.3763243   1.6363695
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2046875   0.7081457   2.0493974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0477013   0.9871191   1.1120016
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0239595   0.9531155   1.1000692
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          0.9458078   0.4448177   2.0110537
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.8838384   0.3815740   2.0472313
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.9609480   0.5932099   1.5566516
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0571768   0.6304795   1.7726550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9368222   0.7032149   1.2480336
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.8074204   0.6375138   1.0226096
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3081432   0.7178430   2.3838621
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.3818165   0.7220230   2.6445374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1627788   0.8696759   1.5546647
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9309455   0.6526160   1.3279777
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1602884   0.8159756   1.6498892
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.1180630   0.7417356   1.6853240
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1628010   0.8301969   1.6286571
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0192666   0.6848405   1.5170019
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9182227   0.6814865   1.2371968
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9929323   0.7736061   1.2744400
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.1297799   0.6858133   1.8611518
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8350331   0.6085896   1.1457315
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9697494   0.7926014   1.1864904
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9454171   0.7948416   1.1245179
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1930002   1.0107813   1.4080687
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0370869   0.9209761   1.1678362
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8538855   0.6118527   1.1916601
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6504712   0.4236875   0.9986435
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8535513   0.7107322   1.0250694
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9432383   0.7722770   1.1520457
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9835745   0.8349453   1.1586615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9043749   0.7508994   1.0892190
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9689002   0.8977999   1.0456312
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9954134   0.9097797   1.0891074
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.7390829   0.9292594   3.2546448
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.4574704   0.7292471   2.9128949
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.5022901   0.6112012   3.6925245
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          0.9111111   0.3092704   2.6841345
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.3241107   0.9932349   5.4382807
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7989510   0.7349656   4.4032331
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4924660   1.0912427   2.0412093
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4080604   1.1778563   1.6832565
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.0921948   0.7488854   1.5928864
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2077224   0.8050851   1.8117257
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0829339   0.7592183   1.5446756
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8908218   0.5765022   1.3765142
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.7497305   0.9950598   3.0767566
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6523456   0.8803344   3.1013737
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.2615721   0.7309586   2.1773659
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2749401   0.6867414   2.3669350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9942816   0.7424063   1.3316103
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1367093   0.8946679   1.4442322
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.8401546   0.5969491   1.1824456
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0035562   0.8452280   1.1915424
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.5314295   0.9604515   2.4418478
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3230502   1.0482478   1.6698931
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0321483   0.7870233   1.3536195
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8968762   0.7394995   1.0877450
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4624323   0.8519498   2.5103690
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3270851   0.7224077   2.4378959
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.4078973   1.0427560   1.9009001
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0153939   0.7091712   1.4538448
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3170213   1.1107048   1.5616617
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0023798   0.8227322   1.2212543
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.8194332   0.3917059   1.7142216
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2105263   0.7004604   2.0920153
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.3155140   1.1815955   1.4646104
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.1666875   1.0334337   1.3171235


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0946457   -0.0665369   0.2558283
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0366244   -0.0822771   0.1555258
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.1191843    0.0093276   0.2290409
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0334967   -0.0016946   0.0686881
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0255962   -0.0074106   0.0586030
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0651749   -0.0337659   0.1641158
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0175646   -0.0646851   0.0998143
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0660939   -0.0027118   0.1348995
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0257198   -0.0441273   0.0955670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0010899   -0.0120127   0.0141925
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0034410   -0.0123005   0.0054184
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082385    0.0015829   0.0148942
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0004018   -0.0018464   0.0010428
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0012438   -0.0030867   0.0055742
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0051882   -0.0682539   0.0578775
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0001908   -0.0322272   0.0326089
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0212103   -0.0128842   0.0553049
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0010320   -0.0135015   0.0155656
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0086386   -0.0037937   0.0210708
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0155906   -0.1744672   0.1432861
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0012357   -0.1110077   0.1085362
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0140913   -0.0449985   0.0168158
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0368808   -0.0355323   0.1092939
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0262246   -0.0513658   0.1038150
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0321123   -0.0321333   0.0963579
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0223127   -0.0420220   0.0866475
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0016919   -0.0123210   0.0089372
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0026229   -0.0095710   0.0043251
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005130   -0.0020413   0.0010154
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0027919   -0.0011659   0.0067497
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0404380   -0.1075085   0.0266325
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0227069   -0.0534775   0.0080637
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0085393   -0.0383688   0.0212902
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0032873   -0.0145813   0.0080068
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0887794   -0.0067550   0.1843138
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0312403   -0.0619769   0.1244574
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0312925   -0.0023250   0.0649101
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0611969    0.0288456   0.0935481
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0324963   -0.0646340   0.1296266
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0057580   -0.0767196   0.0882357
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0587594    0.0088107   0.1087081
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0244121   -0.0236428   0.0724671
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0044978   -0.0080944   0.0170901
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0018371   -0.0105700   0.0068958
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082549    0.0016340   0.0148759
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0011465   -0.0042810   0.0019879
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0353888   -0.0101079   0.0808855
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0183351   -0.0034552   0.0401255
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0372754    0.0059865   0.0685643
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0014504   -0.0130102   0.0159110
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0303106    0.0181339   0.0424874


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.2828235   -0.4024019   0.6332420
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0770704   -0.2105778   0.2963698
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.4110993   -0.1119288   0.6881059
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.2679739   -0.0595422   0.4942511
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0623095   -0.0251762   0.1423294
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1374049   -0.0989174   0.3229061
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0367796   -0.1518233   0.1945001
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1834722   -0.0315521   0.3536752
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0776739   -0.1593607   0.2662461
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0045994   -0.0522591   0.0583856
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0086937   -0.0313313   0.0134469
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0362632    0.0054447   0.0661268
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0014266   -0.0065042   0.0036255
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0050816   -0.0127690   0.0226175
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0197462   -0.2903640   0.1941171
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0005716   -0.1014032   0.0931050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0525513   -0.0358118   0.1333762
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0130881   -0.1895327   0.1811952
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0334669   -0.0159863   0.0805130
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0694737   -1.0731908   0.4483026
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0039349   -0.4220518   0.2912458
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0653971   -0.2142443   0.0652038
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2011232   -0.3067114   0.5115952
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0734762   -0.1715546   0.2672588
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1220631   -0.1594121   0.3352035
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0863904   -0.1998879   0.3043663
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0121311   -0.0912764   0.0612741
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0161697   -0.0599187   0.0257735
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0018677   -0.0073664   0.0036009
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0153226   -0.0066332   0.0367995
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2002736   -0.5824619   0.0896105
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0898153   -0.2185222   0.0252969
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0362534   -0.1709491   0.0829481
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0186412   -0.0847035   0.0433977
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.3245998   -0.1276079   0.5954573
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2039295   -0.7049484   0.6283007
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.2948718   -0.0809587   0.5400326
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1988508    0.0777376   0.3040592
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0911260   -0.2264723   0.3264813
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0195918   -0.3053465   0.2636436
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.3644270   -0.0259825   0.6062769
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1856340   -0.2739961   0.4794395
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0278137   -0.0532248   0.1026168
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0055858   -0.0324936   0.0206208
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0363354    0.0057248   0.0660035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0118892   -0.0449120   0.0200899
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2745602   -0.1772604   0.5529767
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.1529035   -0.0486932   0.3157461
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1397951    0.0142148   0.2493776
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0189472   -0.1893171   0.1907419
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1851159    0.1071256   0.2562939
