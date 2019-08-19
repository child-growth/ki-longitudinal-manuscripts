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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        mhtcm           ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       23     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      149     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       14     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       61     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        5     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      126     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        4     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       53     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       39     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       52     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        3     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0      100     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       15     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       66     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1        6     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       40     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      127     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1        6     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       62     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0      167     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        1     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      196     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        3     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       31     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        2     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      151     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       49     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       49     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        3     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      499    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1       69    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      400    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1       87    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      288    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       47    1390
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       64     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       14     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0      185     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1       35     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       91     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       20     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       98     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       18     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      301     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       61     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      127     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       19     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      131     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1        7     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      350     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       23     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      147     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       11     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      130     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       10     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      392     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       43     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      167     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       13     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1402    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       88    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      326    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       32    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      475    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       36    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1692    2433
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      322    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       79    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       14    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      281    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       45    2433
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      141     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        2     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       56     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     2738    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      126    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       80    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        9    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0      210    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1       15    3178
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    12059   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1     1152   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0      117   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1        8   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      371   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       27   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7081    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      738    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      503    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       71    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1306    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      131    9830
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0      149    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       16    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      772    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1       63    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      257    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1       18    1275
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      514    1905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1       57    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      736    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1       87    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      458    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1       53    1905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      549    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       80    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1346    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      194    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      768    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      108    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      510     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        4     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0      129     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1        2     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0      189     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        3     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3879   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      247   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0    14937   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      982   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     6389   26840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      406   26840
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       23     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      153     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       10     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       62     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        4     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      128     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        2     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       53     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       39     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       52     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        3     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    0      103     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    1       12     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       67     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               1        5     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       40     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      129     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    1        4     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       62     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1        2     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    0      168     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               0       61     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      201     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       33     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       32     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        1     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      152     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       51     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      536    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1       29    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      447    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1       37    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      312    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       22    1383
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       76     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1        2     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0      210     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1       10     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0      104     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1        7     409
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0      107     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1        9     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      320     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       40     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      139     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1        7     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      133     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1        5     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      356     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       17     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      152     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1        6     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      131     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1        9     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      406     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       29     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      168     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       12     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1444    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       46    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      344    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      492    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       19    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1678    2133
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   1       96    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    0       68    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    1        8    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               0      266    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               1       17    2133
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       34     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      131     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        1     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       53     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   0    12076   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   1     1135   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    0      118   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    1        7   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               0      372   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               1       26   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7274    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      514    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      521    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       49    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1330    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      103    9791
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0      122    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       14    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      646    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    1       40    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      210    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1       13    1045
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   0      511    1863
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   1       44    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    0      750    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    1       57    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               0      465    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               1       36    1863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      577    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       52    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1441    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1       98    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      815    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1       61    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      161     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    0       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3932   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      180   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0    15215   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      646   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     6492   26743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      278   26743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       24     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      153     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       58     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      118     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       50     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       55     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0      107     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1        4     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       67     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1        1     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       41     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      129     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       63     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       58     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0      154     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       55     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      186     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        5     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        3     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       30     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        1     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      146     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       44     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       51     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        1     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      496    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1       43    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      378    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1       54    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      279    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       27    1277
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       64     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       12     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0      190     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1       25     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       97     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       13     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       88     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       10     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      291     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       25     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      115     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       12     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      127     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1        2     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      330     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1        6     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      144     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1        5     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      136     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1        2     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      403     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       16     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      171     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1        2     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1201    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       45    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      284    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       19    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      419    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       17    1985
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1683    2326
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      240    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       83    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1        7    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      282    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       31    2326
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      135     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        1     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       53     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     2738    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      126    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       80    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        9    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0      210    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1       15    3178
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    13185   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1       18   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0      124   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1        1   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      397   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1        1   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     6580    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      234    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      493    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       25    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1220    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1       34    8586
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0      144    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1        2    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      739    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1       23    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      243    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1        5    1156
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      535    1843
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1       13    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      767    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1       32    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      479    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1       17    1843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      548    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       33    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1317    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      105    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      756    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1       50    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      502     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        4     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0      128     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1        2     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0      184     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        3     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     2648   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1       67   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     9763   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      347   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4286   17247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      136   17247


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/7d0b1969-2ee4-4d34-8232-6ea592c71d26/7641c674-9170-40eb-b2e9-5354c6d8d57e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d0b1969-2ee4-4d34-8232-6ea592c71d26/7641c674-9170-40eb-b2e9-5354c6d8d57e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d0b1969-2ee4-4d34-8232-6ea592c71d26/7641c674-9170-40eb-b2e9-5354c6d8d57e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d0b1969-2ee4-4d34-8232-6ea592c71d26/7641c674-9170-40eb-b2e9-5354c6d8d57e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1237326    0.0781151   0.1693500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1734044    0.1318102   0.2149986
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1428501    0.1096628   0.1760374
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1716118    0.0862043   0.2570194
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1593596    0.1107796   0.2079396
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1752936    0.1027294   0.2478578
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1546427    0.0880123   0.2212731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1680267    0.1291206   0.2069328
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1295466    0.0745215   0.1845717
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0507246    0.0140860   0.0873632
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0616622    0.0372331   0.0860913
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0696203    0.0299064   0.1093341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0686643    0.0257477   0.1115810
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0987241    0.0705542   0.1268940
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0699689    0.0318395   0.1080983
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0586803    0.0467075   0.0706532
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0902209    0.0605787   0.1198631
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0701031    0.0478235   0.0923827
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1603121    0.1442996   0.1763246
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1464772    0.0743998   0.2185545
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1365283    0.0987613   0.1742953
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0439944    0.0323672   0.0556216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1011236    0.0334295   0.1688177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0666667   -0.0114313   0.1447646
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0872001    0.0518410   0.1225591
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0640000    0.0461518   0.0818482
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0678392    0.0306458   0.1050326
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0943646    0.0878836   0.1008455
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1236766    0.0967194   0.1506337
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0912118    0.0763110   0.1061127
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0990402    0.0536768   0.1444036
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0753857    0.0574757   0.0932958
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0669827    0.0373789   0.0965864
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1008680    0.0761856   0.1255503
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1060612    0.0850520   0.1270705
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1043589    0.0779297   0.1307880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1254391    0.0996859   0.1511922
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1257631    0.1091769   0.1423493
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1240685    0.1021068   0.1460302
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0595125    0.0521051   0.0669199
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0616345    0.0573315   0.0659374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0597325    0.0531581   0.0663068
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0517347    0.0207683   0.0827011
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.0704380    0.0430157   0.0978602
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0657674    0.0377483   0.0937865
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0775862    0.0288644   0.1263080
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1111111    0.0786212   0.1436010
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0479452    0.0132616   0.0826288
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050311   0.0674326
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0455764    0.0243948   0.0667580
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0379747    0.0081494   0.0678000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0642857    0.0236320   0.1049395
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0666667    0.0432101   0.0901232
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0666667    0.0302020   0.1031313
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0302777    0.0216023   0.0389531
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0380283    0.0183355   0.0577212
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0387715    0.0217494   0.0557935
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0541150    0.0435844   0.0646455
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1052632    0.0362505   0.1742759
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0600707    0.0323799   0.0877615
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0859133    0.0504985   0.1213280
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0560000    0.0448192   0.0671808
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0653266    0.0280939   0.1025593
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0660083    0.0604930   0.0715236
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0880093    0.0649376   0.1110810
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0722775    0.0588931   0.0856619
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0988168    0.0475486   0.1500851
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0582086    0.0406447   0.0757724
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0561471    0.0252872   0.0870070
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0787441    0.0563691   0.1011190
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0709208    0.0531884   0.0886532
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0722727    0.0495598   0.0949856
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0819944    0.0606084   0.1033805
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0639005    0.0516193   0.0761816
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0702193    0.0531348   0.0873039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0435041    0.0366272   0.0503809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0407797    0.0372799   0.0442796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0409858    0.0351696   0.0468021
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0809559    0.0443373   0.1175745
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1247175    0.0872342   0.1622007
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0914207    0.0662174   0.1166240
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1649515    0.0824416   0.2474613
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1177634    0.0746816   0.1608453
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1227971    0.0622691   0.1833250
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1004183    0.0392816   0.1615549
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0789645    0.0490459   0.1088831
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0948165    0.0435305   0.1461024
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0358479    0.0255192   0.0461765
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0655411    0.0372740   0.0938081
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0386688    0.0204742   0.0568634
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1248050    0.1100302   0.1395797
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0777778    0.0224344   0.1331212
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0990415    0.0659414   0.1321417
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0439944    0.0323672   0.0556216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1011236    0.0334295   0.1688177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0666667   -0.0114313   0.1447646
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0342774    0.0299524   0.0386023
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0476794    0.0292982   0.0660606
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0271940    0.0181671   0.0362208
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0237991    0.0110368   0.0365615
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0397301    0.0261035   0.0533567
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0343141    0.0182557   0.0503724
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0558771    0.0373162   0.0744380
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0736345    0.0600696   0.0871993
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0622819    0.0455504   0.0790133
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0245022    0.0185719   0.0304324
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0342708    0.0302503   0.0382914
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0308222    0.0255410   0.0361035


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1460432   0.1145875   0.1774988
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1687042   0.1323664   0.2050420
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0661297   0.0560993   0.0761601
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1565968   0.1421532   0.1710404
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471995   0.0353423   0.0590567
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0864278   0.0516339   0.1212218
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0956256   0.0898119   0.1014394
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0760784   0.0615201   0.0906368
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1034121   0.0897349   0.1170893
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609165   0.0574279   0.0644051
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0636298   0.0408673   0.0863923
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0334888   0.0262272   0.0407503
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0567276   0.0469085   0.0665467
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850444   0.0501371   0.1199517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0680217   0.0630341   0.0730092
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0641148   0.0492559   0.0789738
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0735373   0.0616816   0.0853930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0412818   0.0383003   0.0442634
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0971026   0.0697212   0.1244840
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1246883   0.0923131   0.1570635
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408060   0.0321006   0.0495115
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1195185   0.1063325   0.1327045
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471995   0.0353423   0.0590567
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0341253   0.0302849   0.0379657
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0336408   0.0254069   0.0418747
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0318896   0.0289915   0.0347877


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4014455   0.9583816   2.0493397
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.1545073   0.8550998   1.5587502
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.9286049   0.5187722   1.6622076
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.0214540   0.5354355   1.9486347
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0865478   0.6660109   1.7726227
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8377156   0.4573414   1.5344495
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2156262   0.5333591   2.7706417
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.3725136   0.5467589   3.4453826
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.4377788   0.7229964   2.8592233
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0189988   0.4446866   2.3350346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.5374982   1.0443453   2.2635242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1946604   0.8188885   1.7428668
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9137002   0.5530070   1.5096518
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8516406   0.6346250   1.1428666
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2985553   1.1640691   4.5386967
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5153439   0.4419028   5.1963174
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.7339444   0.4513006   1.1936045
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7779719   0.5298749   1.1422323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3106254   1.0428688   1.6471285
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9665901   0.8096174   1.1539974
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7611630   0.4543022   1.2752947
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6763181   0.3578748   1.2781178
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0514857   0.7674882   1.4405723
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0346085   0.7275140   1.4713322
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0025835   0.7855089   1.2796465
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9890740   0.7542256   1.2970487
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0356565   0.9034759   1.1871755
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0036963   0.8528141   1.1812730
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.3615232   0.7398036   2.5057262
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2712445   0.9116174   1.7727423
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4320988   0.7163610   2.8629514
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.6179604   0.2370997   1.6106101
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2579088   0.4727932   3.3467793
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0481013   0.3267595   3.3618491
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.0370370   0.5029246   2.1383838
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0370370   0.4494405   2.3928549
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2559851   0.6949827   2.2698384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2805295   0.7581831   2.1627438
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.9451754   0.9816327   3.8545044
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1100559   0.6730399   1.8308339
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.6518203   0.4293727   0.9895125
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7603790   0.5139422   1.1249830
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3333058   1.0125560   1.7556604
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0949755   0.8936532   1.3416518
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.5890552   0.3230806   1.0739921
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.5681938   0.2668518   1.2098258
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.9006497   0.6167671   1.3151964
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9178180   0.6007452   1.4022415
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.7793267   0.5636186   1.0775904
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8563912   0.5994922   1.2233787
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9373773   0.7900774   1.1121395
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9421145   0.7676661   1.1562054
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.5405605   0.9688632   2.4495995
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.1292654   0.7554547   1.6880434
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.7139277   0.3841825   1.3266945
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.7444436   0.3682550   1.5049254
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.7863559   0.3837481   1.6113581
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9442156   0.4179144   2.1333149
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8283103   1.0883635   3.0713255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0786916   0.6213024   1.8728006
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6231944   0.3029356   1.2820261
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7935703   0.5566795   1.1312682
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2985553   1.1640691   4.5386967
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5153439   0.4419028   5.1963174
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3909879   0.9272362   2.0866823
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.7933504   0.5562431   1.1315283
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.6693928   0.8830755   3.1558710
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4418195   0.7074277   2.9385949
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3177928   0.9012563   1.9268412
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1146219   0.7271352   1.7085982
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.3986862   1.0686355   1.8306739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2579395   0.9394251   1.6844472


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0223106   -0.0029468   0.0475680
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0029077   -0.0792863   0.0734709
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0024086   -0.0578810   0.0626981
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0105609   -0.0228968   0.0440185
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0187529   -0.0208832   0.0583890
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0074494   -0.0004808   0.0153795
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0037153   -0.0101028   0.0026722
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0032051   -0.0029686   0.0093788
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0007722   -0.0017964   0.0002520
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0012611   -0.0017364   0.0042586
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0229618   -0.0646847   0.0187612
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0025441   -0.0182549   0.0233431
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0000125   -0.0229057   0.0229307
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0014041   -0.0053214   0.0081296
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0118951   -0.0022618   0.0260520
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0124459   -0.0322217   0.0571136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0056216   -0.0227065   0.0339497
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0019395   -0.0348689   0.0387478
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0032111   -0.0024273   0.0088495
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0026126   -0.0021675   0.0073928
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0008688   -0.0017502   0.0000125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0020133   -0.0006165   0.0046431
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0347020   -0.0812962   0.0118922
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0052068   -0.0236941   0.0132806
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0126778   -0.0313716   0.0060161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0022222   -0.0082868   0.0038423
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0161467   -0.0035807   0.0358740
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0402632   -0.1131016   0.0325752
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0135421   -0.0681295   0.0410453
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0049582   -0.0019808   0.0118972
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0052865   -0.0108741   0.0003010
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0032051   -0.0029686   0.0093788
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001520   -0.0020921   0.0017880
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0098417   -0.0017341   0.0214174
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0110506   -0.0058502   0.0279514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0073874    0.0017338   0.0130410


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1527672   -0.0540393    0.3189976
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0172354   -0.5873678    0.3481234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0153362   -0.4541320    0.3332360
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1723224   -0.5965976    0.5709312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2145217   -0.3963622    0.5581547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1126478   -0.0146632    0.2239849
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0237251   -0.0653131    0.0162393
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0679050   -0.0679029    0.1864419
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0089348   -0.0193427    0.0013668
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0131877   -0.0186540    0.0440341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3018169   -0.9808560    0.1444470
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0246015   -0.1987234    0.2063205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0000997   -0.2003393    0.1670683
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0230490   -0.0937657    0.1273879
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1869426   -0.1127012    0.4058942
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1382389   -0.5307819    0.5148674
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1343168   -0.8884265    0.6031577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0292857   -0.7208215    0.4524207
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0958852   -0.0878899    0.2486155
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0460555   -0.0416776    0.1263995
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0102163   -0.0189529   -0.0015546
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0295983   -0.0097884    0.0674488
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5412472   -1.4526715    0.0314875
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0708044   -0.3538935    0.1530929
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1828961   -0.4847765    0.0576069
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0538310   -0.2113279    0.0831882
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1662846   -0.0814134    0.3572473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.3229107   -1.0541254    0.1480107
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1558783   -0.9876578    0.3278247
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1215056   -0.0640121    0.2746770
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0442317   -0.0918533    0.0013129
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0679050   -0.0679029    0.1864419
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0044555   -0.0629412    0.0508121
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2925516   -0.1389009    0.5605559
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1651127   -0.1285280    0.3823487
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2316567    0.0348897    0.3883068
