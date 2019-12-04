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
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       51     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        4     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       99     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       16     242
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
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0      166     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        1     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      195     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        9     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        3     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        3     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      151     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       49     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       47     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        5     256
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
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      300     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       62     624
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
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1634    2434
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      381    2434
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       75    2434
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       18    2434
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      263    2434
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       63    2434
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0      141     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1        2     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       56     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     2770    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      130    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       82    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        9    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0      211    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1       15    3217
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    12059   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1     1152   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0      117   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1        8   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      371   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       27   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7078    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      741    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      501    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       73    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1305    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      132    9830
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
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      511     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        3     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0      129     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1        2     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0      189     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1        3     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3880   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      246   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0    14933   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      983   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     6387   26837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      408   26837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       23     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      153     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       10     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       62     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        4     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      127     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        3     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       53     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       39     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       52     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        3     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    0      102     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    1       13     242
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       31     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      152     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       51     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       49     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        3     256
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
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1636    2159
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   1      160    2159
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    0       64    2159
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    1       12    2159
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               0      250    2159
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               1       37    2159
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7274    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      514    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      520    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       50    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1331    9792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      103    9792
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3933   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      179   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0    15211   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1      647   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     6490   26740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      280   26740
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       24     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0      153     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       58     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      119     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       50     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       54     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        1     234
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
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0      153     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       55     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      185     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1        6     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        3     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       30     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        1     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      146     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       44     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       50     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        2     245
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       88     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       10     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      291     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1       26     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      115     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       12     542
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     2770    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      130    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       82    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        9    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0      211    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1       15    3217
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    13185   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1       18   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0      124   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1        1   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      397   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1        1   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     6606    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1      237    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      493    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1       26    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1227    8624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1       35    8624
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
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      503     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1        3     823
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
![](/tmp/125d5491-3d7a-46de-8b4e-78a701e390df/bda969c8-52b5-42d6-8907-bae20d500bde/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/125d5491-3d7a-46de-8b4e-78a701e390df/bda969c8-52b5-42d6-8907-bae20d500bde/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/125d5491-3d7a-46de-8b4e-78a701e390df/bda969c8-52b5-42d6-8907-bae20d500bde/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/125d5491-3d7a-46de-8b4e-78a701e390df/bda969c8-52b5-42d6-8907-bae20d500bde/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1237326    0.0781151   0.1693500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1734044    0.1318102   0.2149986
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1428501    0.1096628   0.1760374
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1751483    0.0886704   0.2616263
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1598479    0.1110859   0.2086098
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1798092    0.1078255   0.2517929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1572791    0.0906165   0.2239418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1711561    0.1322680   0.2100442
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1301656    0.0753073   0.1850239
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0507246    0.0140860   0.0873632
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0616622    0.0372331   0.0860913
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0696203    0.0299064   0.1093341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0689311    0.0256612   0.1122010
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0981615    0.0700442   0.1262789
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0709670    0.0327113   0.1092227
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0589244    0.0469648   0.0708840
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0896569    0.0600679   0.1192459
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0713102    0.0491508   0.0934696
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1894189    0.1723144   0.2065233
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1844946    0.1031923   0.2657969
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1920391    0.1488348   0.2352433
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0448276    0.0330790   0.0565762
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.0989011    0.0320763   0.1657259
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0663717   -0.0121057   0.1448490
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0872001    0.0518410   0.1225591
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0640000    0.0461518   0.0818482
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0678392    0.0306458   0.1050326
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0947093    0.0882159   0.1012028
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1281701    0.1008659   0.1554744
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0918504    0.0768846   0.1068161
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0949321    0.0492371   0.1406271
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0753515    0.0574215   0.0932816
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0654560    0.0359948   0.0949173
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0999497    0.0753215   0.1245779
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1053808    0.0843589   0.1264027
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1037767    0.0772669   0.1302865
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1257027    0.0999000   0.1515053
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1259188    0.1093327   0.1425048
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1236339    0.1017329   0.1455349
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0594441    0.0520169   0.0668712
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0616865    0.0573802   0.0659929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0600069    0.0534122   0.0666017
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0303375    0.0216507   0.0390244
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0384337    0.0185154   0.0583520
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0381850    0.0213405   0.0550296
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0892448    0.0760573   0.1024324
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1565712    0.0751785   0.2379639
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1281499    0.0890201   0.1672798
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0859133    0.0504985   0.1213280
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0560000    0.0448192   0.0671808
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0653266    0.0280939   0.1025593
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0659972    0.0604813   0.0715132
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0877030    0.0643824   0.1110236
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0719171    0.0585071   0.0853271
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0981895    0.0466095   0.1497695
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0582285    0.0406576   0.0757993
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0578334    0.0267506   0.0889163
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0795748    0.0570494   0.1021001
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0705678    0.0529105   0.0882250
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0725668    0.0498975   0.0952362
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0817435    0.0604284   0.1030587
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0635908    0.0513566   0.0758250
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0704974    0.0533824   0.0876123
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0433969    0.0365082   0.0502856
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0408290    0.0373282   0.0443298
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0412892    0.0354867   0.0470918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0809559    0.0443373   0.1175745
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1247175    0.0872342   0.1622007
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0914207    0.0662174   0.1166240
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1741792    0.0921458   0.2562126
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1183717    0.0753206   0.1614228
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1265890    0.0656350   0.1875429
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1026136    0.0419075   0.1633197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0819022    0.0515973   0.1122071
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0946721    0.0437257   0.1456185
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0358120    0.0254635   0.0461605
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0674255    0.0377414   0.0971096
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0383444    0.0201335   0.0565552
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1248050    0.1100302   0.1395797
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0777778    0.0224344   0.1331212
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0990415    0.0659414   0.1321417
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0448276    0.0330790   0.0565762
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.0989011    0.0320763   0.1657259
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0663717   -0.0121057   0.1448490
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0345876    0.0302548   0.0389205
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0500934    0.0313871   0.0687997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0280125    0.0189192   0.0371059
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0241506    0.0113847   0.0369165
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0396770    0.0260596   0.0532944
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0345125    0.0184205   0.0506045
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0560584    0.0374593   0.0746576
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0736462    0.0600677   0.0872246
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0618321    0.0452274   0.0784368
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0243905    0.0184703   0.0303107
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0343051    0.0302745   0.0383358
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0309099    0.0256029   0.0362168


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1460432   0.1145875   0.1774988
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1687042   0.1323664   0.2050420
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0661297   0.0560993   0.0761601
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1898110   0.1742287   0.2053933
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0864278   0.0516339   0.1212218
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0962360   0.0904057   0.1020663
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0760784   0.0615201   0.0906368
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1034121   0.0897349   0.1170893
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609979   0.0575023   0.0644934
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0636298   0.0408673   0.0863923
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0334888   0.0262272   0.0407503
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0968041   0.0843285   0.1092796
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850444   0.0501371   0.1199517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0681168   0.0631263   0.0731073
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0641148   0.0492559   0.0789738
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0735373   0.0616816   0.0853930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413613   0.0383739   0.0443486
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0971026   0.0697212   0.1244840
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1246883   0.0923131   0.1570635
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408060   0.0321006   0.0495115
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1195185   0.1063325   0.1327045
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0345547   0.0306996   0.0384098
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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.9126427   0.5109343   1.6301836
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.0266109   0.5440961   1.9370292
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0882314   0.6725816   1.7607492
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8276086   0.4551631   1.5048143
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2156262   0.5333591   2.7706417
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.3725136   0.5467589   3.4453826
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.4240524   0.7139596   2.8403923
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0295348   0.4501807   2.3544811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.5215592   1.0328127   2.2415897
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2101990   0.8348737   1.7542553
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9740031   0.6211239   1.5273638
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0138329   0.7955335   1.2920351
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2062552   1.1131512   4.3727771
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4805990   0.4280421   5.1213962
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.7339444   0.4513006   1.1936045
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7779719   0.5298749   1.1422323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3532995   1.0819188   1.6927513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9698130   0.8126787   1.1573298
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7937415   0.4638642   1.3582113
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6895035   0.3566052   1.3331693
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0543389   0.7678088   1.4477959
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0382892   0.7280303   1.4807689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0017190   0.7848584   1.2784994
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9835423   0.7499467   1.2898990
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0377243   0.9052141   1.1896320
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0094688   0.8574870   1.1883880
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2668697   0.7008800   2.2899197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2586717   0.7439989   2.1293775
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.7544009   1.0219184   3.0119064
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4359372   1.0227353   2.0160793
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.6518203   0.4293727   0.9895125
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7603790   0.5139422   1.1249830
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3288900   1.0055505   1.7562008
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0896989   0.8882973   1.3367639
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.5930214   0.3235204   1.0870240
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.5889982   0.2777634   1.2489727
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8868110   0.6077632   1.2939807
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9119329   0.5982798   1.3900210
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.7779305   0.5625998   1.0756773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8624211   0.6038878   1.2316362
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9408266   0.7926164   1.1167505
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9514326   0.7757623   1.1668831
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.5405605   0.9688632   2.4495995
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.1292654   0.7554547   1.6880434
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.6795971   0.3751660   1.2310612
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.7267742   0.3703180   1.4263437
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.7981615   0.3971542   1.6040666
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9226076   0.4147050   2.0525550
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8827597   1.1119789   3.1878158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0707120   0.6140805   1.8668955
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6231944   0.3029356   1.2820261
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7935703   0.5566795   1.1312682
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2062552   1.1131512   4.3727771
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4805990   0.4280421   5.1213962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4483044   0.9768435   2.1473098
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8099002   0.5719291   1.1468875
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.6428981   0.8745990   3.0861165
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4290517   0.7060315   2.8924893
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3137392   0.8987345   1.9203789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1029942   0.7198087   1.6901661
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4064944   1.0741784   1.8416184
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2672894   0.9454853   1.6986224


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0223106   -0.0029468   0.0475680
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0064442   -0.0838439   0.0709556
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0013747   -0.0589324   0.0616818
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0105609   -0.0228968   0.0440185
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0184861   -0.0214553   0.0584276
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0072054   -0.0007175   0.0151282
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0003922   -0.0067721   0.0075564
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0030431   -0.0031079   0.0091941
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0007722   -0.0017964   0.0002520
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015267   -0.0014882   0.0045416
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0188537   -0.0608929   0.0231855
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0034624   -0.0172918   0.0242166
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0002511   -0.0232155   0.0227133
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0015538   -0.0051782   0.0082858
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0118951   -0.0022618   0.0260520
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0124459   -0.0322217   0.0571136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0056216   -0.0227065   0.0339497
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0019395   -0.0348689   0.0387478
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0031512   -0.0024909   0.0087933
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0075593    0.0011957   0.0139228
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0008688   -0.0017502   0.0000125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021196   -0.0005182   0.0047575
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0340747   -0.0809479   0.0127986
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0060375   -0.0246438   0.0125689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0124269   -0.0310487   0.0061950
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0020357   -0.0081102   0.0040388
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0161467   -0.0035807   0.0358740
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0494909   -0.1218278   0.0228460
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0140527   -0.0683138   0.0402084
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0049940   -0.0019604   0.0119485
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0052865   -0.0108741   0.0003010
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0030431   -0.0031079   0.0091941
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0000329   -0.0019921   0.0019263
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0094902   -0.0020903   0.0210707
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0108693   -0.0060661   0.0278047
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0074991    0.0018589   0.0131392


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1527672   -0.0540393    0.3189976
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0381982   -0.6148332    0.3325283
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0086648   -0.4546037    0.3243895
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1723224   -0.5965976    0.5709312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2114698   -0.4052026    0.5575159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1089579   -0.0181571    0.2202029
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0020660   -0.0364002    0.0391045
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0635692   -0.0699048    0.1803918
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0089348   -0.0193427    0.0013668
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0158638   -0.0159579    0.0466887
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2478188   -0.9395980    0.1972297
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0334815   -0.1895216    0.2146775
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0020016   -0.2028433    0.1653050
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0254732   -0.0913119    0.1297608
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1869426   -0.1127012    0.4058942
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1382389   -0.5307819    0.5148674
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1343168   -0.8884265    0.6031577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0292857   -0.7208215    0.4524207
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0940981   -0.0898196    0.2469778
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0780882    0.0106404    0.1409379
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0102163   -0.0189529   -0.0015546
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0311173   -0.0083328    0.0690239
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5314631   -1.4505444    0.0429150
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0821006   -0.3668029    0.1432988
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1792766   -0.4799811    0.0603304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0492168   -0.2067230    0.0877311
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1662846   -0.0814134    0.3572473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.3969172   -1.1149992    0.0773625
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1586785   -0.9639819    0.3164214
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1223841   -0.0636698    0.2758940
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0442317   -0.0918533    0.0013129
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0635692   -0.0699048    0.1803918
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0009519   -0.0592866    0.0541704
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2821032   -0.1479576    0.5510498
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1624035   -0.1318098    0.3801362
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2351575    0.0388091    0.3913967
