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
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       50     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0      152     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1       42     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20              0       23     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20              1       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       21     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      174     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1       15     240
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       45     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        3     312
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
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)          0      106     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       56     377
0-24 months   ki1000109-EE               PAKISTAN                       <20              0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20              1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30             0      129     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30             1       85     377
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
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0     1257    2856
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1      179    2856
0-24 months   ki1101329-Keneba           GAMBIA                         <20              0      349    2856
0-24 months   ki1101329-Keneba           GAMBIA                         <20              1       45    2856
0-24 months   ki1101329-Keneba           GAMBIA                         >=30             0      821    2856
0-24 months   ki1101329-Keneba           GAMBIA                         >=30             1      205    2856
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      163     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1       12     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              0       42     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20              1        5     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       54     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        5     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          1      191    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              0      348    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              1       55    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      270     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      118     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1       41     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       57     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1       34     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0    12108   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1       21   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20              0     1742   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20              1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30             0     3020   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30             1        3   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8955   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      389   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     2130   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       85   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2231   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      107   13897
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0    11572   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1     1013   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0    10864   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1     1166   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2097   26916
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      204   26916
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       51     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      182     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1       12     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20              0       29     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20              1        5     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       21     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          0      184     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          1        5     240
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
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)          0      149     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)          1       13     377
0-6 months    ki1000109-EE               PAKISTAN                       <20              0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20              1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30             0      175     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30             1       39     377
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
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)          0     1141    2411
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)          1       21    2411
0-6 months    ki1101329-Keneba           GAMBIA                         <20              0      345    2411
0-6 months    ki1101329-Keneba           GAMBIA                         <20              1       11    2411
0-6 months    ki1101329-Keneba           GAMBIA                         >=30             0      856    2411
0-6 months    ki1101329-Keneba           GAMBIA                         >=30             1       37    2411
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      163     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1        1     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              0       43     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              1        3     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       51     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        3     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      376     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       12     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0      117     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1        6     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       85     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        6     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    12113   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1       15   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20              0     1743   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30             0     3018   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30             1        3   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     9177   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      110   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     2169   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       27   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2289   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       30   13802
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0    12117   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      427   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              0    11445   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              1      526   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2191   26809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1      103   26809
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       39     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        3     259
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
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)          0      107     371
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)          1       53     371
6-24 months   ki1000109-EE               PAKISTAN                       <20              0        1     371
6-24 months   ki1000109-EE               PAKISTAN                       <20              1        0     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30             0      133     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30             1       77     371
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)          1      191    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              0      348    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20              1       55    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      267     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1      115     590
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     6818   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      292   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1619   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       59   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1796   10667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       83   10667
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
![](/tmp/bc6a2e02-8227-4c46-a8e3-462f2727e6f7/478d5c07-11ed-4fdf-9622-2c5eb36946c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bc6a2e02-8227-4c46-a8e3-462f2727e6f7/478d5c07-11ed-4fdf-9622-2c5eb36946c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bc6a2e02-8227-4c46-a8e3-462f2727e6f7/478d5c07-11ed-4fdf-9622-2c5eb36946c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bc6a2e02-8227-4c46-a8e3-462f2727e6f7/478d5c07-11ed-4fdf-9622-2c5eb36946c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1049631   0.0600631   0.1498631
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2943268   0.1493810   0.4392726
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2227589   0.1031424   0.3423753
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2398649   0.1911553   0.2885744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1831395   0.1422168   0.2240622
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2162162   0.0834096   0.3490229
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2265503   0.1800413   0.2730593
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2038181   0.1466781   0.2609581
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2964742   0.2471309   0.3458175
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3521006   0.2970032   0.4071979
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3065764   0.1462519   0.4669008
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4334913   0.3297108   0.5372717
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2206235   0.1807918   0.2604552
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1232877   0.0478090   0.1987664
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2651515   0.1897888   0.3405142
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1143762   0.0864445   0.1423080
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1705272   0.0870089   0.2540454
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1524071   0.0877342   0.2170800
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0870983   0.0622033   0.1119933
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1097696   0.0565501   0.1629891
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1012112   0.0483455   0.1540769
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0485964   0.0379218   0.0592710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0595591   0.0237100   0.0954081
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0517812   0.0346423   0.0689201
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1257435   0.1082198   0.1432672
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1172449   0.0820792   0.1524106
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1913673   0.1672350   0.2154997
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0685714   0.0310612   0.1060816
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1063830   0.0180780   0.1946879
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.0847458   0.0135546   0.1559369
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1092568   0.0865096   0.1320039
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1306233   0.0869047   0.1743419
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1310486   0.0983795   0.1637176
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3036504   0.2577460   0.3495548
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3332155   0.2491275   0.4173034
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3701707   0.2698581   0.4704833
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0419514   0.0378683   0.0460345
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0391408   0.0309105   0.0473710
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0442762   0.0358446   0.0527077
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1158715   0.0912055   0.1405374
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0905909   0.0490416   0.1321402
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1121792   0.0841791   0.1401793
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0884855   0.0791701   0.0978010
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1158312   0.0852483   0.1464141
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1178742   0.1001281   0.1356203
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1702737   0.1529642   0.1875831
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2060404   0.1655238   0.2465569
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1972919   0.1708054   0.2237784
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0494505   0.0271613   0.0717398
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0648148   0.0183476   0.1112820
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0555556   0.0236261   0.0874850
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0813417   0.0760700   0.0866135
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0950382   0.0890404   0.1010361
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0910510   0.0798226   0.1022794
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0707424   0.0475077   0.0939770
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0314136   0.0078973   0.0549299
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1130952   0.0651121   0.1610784
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0189045   0.0105398   0.0272692
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0279215   0.0106814   0.0451615
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0389773   0.0264853   0.0514693
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0309278   0.0136875   0.0481682
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.0487805   0.0106809   0.0868801
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0659341   0.0149033   0.1169648
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0118908   0.0096789   0.0141027
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0120556   0.0075112   0.0165999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0126033   0.0081001   0.0171065
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0257333   0.0204334   0.0310333
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0339156   0.0168329   0.0509983
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0289121   0.0195188   0.0383055
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0182220   0.0120749   0.0243691
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0307079   0.0131488   0.0482670
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0323334   0.0204333   0.0442336
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0343004   0.0308475   0.0377534
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0433071   0.0393564   0.0472578
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0461310   0.0370747   0.0551872
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1042945   0.0572750   0.1513140
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2352941   0.0924140   0.3781743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2380952   0.1090150   0.3671754
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1925676   0.1475865   0.2375486
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278532   0.2662644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1569767   0.1184877   0.1954657
6-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248452   0.2454250
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2187743   0.1800091   0.2575395
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2037742   0.1453696   0.2621789
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2927511   0.2377372   0.3477650
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3444291   0.2886488   0.4002094
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.3579795   0.2011097   0.5148493
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.4574552   0.3515177   0.5633926
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2083333   0.1663429   0.2503237
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1311475   0.0463587   0.2159364
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2521008   0.1740126   0.3301891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1058638   0.0770490   0.1346786
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1970089   0.0962571   0.2977607
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1382494   0.0730140   0.2034847
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0796595   0.0551599   0.1041590
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0968554   0.0446142   0.1490966
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0802641   0.0294385   0.1310898
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0574273   0.0448060   0.0700485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0567376   0.0185433   0.0949319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0540541   0.0352368   0.0728714
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1276940   0.1095048   0.1458833
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1066480   0.0717106   0.1415854
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1877223   0.1631675   0.2122771
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1100873   0.0869004   0.1332742
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1351568   0.0915341   0.1787795
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1322334   0.0994973   0.1649695
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3003607   0.2542107   0.3465107
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3380909   0.2515455   0.4246363
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3725170   0.2704346   0.4745993
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0412779   0.0366521   0.0459038
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0348584   0.0260361   0.0436807
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0442195   0.0349114   0.0535275
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1193057   0.0927991   0.1458123
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0929337   0.0491017   0.1367658
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1118146   0.0823217   0.1413075
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0828763   0.0735188   0.0922338
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1114753   0.0794084   0.1435422
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1143930   0.0964037   0.1323824
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1765929   0.1583069   0.1948789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2162898   0.1733623   0.2592172
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2025089   0.1747127   0.2303052
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0504202   0.0277052   0.0731351
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0660377   0.0187242   0.1133513
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0561224   0.0238764   0.0883685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0842994   0.0777486   0.0908502
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0871139   0.0804028   0.0938250
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1011530   0.0853484   0.1169575


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
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1502101   0.1371047   0.1633155
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0782918   0.0468271   0.1097565
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0418076   0.0384798   0.0451354
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0980577   0.0900528   0.1060627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0537313   0.0366447   0.0708180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885347   0.0846552   0.0924142
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0286188   0.0219621   0.0352756
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120997   0.0102756   0.0139237
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0274456   0.0229617   0.0319295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393898   0.0369053   0.0418742
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406862   0.0369369   0.0444355
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300943
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0928355   0.0847544   0.1009166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0546282   0.0372644   0.0719920
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868936   0.0822329   0.0915543


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.8040985   1.4675679   5.3578225
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           2.1222590   1.0745538   4.1914918
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8583264   0.4298605   1.7138681
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.7756305   0.4016362   1.4978796
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.1806092   0.6141094   2.2696901
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9414340   0.4109046   2.1569435
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.8996595   0.6456289   1.2536416
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3086463   1.1357942   1.5078041
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.8707068   0.5048639   1.5016530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.2311576   0.9249268   1.6387771
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5588148   0.2951655   1.0579624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2018281   0.8582375   1.6829732
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.4909318   0.8629095   2.5760264
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.3325067   0.8182598   2.1699391
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2602956   0.7182344   2.2114574
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1620342   0.6408881   2.1069565
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2255856   0.6458616   2.3256686
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0655356   0.7161701   1.5853303
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9324132   0.6700426   1.2975209
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5218860   1.2618700   1.8354798
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5514184   0.5741090   4.1924077
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2358757   0.4535355   3.3677377
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1955628   0.8590713   1.6638552
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1994550   0.8888796   1.6185456
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0973656   0.8177030   1.4726755
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2190688   0.8938022   1.6627043
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9330038   0.7400672   1.1762393
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0554167   0.8522577   1.3070042
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7818222   0.4713970   1.2966691
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9681345   0.6976574   1.3434738
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3090410   0.9851210   1.7394700
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3321298   1.1087013   1.6005842
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2100542   0.9704435   1.5088269
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1586753   0.9798976   1.3700702
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3106996   0.5619843   3.0569064
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1234568   0.5411892   2.3321884
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1683819   1.0713672   1.2741814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1193638   0.9718644   1.2892492
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.4440566   0.2286595   0.8623576
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.5986919   1.0804462   2.3655188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.4769737   0.6898449   3.1622345
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           2.0617993   1.1969767   3.5514611
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.5772358   0.6041760   4.1174636
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           2.1318681   0.8213422   5.5334573
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0138543   0.6659077   1.5436082
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0599203   0.7084665   1.5857223
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3179624   0.7648854   2.2709609
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1235286   0.7648233   1.6504680
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.6852144   0.8677485   3.2727773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.7744202   1.0771494   2.9230550
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.2625815   1.1032646   1.4449045
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3449103   1.0755403   1.6817443
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9314359   0.6849840   1.2665594
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3381422   1.1549411   1.5504032
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0393416   0.6515562   1.6579246
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.3281549   1.0006680   1.7628178
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6295082   0.3198124   1.2391032
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2100840   0.8362207   1.7510969
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.8609661   1.0422253   3.3228851
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.3059173   0.7580218   2.2498300
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2158676   0.6537226   2.2614089
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0075904   0.4979964   2.0386460
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9879905   0.4866427   2.0058358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9412613   0.6236126   1.4207101
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8351836   0.5845902   1.1931976
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.4700944   1.2123251   1.7826716
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2277237   0.8892557   1.6950191
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2011682   0.8880329   1.6247203
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1256161   0.8349776   1.5174199
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2402319   0.9057748   1.6981870
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8444796   0.6403004   1.1137674
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0712617   0.8440064   1.3597073
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.7789545   0.4624665   1.3120303
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9372105   0.6638882   1.3230595
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3450805   0.9874588   1.8322198
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.3802859   1.1374279   1.6749978
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2247930   0.9798889   1.5309061
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1467559   0.9664296   1.3607293
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.3097484   0.5618623   3.0531342
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1130952   0.5363418   2.3100584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0333873   0.9302320   1.1479816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1999253   1.0053336   1.4321821


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0433259    0.0104870   0.0761648
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0093019   -0.0302523   0.0116486
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0022263   -0.0145899   0.0190425
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0054391   -0.0050696   0.0159479
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0187128   -0.0124276   0.0498533
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0019740   -0.0246909   0.0207429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0141952   -0.0028724   0.0312628
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0065692   -0.0090024   0.0221409
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0014878   -0.0048505   0.0078261
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0244665    0.0111131   0.0378200
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0097204   -0.0156673   0.0351081
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0100382   -0.0030078   0.0230842
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0169476   -0.0111540   0.0450493
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0001438   -0.0024941   0.0022066
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0055061   -0.0227878   0.0117757
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0095722    0.0037449   0.0153994
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0136344    0.0022018   0.0250670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042808   -0.0114972   0.0200588
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0071930    0.0032937   0.0110922
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0002636   -0.0057992   0.0052719
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0097143    0.0023425   0.0170862
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0089393   -0.0036604   0.0215390
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002089   -0.0010851   0.0015028
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0017123   -0.0015097   0.0049342
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0054311    0.0007561   0.0101062
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0050893    0.0024230   0.0077557
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0421490    0.0073244   0.0769737
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049000   -0.0245550   0.0147550
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008792   -0.0161369   0.0143785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0072876   -0.0019996   0.0165749
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0171669   -0.0145682   0.0489021
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0009259   -0.0233964   0.0252482
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0162860   -0.0016735   0.0342456
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0066419   -0.0088081   0.0220919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009837   -0.0083121   0.0063447
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0212263    0.0074780   0.0349746
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0092076   -0.0043061   0.0227214
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0216732   -0.0066958   0.0500421
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0005917   -0.0032382   0.0020548
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0070018   -0.0254814   0.0114777
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0099592    0.0040530   0.0158654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0142903    0.0022202   0.0263603
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042081   -0.0118680   0.0202841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0025942   -0.0022475   0.0074359


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2921720    0.0477509   0.4738556
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0403441   -0.1351701   0.0465606
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0120104   -0.0829843   0.0986726
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0234457   -0.0252311   0.0698114
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0504643   -0.0374002   0.1308870
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0090281   -0.1184575   0.0896948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1104070   -0.0310295   0.2324413
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0701334   -0.1112269   0.2218943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0297055   -0.1054236   0.1483161
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1628822    0.0697714   0.2466730
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1241558   -0.2635432   0.3928953
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0841459   -0.0317759   0.1870437
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0528625   -0.0389719   0.1365797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0034391   -0.0612612   0.0512325
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0498894   -0.2185395   0.0954189
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0976178    0.0366485   0.1547285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0741370    0.0099595   0.1341544
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.2648804   0.3303662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0812445    0.0362830   0.1241084
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037406   -0.0854510   0.0718188
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.3394381    0.0408444   0.5450770
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.2242268   -0.1484932   0.4759882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0172634   -0.0956826   0.1185666
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0623872   -0.0622138   0.1723721
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.2296157    0.0131717   0.3985864
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1292049    0.0591871   0.1940117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2878177    0.0231064   0.4807995
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0261100   -0.1362897   0.0733861
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0056323   -0.1082792   0.0875077
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0322373   -0.0114656   0.0740520
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0474754   -0.0444423   0.1313037
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0044248   -0.1188612   0.1141260
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1333284   -0.0242038   0.2666307
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0769618   -0.1198297   0.2391704
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0174281   -0.1558754   0.1044365
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1425345    0.0455921   0.2296301
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0771836   -0.0432719   0.1837314
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0673008   -0.0250739   0.1513513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0145428   -0.0817095   0.0484532
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0623473   -0.2398878   0.0897711
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1072780    0.0419290   0.1681695
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0748641    0.0095396   0.1358801
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0770308   -0.2683220   0.3283471
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0298548   -0.0274362   0.0839512
