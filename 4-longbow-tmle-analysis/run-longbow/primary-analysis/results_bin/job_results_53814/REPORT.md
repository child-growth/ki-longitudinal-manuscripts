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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      161     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       27     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1       10     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       36     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      138     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       43     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       49     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        2     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0      152     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       42     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20              0       23     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20              1       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       21     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      173     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       42     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1        4     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          0      149     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          1        4     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20              0       77     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20              1        5     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30             0       64     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30             1        3     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      146     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       13     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       44     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       99     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      128     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       11     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        2     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       96     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1       10     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      225     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       71     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       27     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        8     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)          0      281     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)          1       63     410
0-24 months   ki1000108-IRC              INDIA                          <20              0       29     410
0-24 months   ki1000108-IRC              INDIA                          <20              1        8     410
0-24 months   ki1000108-IRC              INDIA                          >=30             0       24     410
0-24 months   ki1000108-IRC              INDIA                          >=30             1        5     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)          0       95     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       67     377
0-24 months   ki1000109-EE               PAKISTAN                       <20              0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20              1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30             0      114     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30             1      100     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      891    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1      261    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              0      153    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              1       39    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             0      118    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             1       51    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      187     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1      103     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       52     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       40     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      325     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       92     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       64     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1        9     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       97     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       35     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      437     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       56     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       70     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       15     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0      103     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       19     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      451     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       43     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      121     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       15     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      115     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       13     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1494    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       77    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      157    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       10    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      606    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       32    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0     1258    2857
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      178    2857
0-24 months   ki1101329-Keneba           GAMBIA                         <20              0      348    2857
0-24 months   ki1101329-Keneba           GAMBIA                         <20              1       46    2857
0-24 months   ki1101329-Keneba           GAMBIA                         >=30             0      822    2857
0-24 months   ki1101329-Keneba           GAMBIA                         >=30             1      205    2857
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      163     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1       12     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              0       42     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              1        5     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       54     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        5     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          1      192    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              0      348    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              1       55    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      319     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      125     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       98     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       43     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       67     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     686
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0    12108   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1       21   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20              0     1742   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20              1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30             0     3020   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30             1        3   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8955   13904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      394   13904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     2129   13904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       88   13904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2230   13904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      108   13904
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0      579    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1       76    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20              0      179    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20              1       17    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0      435    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1       55    1341
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     3279    5303
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)          1      317    5303
0-24 months   ki1135781-COHORTS          INDIA                          <20              0      377    5303
0-24 months   ki1135781-COHORTS          INDIA                          <20              1       49    5303
0-24 months   ki1135781-COHORTS          INDIA                          >=30             0     1127    5303
0-24 months   ki1135781-COHORTS          INDIA                          >=30             1      154    5303
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1513    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      307    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      292    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1       85    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      680    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      168    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      346     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1       18     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20              0      101     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20              1        7     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30             0      187     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       11     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0    11564   26912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     1017   26912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0    10860   26912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1     1170   26912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2097   26912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      204   26912
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      176     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1        4     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              0       34     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       44     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1        2     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      139     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20              0       43     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       50     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      181     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1       13     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20              0       29     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20              1        5     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       21     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          0      183     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          1        6     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20              0        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20              1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       45     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        1     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)          0      153     302
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)          1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20              0       81     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20              1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30             0       66     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30             1        1     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      155     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        4     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       47     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0      105     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        0     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      138     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       16     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0      103     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        3     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      268     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       39     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        3     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)          0      325     409
0-6 months    ki1000108-IRC              INDIA                          [20-30)          1       19     409
0-6 months    ki1000108-IRC              INDIA                          <20              0       30     409
0-6 months    ki1000108-IRC              INDIA                          <20              1        6     409
0-6 months    ki1000108-IRC              INDIA                          >=30             0       29     409
0-6 months    ki1000108-IRC              INDIA                          >=30             1        0     409
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)          0      150     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)          1       12     377
0-6 months    ki1000109-EE               PAKISTAN                       <20              0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20              1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30             0      170     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30             1       44     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0     1064    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1       81    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              0      185    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              1        6    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0      149    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1       19    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      269     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       33     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              1        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       82     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1        9     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      379     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       37     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              0       71     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              1        1     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0      125     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1        7     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      475     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       18     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       82     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0      113     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1        9     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      484     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       10     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      133     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        3     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      124     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        4     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1561    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       10    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      163    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        4    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      633    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        5    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)          0     1150    2440
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)          1       20    2440
0-6 months    ki1101329-Keneba           GAMBIA                         <20              0      346    2440
0-6 months    ki1101329-Keneba           GAMBIA                         <20              1       12    2440
0-6 months    ki1101329-Keneba           GAMBIA                         >=30             0      875    2440
0-6 months    ki1101329-Keneba           GAMBIA                         >=30             1       37    2440
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      163     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1        1     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              0       43     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              1        3     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       51     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        3     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      423     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       21     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0      132     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1        9     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       95     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        6     686
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    12113   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1       15   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20              0     1743   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30             0     3018   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30             1        3   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     9182   13808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      110   13808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     2170   13808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       27   13808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2289   13808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       30   13808
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          0      515    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          1        9    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20              0      136    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20              1        1    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      391    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1       10    1062
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)          0     3373    5101
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)          1       89    5101
0-6 months    ki1135781-COHORTS          INDIA                          <20              0      386    5101
0-6 months    ki1135781-COHORTS          INDIA                          <20              1       14    5101
0-6 months    ki1135781-COHORTS          INDIA                          >=30             0     1202    5101
0-6 months    ki1135781-COHORTS          INDIA                          >=30             1       37    5101
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1786    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          1       33    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20              0      365    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20              1       12    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      821    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1       27    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          0      116     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20              0       39     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20              1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30             0       65     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30             1        0     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0    12109   26805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      431   26805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              0    11441   26805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              1      530   26805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2191   26805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      103   26805
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      146     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1       17     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       26     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1        8     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       32     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1       10     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      123     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       36     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0      138     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       40     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20              0       27     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20              1        7     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       21     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      172     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       12     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       43     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1        3     235
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          0      130     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)          1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20              0       70     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20              1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30             0       59     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30             1        2     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      112     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1       10     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       38     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       89     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        6     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      117     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       95     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        8     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      239     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1       57     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       35     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        8     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)          0      290     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)          1       54     410
6-24 months   ki1000108-IRC              INDIA                          <20              0       32     410
6-24 months   ki1000108-IRC              INDIA                          <20              1        5     410
6-24 months   ki1000108-IRC              INDIA                          >=30             0       24     410
6-24 months   ki1000108-IRC              INDIA                          >=30             1        5     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)          0       97     370
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       63     370
6-24 months   ki1000109-EE               PAKISTAN                       <20              0        1     370
6-24 months   ki1000109-EE               PAKISTAN                       <20              1        0     370
6-24 months   ki1000109-EE               PAKISTAN                       >=30             0      118     370
6-24 months   ki1000109-EE               PAKISTAN                       >=30             1       91     370
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      826    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1      231    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              0      144    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20              1       38    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             0      105    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30             1       45    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      183     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1       96     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       25     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20              1       11     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       48     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1       38     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      285     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       75     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       53     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1        8     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       89     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1       30     540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      389     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       46     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       54     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1       14     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0       96     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1       15     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      436     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       38     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      119     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      112     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1       11     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1231    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       75    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      133    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        8    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      525    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       30    2002
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0     1167    2686
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      169    2686
6-24 months   ki1101329-Keneba           GAMBIA                         <20              0      325    2686
6-24 months   ki1101329-Keneba           GAMBIA                         <20              1       39    2686
6-24 months   ki1101329-Keneba           GAMBIA                         >=30             0      794    2686
6-24 months   ki1101329-Keneba           GAMBIA                         >=30             1      192    2686
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      154     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1       12     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              0       39     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              1        3     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       54     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        3     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          1      192    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              0      348    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              1       55    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      265     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      117     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       78     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       41     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       55     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     590
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0    11888   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1        6   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20              0     1713   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20              1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30             0     2988   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30             1        1   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     6895   10787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      297   10787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1641   10787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       62   10787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1808   10787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       84   10787
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0      519    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1       71    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20              0      156    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20              1       16    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0      400    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1       49    1211
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     3086    4955
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)          1      278    4955
6-24 months   ki1135781-COHORTS          INDIA                          <20              0      335    4955
6-24 months   ki1135781-COHORTS          INDIA                          <20              1       42    4955
6-24 months   ki1135781-COHORTS          INDIA                          >=30             0     1074    4955
6-24 months   ki1135781-COHORTS          INDIA                          >=30             1      140    4955
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1380    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1      293    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      264    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1       82    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      628    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1      161    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      339     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1       18     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20              0       99     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20              1        7     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30             0      185     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30             1       11     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     7205   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      648   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0     7438   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1      732   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1130   17274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      121   17274


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/9cb5feba-c264-4a1c-a0e9-dfda626e1506/e3c70370-41e0-4343-bd36-12ff6159b1a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cb5feba-c264-4a1c-a0e9-dfda626e1506/e3c70370-41e0-4343-bd36-12ff6159b1a8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9cb5feba-c264-4a1c-a0e9-dfda626e1506/e3c70370-41e0-4343-bd36-12ff6159b1a8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9cb5feba-c264-4a1c-a0e9-dfda626e1506/e3c70370-41e0-4343-bd36-12ff6159b1a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1034867   0.0586785   0.1482949
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2259795   0.0808133   0.3711458
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1837610   0.0624434   0.3050786
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2398649   0.1911553   0.2885744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1831395   0.1422168   0.2240622
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2162162   0.0834096   0.3490229
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2263417   0.1790800   0.2736034
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2051052   0.1415719   0.2686384
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2891216   0.2366249   0.3416183
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3548474   0.2997216   0.4099732
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3601054   0.2011609   0.5190499
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4638013   0.3612919   0.5663107
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2206235   0.1807918   0.2604552
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1232877   0.0478090   0.1987664
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2651515   0.1897888   0.3405142
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1146465   0.0866455   0.1426475
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1768238   0.0956208   0.2580268
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1508291   0.0853012   0.2163571
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0874506   0.0625200   0.1123813
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1102895   0.0574919   0.1630871
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1022189   0.0498726   0.1545652
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0485335   0.0378644   0.0592026
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0600673   0.0237568   0.0963778
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0519835   0.0347461   0.0692208
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1258827   0.1083764   0.1433891
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1149734   0.0817211   0.1482256
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1911293   0.1670640   0.2151947
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0685714   0.0310612   0.1060816
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1063830   0.0180780   0.1946879
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.0847458   0.0135546   0.1559369
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1085359   0.0864381   0.1306337
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1264871   0.0816858   0.1712884
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1366165   0.1016396   0.1715935
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2810403   0.2391105   0.3229700
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3037153   0.2267309   0.3806997
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3226117   0.2287717   0.4164517
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0420589   0.0379379   0.0461799
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0381963   0.0299899   0.0464026
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0503343   0.0410595   0.0596091
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1154303   0.0908020   0.1400586
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0885718   0.0479600   0.1291837
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1131101   0.0849225   0.1412976
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0886607   0.0793263   0.0979951
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1141732   0.0835372   0.1448093
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1193308   0.1014196   0.1372420
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1704291   0.1530880   0.1877703
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2074431   0.1667357   0.2481506
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1972571   0.1706481   0.2238662
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0494505   0.0271613   0.0717398
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0648148   0.0183476   0.1112820
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0555556   0.0236261   0.0874850
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0817288   0.0764159   0.0870418
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0958315   0.0897555   0.1019076
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0916871   0.0802665   0.1031077
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0707424   0.0475077   0.0939770
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0314136   0.0078973   0.0549299
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1130952   0.0651121   0.1610784
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0181252   0.0098209   0.0264295
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0292988   0.0114103   0.0471873
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0379913   0.0258010   0.0501816
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0472973   0.0275381   0.0670565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.0638298   0.0234518   0.1042078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0594059   0.0132720   0.1055398
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0118772   0.0096377   0.0141166
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0108454   0.0066830   0.0150078
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0137141   0.0087609   0.0186673
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0258441   0.0205246   0.0311636
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0336014   0.0163240   0.0508788
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0290028   0.0196243   0.0383813
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0183082   0.0121374   0.0244789
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0296971   0.0124012   0.0469929
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0321230   0.0201785   0.0440676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0346125   0.0311352   0.0380898
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0438918   0.0399065   0.0478770
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0465711   0.0373234   0.0558189
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1042945   0.0572750   0.1513140
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2352941   0.0924140   0.3781743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2380952   0.1090150   0.3671754
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1925676   0.1475865   0.2375486
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278532   0.2662644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1569767   0.1184877   0.1954657
6-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248452   0.2454250
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2189506   0.1791782   0.2587230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2043989   0.1391315   0.2696664
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2853474   0.2335965   0.3370983
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3426638   0.2868487   0.3984789
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3223776   0.1658509   0.4789044
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4482704   0.3416051   0.5549356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2083333   0.1663429   0.2503237
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1311475   0.0463587   0.2159364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2521008   0.1740126   0.3301891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1061607   0.0772544   0.1350670
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1801853   0.0784381   0.2819325
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1322904   0.0679533   0.1966275
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0800142   0.0555086   0.1045197
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1013423   0.0484064   0.1542782
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0872968   0.0364238   0.1381698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0574273   0.0448060   0.0700485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0567376   0.0185433   0.0949319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0540541   0.0352368   0.0728714
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1273763   0.1092472   0.1455054
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1080196   0.0730969   0.1429424
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1877039   0.1631909   0.2122170
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1086827   0.0863272   0.1310382
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1263677   0.0820522   0.1706831
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1359974   0.1016748   0.1703199
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3076937   0.2613439   0.3540434
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3586389   0.2722255   0.4450524
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3889295   0.2869499   0.4909091
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0407949   0.0362070   0.0453827
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0351688   0.0259581   0.0443795
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0513177   0.0407235   0.0619120
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1193660   0.0928503   0.1458818
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0916905   0.0479739   0.1354072
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1126438   0.0826589   0.1426286
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0825360   0.0732175   0.0918545
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1134626   0.0804729   0.1464523
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1152977   0.0970985   0.1334970
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1765198   0.1582523   0.1947873
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2149467   0.1720151   0.2578782
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2016824   0.1740419   0.2293228
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0504202   0.0277052   0.0731351
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0660377   0.0187242   0.1133513
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0561224   0.0238764   0.0883685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0846614   0.0780908   0.0912320
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0871903   0.0804148   0.0939658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0999965   0.0840985   0.1158945


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2186495   0.1861408   0.2511582
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500842   0.0413120   0.0588564
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1501575   0.1370563   0.1632587
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0782918   0.0468271   0.1097565
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1195721   0.0998202   0.1393239
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424338   0.0390831   0.0457845
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0980577   0.0900528   0.1060627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0537313   0.0366447   0.0708180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888451   0.0849346   0.0927557
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0282787   0.0216999   0.0348574
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120944   0.0102712   0.0139177
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0274456   0.0229617   0.0319295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396941   0.0371916   0.0421966
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2092593   0.1749182   0.2436003
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1489203   0.1354543   0.1623863
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1195721   0.0998202   0.1393239
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410680   0.0373229   0.0448131
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300943
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0928355   0.0847544   0.1009166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0546282   0.0372644   0.0719920
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868936   0.0822329   0.0915543


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.1836579   1.0102320   4.7200660
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.7756967   0.8111635   3.8871310
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8583264   0.4298605   1.7138681
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.7756305   0.4016362   1.4978796
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.1806092   0.6141094   2.2696901
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9414340   0.4109046   2.1569435
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9061749   0.6395193   1.2840158
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2773677   1.0617883   1.5367170
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0148176   0.6354622   1.6206388
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.3070443   0.9972178   1.7131312
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5588148   0.2951655   1.0579624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2018281   0.8582375   1.6829732
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.5423391   0.9174904   2.5927355
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.3156019   0.7997407   2.1642119
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2611630   0.7228113   2.2004802
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1688751   0.6503028   2.1009737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2376461   0.6505628   2.3545272
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0710845   0.7195891   1.5942738
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9133370   0.6629841   1.2582271
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5183122   1.2594498   1.8303803
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5514184   0.5741090   4.1924077
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2358757   0.4535355   3.3677377
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1653940   0.8315463   1.6332742
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2587219   0.9355018   1.6936160
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0806825   0.8052973   1.4502402
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1479197   0.8280176   1.5914150
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9081612   0.7173085   1.1497937
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1967568   0.9716457   1.4740218
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7673189   0.4626854   1.2725241
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9798993   0.7060368   1.3599894
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2877549   0.9652562   1.7180026
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3459274   1.1205478   1.6166384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2171810   0.9764373   1.5172809
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1574144   0.9781928   1.3694724
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3106996   0.5619843   3.0569064
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1234568   0.5411892   2.3321884
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1725547   1.0748953   1.2790870
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1218451   0.9731702   1.2932336
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.4440566   0.2286595   0.8623576
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.5986919   1.0804462   2.3655188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.6164684   0.7513495   3.4777027
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           2.0960486   1.2007933   3.6587644
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3495441   0.6323446   2.8801846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2560113   0.5200216   3.0336517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9131292   0.5954672   1.4002533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1546611   0.7682871   1.7353439
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3001587   0.7472654   2.2621316
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1222207   0.7648933   1.6464772
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.6220673   0.8278814   3.1781148
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.7545742   1.0624221   2.8976531
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2680896   1.1084043   1.4507804
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3454989   1.0741322   1.6854233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.2560553   1.0589904   4.8062623
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           2.2829132   1.1278960   4.6207207
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7636739   0.3285070   1.7752978
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9661363   0.4952828   1.8846189
6-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8608609   0.3671435   2.0185061
6-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           1.0983397   0.4764631   2.5318856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9335391   0.6674459   1.3057168
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3032502   1.0934996   1.5532342
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.9407986   0.5638909   1.5696334
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.3081928   0.9805550   1.7453060
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6295082   0.3198124   1.2391032
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2100840   0.8362207   1.7510969
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.6972879   0.9060290   3.1795739
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2461333   0.7145896   2.1730630
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2665549   0.6915323   2.3197200
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0910166   0.5647980   2.1075096
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9879905   0.4866427   2.0058358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9412613   0.6236126   1.4207101
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8480355   0.5960083   1.2066345
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.4736175   1.2154993   1.7865484
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1627211   0.8333655   1.6222416
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2513250   0.9327484   1.6787101
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1655714   0.8773373   1.5484999
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2640153   0.9340767   1.7104962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8620895   0.6484065   1.1461918
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.2579462   0.9946504   1.5909395
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7681457   0.4538233   1.3001709
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9436836   0.6672853   1.3345697
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3747039   1.0062495   1.8780740
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3969385   1.1506041   1.6960110
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2176915   0.9730279   1.5238747
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1425483   0.9630973   1.3554359
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3097484   0.5618623   3.0531342
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1130952   0.5363418   2.3100584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0298705   0.9268958   1.1442854
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1811347   0.9873208   1.4129949


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0448023    0.0120172   0.0775874
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0093019   -0.0302523   0.0116486
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0022263   -0.0145899   0.0190425
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0056477   -0.0060757   0.0173712
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0159660   -0.0153262   0.0472582
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0019740   -0.0246909   0.0207429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0139249   -0.0032197   0.0310695
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0062169   -0.0093961   0.0218299
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0015507   -0.0047850   0.0078864
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0242748    0.0109079   0.0376416
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0097204   -0.0156673   0.0351081
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0110361   -0.0019312   0.0240035
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0134204   -0.0120841   0.0389248
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0003749   -0.0020249   0.0027748
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0050649   -0.0223187   0.0121889
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0093970    0.0035594   0.0152346
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0134789    0.0020179   0.0249399
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042808   -0.0114972   0.0200588
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0071163    0.0032029   0.0110297
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0002636   -0.0057992   0.0052719
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0101535    0.0027193   0.0175876
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0051808   -0.0076210   0.0179826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002173   -0.0011113   0.0015459
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0016015   -0.0016269   0.0048299
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0053449    0.0006557   0.0100341
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0050816    0.0024039   0.0077592
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0421490    0.0073244   0.0769737
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049000   -0.0245550   0.0147550
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008792   -0.0161369   0.0143785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0071113   -0.0029636   0.0171863
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0189322   -0.0126643   0.0505287
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0009259   -0.0233964   0.0252482
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0159891   -0.0020184   0.0339966
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0062872   -0.0091268   0.0217012
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009837   -0.0083121   0.0063447
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0215440    0.0078362   0.0352518
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0108894   -0.0020079   0.0237867
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0177301   -0.0106429   0.0461030
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002731   -0.0023757   0.0029219
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0070622   -0.0255645   0.0114402
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0102995    0.0044196   0.0161794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0143634    0.0022938   0.0264330
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042081   -0.0118680   0.0202841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0022322   -0.0026255   0.0070899


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.3021282    0.0576172   0.4831983
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0403441   -0.1351701   0.0465606
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0120104   -0.0829843   0.0986726
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0243448   -0.0298966   0.0757294
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0430567   -0.0451698   0.1238357
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0090281   -0.1184575   0.0896948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1083050   -0.0338395   0.2309058
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0663720   -0.1154557   0.2185604
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0309616   -0.1041185   0.1495157
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1616620    0.0684684   0.2455322
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1241558   -0.2635432   0.3928953
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0922970   -0.0217513   0.1936152
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0455761   -0.0450752   0.1283642
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0088360   -0.0493673   0.0638110
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0458921   -0.2143118   0.0991686
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0958315    0.0347339   0.1530620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0732915    0.0089436   0.1334614
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.2648804   0.3303662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0800977    0.0351184   0.1229803
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037406   -0.0854510   0.0718188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.3590508    0.0523874   0.5664728
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0987237   -0.1790339   0.3110470
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0179642   -0.0982597   0.1218886
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0583514   -0.0665460   0.1686227
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.2259720    0.0086529   0.3956512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1280183    0.0582342   0.1926316
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2878177    0.0231064   0.4807995
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0261100   -0.1362897   0.0733861
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0056323   -0.1082792   0.0875077
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0314574   -0.0161619   0.0768452
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0523573   -0.0392191   0.1358639
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0044248   -0.1188612   0.1141260
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1308976   -0.0271858   0.2646521
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0728517   -0.1233764   0.2348032
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0174281   -0.1558754   0.1044365
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1446682    0.0480521   0.2314784
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0910695   -0.0227475   0.1922204
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0544830   -0.0368174   0.1377436
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0066499   -0.0599923   0.0691023
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0628844   -0.2406613   0.0894185
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1109435    0.0459316   0.1715255
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0752470    0.0099350   0.1362506
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0770308   -0.2683220   0.3283471
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0256888   -0.0317992   0.0799739
