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

agecat        studyid                    country                        mage       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0      130     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       50     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0       18     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       28     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       18     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0      127     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0       40     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0       46     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        5     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       99     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       95     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0       16     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        5     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0      130     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       59     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0       34     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       12     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0      139     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       14     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  0       74     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        8     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0       62     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0      123     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       36     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0       38     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1       10     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       87     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       18     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0      123     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       16     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0       13     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        3     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       89     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       17     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0      118     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      178     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       25     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)              0      114     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)              1      230     410
0-24 months   ki1000108-IRC              INDIA                          <20                  0       16     410
0-24 months   ki1000108-IRC              INDIA                          <20                  1       21     410
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       11     410
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       18     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       73     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       89     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                  1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       81     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1      133     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      670    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1      482    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0      126    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1       66    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       89    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       80    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0      161     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1      129     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0       20     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1       16     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       40     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       52     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      215     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      202     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       47     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1       26     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       63     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       69     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0      330     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      163     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       47     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       38     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       77     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       45     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0      331     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       90     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       46     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       87     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       41     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1204    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      367    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      127    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       40    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      482    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      156    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      855    2864
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      588    2864
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  0      235    2864
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  1      159    2864
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      503    2864
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      524    2864
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0      159     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       16     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0       41     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        6     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       51     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        8     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0     1381    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1      362    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0      314    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1       89    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      761    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1      272    3179
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      190     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      254     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       55     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       86     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       36     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       65     686
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0     8988   16898
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1     3142   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  0     1293   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  1      452   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0     2281   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      742   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     7174   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     2177   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0     1650   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      568   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1794   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      545   13908
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0      492    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1      163    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0      146    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1       50    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0      361    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1      129    1341
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0     2449    5305
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1     1148    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                  0      274    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                  1      152    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      800    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      482    5305
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0     1106    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      714    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0      208    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1      169    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      502    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      346    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0      337     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1       27     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       99     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        9     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0      180     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1       18     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     9437   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     3153   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     8927   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     3124   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0     1627   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      677   26945
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0      147     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  1       14     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       13     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              0      131     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  0       40     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0       47     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              0      129     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              1       65     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  0       22     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  1       12     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0       17     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        4     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              0      151     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              1       38     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  0        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0       38     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        8     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              0      148     302
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              1        5     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  0       79     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  1        3     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0      140     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       19     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0       41     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        7     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       96     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        9     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0      138     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0       15     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       95     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       11     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0      139     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      153     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       18     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       19     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)              0      157     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)              1      187     410
0-6 months    ki1000108-IRC              INDIA                          <20                  0       17     410
0-6 months    ki1000108-IRC              INDIA                          <20                  1       20     410
0-6 months    ki1000108-IRC              INDIA                          >=30                 0       13     410
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       16     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              0      121     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              1       41     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                  0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                  1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0      132     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1       82     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      889    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1      257    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  0      160    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  1       31    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 0      125    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       43    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0      243     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1       47     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0       29     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        7     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       68     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       24     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      258     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      158     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  0       52     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  1       20     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       88     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       44     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0      369     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      124     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  0       62     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       88     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       34     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0      368     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      126     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       99     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       37     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       96     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       32     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1352    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      219    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      142    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       25    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      550    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       88    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              0      887    2444
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              1      287    2444
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  0      254    2444
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  1      104    2444
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0      631    2444
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      281    2444
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0      163     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1        1     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  0       43     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        3     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       49     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        5     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      283     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      161     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  0       81     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  1       60     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0       64     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       37     686
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              0     9077   16895
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              1     3052   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  0     1304   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  1      440   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0     2294   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      728   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     7635   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1662   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0     1757   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      441   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1924   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      396   13815
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              0      426    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              1       98    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  0      101    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  1       36    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 0      323    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 1       79    1063
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              0     2637    5102
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              1      825    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                  0      288    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                  1      112    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 0      901    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 1      339    5102
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              0     1400    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      419    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  0      277    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  1      100    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 0      650    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 1      198    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              0      115     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              1        1     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  0       39     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 0       63     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 1        2     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0    10373   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     2180   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     9942   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     2054   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0     1802   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      497   26848
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0      137     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       26     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1        8     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       33     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1        9     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0      120     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0      127     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       51     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       23     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       11     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0       19     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0      153     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       31     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0       42     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        4     235
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0      124     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       10     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  0       69     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0       59     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0      102     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       20     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0       37     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        5     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       83     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       12     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0      113     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       15     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       92     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       11     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0      224     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1       72     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       12     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       15     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)              0      235     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)              1      109     410
6-24 months   ki1000108-IRC              INDIA                          <20                  0       28     410
6-24 months   ki1000108-IRC              INDIA                          <20                  1        9     410
6-24 months   ki1000108-IRC              INDIA                          >=30                 0       20     410
6-24 months   ki1000108-IRC              INDIA                          >=30                 1        9     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       94     371
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       66     371
6-24 months   ki1000109-EE               PAKISTAN                       <20                  0        1     371
6-24 months   ki1000109-EE               PAKISTAN                       <20                  1        0     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      118     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       92     371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      737    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1      320    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0      130    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1       52    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       97    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       53    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0      180     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1       99     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0       26     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1       10     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       53     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       34     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      258     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      102     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       49     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1       12     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       75     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       44     540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0      372     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       63     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       50     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       18     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       94     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       18     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0      413     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1       61     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0      114     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       19     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0      107     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       16     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1100    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      207    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      120    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       21    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      461    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       94    2003
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      941    2689
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      398    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  0      275    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  1       89    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      612    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      374    2689
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0      150     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       16     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0       38     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        4     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       54     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0     1381    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1      362    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0      314    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1       89    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      761    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1      272    3179
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      207     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      175     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       65     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       54     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       39     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       50     590
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0    11765   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1      129   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  0     1698   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  1       17   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0     2968   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1       21   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     6515   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1      679   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0     1534   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      169   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1705   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      187   10789
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0      512    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1       79    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0      156    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1       16    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0      391    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       59    1213
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0     2960    4957
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1      405    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                  0      319    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                  1       58    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 0     1025    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      190    4957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0     1259    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      414    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0      232    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1      114    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      569    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      221    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0      330     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1       27     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       97     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        9     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0      180     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1       16     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     6609   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1248   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     6824   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1359   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0     1022   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      230   17292


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/3d286306-03cf-4ada-9c8e-21e05f681b90/2fc9e407-6c2a-432f-858a-3df33a9600ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d286306-03cf-4ada-9c8e-21e05f681b90/2fc9e407-6c2a-432f-858a-3df33a9600ba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d286306-03cf-4ada-9c8e-21e05f681b90/2fc9e407-6c2a-432f-858a-3df33a9600ba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d286306-03cf-4ada-9c8e-21e05f681b90/2fc9e407-6c2a-432f-858a-3df33a9600ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.2820466   0.2163701   0.3477230
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5410082   0.3857709   0.6962454
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4541869   0.3046092   0.6037647
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.4896907   0.4192054   0.5601761
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5588235   0.3915890   0.7260581
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2380952   0.0555637   0.4206268
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.0915033   0.0457415   0.1372650
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.0975610   0.0332317   0.1618902
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2221631   0.1564922   0.2878340
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1963920   0.0789143   0.3138697
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1667435   0.0933997   0.2400873
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6013514   0.5454986   0.6572041
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7352941   0.5868018   0.8837864
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5813953   0.4337450   0.7290457
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6686047   0.6188015   0.7184078
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5675676   0.4077423   0.7273928
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.6206897   0.4438767   0.7975026
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4182526   0.3674855   0.4690198
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3509651   0.2679271   0.4340030
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4645689   0.3670776   0.5620602
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4452826   0.3878436   0.5027216
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4680134   0.2957916   0.6402353
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.5689416   0.4661030   0.6717803
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.4854102   0.4374908   0.5333296
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.3268475   0.2158247   0.4378702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5263913   0.4394718   0.6133109
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.3344961   0.2930478   0.3759445
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4175073   0.3088824   0.5261321
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3752440   0.2896331   0.4608550
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.3318588   0.2902328   0.3734847
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.3245059   0.2429082   0.4061036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3424708   0.2562913   0.4286503
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2316412   0.2106350   0.2526474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2331850   0.1653982   0.3009717
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2536780   0.2189872   0.2883688
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.4121702   0.3861685   0.4381718
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.4023119   0.3505390   0.4540848
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4997846   0.4687208   0.5308484
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0914286   0.0486503   0.1342069
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1276596   0.0320849   0.2232343
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2067719   0.1742030   0.2393408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2125857   0.1587061   0.2664652
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2699865   0.2342540   0.3057190
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5722426   0.5260781   0.6184071
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6098965   0.5284705   0.6913225
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6448846   0.5504991   0.7392700
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2585060   0.1993389   0.3176731
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.2593984   0.1978107   0.3209861
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2485049   0.1940191   0.3029906
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2318132   0.2232001   0.2404264
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2502736   0.2315380   0.2690091
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2455637   0.2274191   0.2637082
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.2507818   0.2164657   0.2850980
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.2694775   0.2022616   0.3366934
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2677417   0.2267637   0.3087197
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3194851   0.3041959   0.3347743
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.3582961   0.3125855   0.4040068
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3747315   0.3479319   0.4015311
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.3934573   0.3708854   0.4160292
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.4344094   0.3842254   0.4845933
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4083073   0.3749137   0.4417010
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0741758   0.0472346   0.1011170
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0833333   0.0311688   0.1354979
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2510189   0.2421404   0.2598975
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2587896   0.2497586   0.2678207
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2948979   0.2753660   0.3144297
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1824627   0.1255776   0.2393478
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.3727255   0.2101452   0.5353058
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2830502   0.1453866   0.4207138
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1194969   0.0689970   0.1699967
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1458333   0.0458277   0.2458389
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0857143   0.0320830   0.1393456
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5239726   0.4666115   0.5813337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.5294118   0.3614088   0.6974147
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4523810   0.3016489   0.6031131
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.5436047   0.4909046   0.5963047
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5405405   0.3797668   0.7013143
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5517241   0.3705013   0.7329470
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2243989   0.1861188   0.2626789
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1722272   0.1213179   0.2231366
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2602571   0.1669544   0.3535598
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1620690   0.1196047   0.2045332
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1944444   0.0650062   0.3238826
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2608696   0.1710344   0.3507048
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3808383   0.3341598   0.4275168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2583066   0.1470566   0.3695566
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3368258   0.2557852   0.4178665
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2522586   0.2139436   0.2905737
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2581474   0.1611999   0.3550949
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2851517   0.2045048   0.3657987
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2545794   0.2158649   0.2932940
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2722321   0.1946920   0.3497723
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2691366   0.1868206   0.3514526
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1373738   0.1202040   0.1545436
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1639204   0.1032786   0.2245622
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1484281   0.1197064   0.1771497
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.2436593   0.2186256   0.2686931
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.3025927   0.2492365   0.3559490
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3018814   0.2715305   0.3322323
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.3634341   0.3186042   0.4082641
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4305917   0.3486095   0.5125739
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3714849   0.2774822   0.4654877
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2512236   0.1913820   0.3110652
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.2503741   0.1891253   0.3116228
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2433928   0.1884060   0.2983796
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1782475   0.1704121   0.1860829
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1971141   0.1798247   0.2144035
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1768344   0.1605598   0.1931090
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1870610   0.1525083   0.2216137
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.2871429   0.2016170   0.3726688
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1978348   0.1575211   0.2381484
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2375360   0.2233055   0.2517665
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2792813   0.2347743   0.3237882
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2750733   0.2498248   0.3003218
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.2303957   0.2109644   0.2498269
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2532578   0.2091970   0.2973186
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2332504   0.2045548   0.2619460
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1736488   0.1659627   0.1813349
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1712285   0.1634041   0.1790529
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2171475   0.1990085   0.2352864
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1595092   0.1031817   0.2158367
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2285714   0.0891660   0.3679768
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2142857   0.0899319   0.3386395
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1639344   0.0981136   0.2297553
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1190476   0.0209180   0.2171772
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1263158   0.0593840   0.1932476
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2432432   0.1943010   0.2921855
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3529412   0.1920936   0.5137888
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3488372   0.2061934   0.4914810
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.3168605   0.2676352   0.3660857
6-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3027611   0.2630752   0.3424470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2873006   0.2265720   0.3480293
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3469400   0.2728673   0.4210127
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.3531275   0.2967875   0.4094676
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.2661805   0.1153369   0.4170240
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3849237   0.2812776   0.4885699
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2846411   0.2379683   0.3313138
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1988907   0.0978039   0.2999775
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3707741   0.2832055   0.4583427
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1455003   0.1124272   0.1785734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2371316   0.1266223   0.3476409
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1602120   0.0916769   0.2287472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1289560   0.0988069   0.1591052
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1460545   0.0860191   0.2060898
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1361427   0.0766030   0.1956824
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1551475   0.1353405   0.1749545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1396395   0.0786129   0.2006661
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1849116   0.1509627   0.2188605
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.2981019   0.2729900   0.3232137
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.2362664   0.1895019   0.2830309
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3840180   0.3531763   0.4148597
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2060434   0.1733918   0.2386951
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2116431   0.1576849   0.2656012
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2702455   0.2335617   0.3069294
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.4571541   0.4070243   0.5072839
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4493339   0.3590097   0.5396582
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5501130   0.4455969   0.6546292
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0108122   0.0081986   0.0134258
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0100124   0.0027321   0.0172927
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0070511   0.0029282   0.0111740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0941709   0.0873239   0.1010178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0918650   0.0779854   0.1057446
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1132069   0.0980198   0.1283939
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1322359   0.1047770   0.1596948
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0925379   0.0487076   0.1363681
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1331633   0.1016547   0.1646720
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1208369   0.1097823   0.1318915
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1557294   0.1180307   0.1934281
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1547861   0.1342572   0.1753151
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.2491018   0.2282427   0.2699610
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.3083177   0.2596518   0.3569836
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2793988   0.2477014   0.3110962
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.0756303   0.0481820   0.1030785
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0849057   0.0318018   0.1380095
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0816327   0.0432716   0.1199937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1594285   0.1507727   0.1680843
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1655855   0.1564554   0.1747156
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1848353   0.1633608   0.2063098


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4779116   0.4157435   0.5400798
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0894040   0.0571706   0.1216374
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4774920   0.4382065   0.5167774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369529   0.2198518   0.2540539
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4437849   0.4255860   0.4619838
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1067616   0.0705906   0.1429325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2274300   0.2005343   0.2543257
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2365545   0.2294916   0.2436174
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3359095   0.3231988   0.3486203
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0805970   0.0599695   0.1012246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580813   0.2516131   0.2645495
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2281369   0.1773250   0.2789488
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3580645   0.3202961   0.3958330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397306   0.1257869   0.1536744
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2749591   0.2572539   0.2926643
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1808903   0.1744713   0.1873093
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2500980   0.2382136   0.2619824
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762142   0.1705882   0.1818403
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2925926   0.2541847   0.3310005
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1607589   0.1446692   0.1768485
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3201934   0.3025561   0.3378307
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2274300   0.2005343   0.2543257
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959310   0.0903738   0.1014883
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1317329   0.1223171   0.1411487
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0789074   0.0583085   0.0995064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640643   0.1579507   0.1701779


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.9181520   1.3247321   2.7773971
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.6103261   1.0793679   2.4024710
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           1.1411765   0.8187157   1.5906423
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.4862155   0.2228779   1.0606955
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.0662021   0.4660440   2.4392264
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           0.8155650   0.3056183   2.1763956
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.8839991   0.4536282   1.7226757
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.7505453   0.4419841   1.2745215
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2227363   0.9790304   1.5271068
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9668147   0.7377441   1.2670121
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8488837   0.6343748   1.1359270
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9283358   0.6915604   1.2461781
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.8391223   0.7090826   0.9930101
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1107377   0.9914323   1.2443998
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0510481   0.7112020   1.5532888
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.2777091   1.0227171   1.5962778
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6733428   0.4730670   0.9584065
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0844258   0.8946717   1.3144255
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.2481677   0.9359762   1.6644896
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1218188   0.8665216   1.4523326
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.9778434   0.7381277   1.2954097
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0319776   0.7798388   1.3656382
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0066644   0.7424728   1.3648623
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0951331   0.9295534   1.2902073
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9760820   0.8457292   1.1265262
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2125686   1.1101680   1.3244145
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3962766   0.5775036   3.3758896
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4830508   0.6682686   3.2912512
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0281170   0.7976484   1.3251761
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.3057215   1.1106809   1.5350121
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0658007   0.9117922   1.2458223
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1269426   0.9534710   1.3319751
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0034521   0.8854994   1.1371166
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9613117   0.8695103   1.0628053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0796345   0.9931445   1.1736567
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0593169   0.9753230   1.1505443
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0745495   0.8091640   1.4269749
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0676279   0.8701755   1.3098845
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1214799   0.9786028   1.2852173
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1729233   1.0762033   1.2783357
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1040826   0.9705373   1.2560036
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0377424   0.9391081   1.1467361
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.1234568   0.5448171   2.3166587
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.2255892   0.6922989   2.1696826
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0309565   0.9851536   1.0788890
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1748033   1.0910025   1.2650408
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.0427492   1.1941359   3.4944298
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.5512770   0.8693422   2.7681393
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.2203947   0.5453440   2.7310530
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.7172932   0.3371203   1.5261896
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0103806   0.7222645   1.4134281
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8633676   0.6079666   1.2260600
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.9943633   0.7272502   1.3595851
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.0149364   0.7206163   1.4294650
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7675048   0.6460252   0.9118278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1597969   0.8857511   1.5186308
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.1997636   0.5866857   2.4534990
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.6096207   1.0442361   2.4811236
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6782581   0.4334341   1.0613702
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8844327   0.6755324   1.1579329
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0233442   0.6825119   1.5343812
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1303945   0.8203299   1.5576559
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.0693407   0.7742351   1.4769281
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0571811   0.7515634   1.4870760
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1932435   0.8074325   1.7634045
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0804684   0.8582601   1.3602078
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.2418681   1.0125809   1.5230746
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2389486   1.0733155   1.4301420
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1847862   0.9442757   1.4865556
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0221520   0.7714547   1.3543177
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.9966182   0.8769240   1.1326498
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9688292   0.8751726   1.0725084
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1058448   1.0025157   1.2198239
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9920720   0.8959094   1.0985563
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.5350230   1.0815998   2.1785281
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0575951   0.8039097   1.3913348
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1757429   0.9916389   1.3940269
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1580277   1.0377927   1.2921928
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0992297   0.9059039   1.3338125
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0123905   0.8720581   1.1753053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9860618   0.9287362   1.0469258
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2504977   1.1427198   1.3684409
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.4329670   0.7082161   2.8993899
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.3434066   0.6810587   2.6499056
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.7261905   0.2903065   1.8165373
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.7705263   0.3963351   1.4980020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.4509804   0.8816715   2.3879008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.4341085   0.9091996   2.2620635
6-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.7676667   0.4256000   1.3846622
6-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.9794369   0.5566759   1.7232588
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9489350   0.8241142   1.0926612
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1459199   0.9680969   1.3564060
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.7537800   0.4184591   1.3578010
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.0900417   0.7971464   1.4905554
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6987421   0.4098455   1.1912796
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.3026023   0.9770851   1.7365661
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.6297674   0.9702574   2.7375641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1011117   0.6788831   1.7859437
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1325911   0.7055367   1.8181373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0557294   0.6425905   1.7344866
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9000435   0.5709250   1.4188874
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1918440   0.9531440   1.4903227
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.7925694   0.6391410   0.9828289
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2882106   1.1465719   1.4473463
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0271770   0.7947319   1.3276082
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.3115951   1.1078881   1.5527577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.9828937   0.7816749   1.2359103
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2033426   0.9660528   1.4989175
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.9260318   0.4830171   1.7753717
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.6521469   0.3750938   1.1338380
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9755136   0.8250545   1.1534107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.2021428   1.0321400   1.4001466
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.6997938   0.4171693   1.1738910
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0070135   0.7353409   1.3790558
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2887567   0.9948054   1.6695665
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2809508   1.0902988   1.5049406
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2377176   1.0355092   1.4794120
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1216248   0.9741486   1.2914274
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           1.1226415   0.5447478   2.3135918
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0793651   0.5960802   1.9544837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0386194   0.9638722   1.1191631
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1593620   1.0184624   1.3197544


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0487519    0.0081904   0.0893135
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0117791   -0.0448166   0.0212585
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0020993   -0.0338995   0.0297009
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0170349   -0.0613894   0.0273196
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0099087   -0.0150357   0.0348531
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0125071   -0.0334217   0.0084075
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0031832   -0.0125657   0.0061992
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0260093   -0.0062772   0.0582957
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0079182   -0.0354894   0.0196530
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0169325   -0.0062105   0.0400754
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0020435   -0.0267155   0.0226286
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0053116   -0.0071258   0.0177491
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0316147    0.0129251   0.0503044
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0153330   -0.0139754   0.0446414
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0206581    0.0056567   0.0356596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0181364   -0.0089893   0.0452622
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0019076   -0.0082462   0.0044310
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0047413   -0.0002692   0.0097518
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0042517   -0.0208742   0.0293776
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0164244    0.0074774   0.0253714
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0101552   -0.0042908   0.0246011
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0064212   -0.0126225   0.0254649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0070623    0.0011479   0.0129767
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0456742    0.0080187   0.0833296
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0073174   -0.0416853   0.0270505
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0076683   -0.0337978   0.0184613
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0002978   -0.0208406   0.0214362
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0044653   -0.0143501   0.0054195
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0245339   -0.0019120   0.0509798
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0227738   -0.0488845   0.0033370
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0063128   -0.0150275   0.0276532
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0026765   -0.0204918   0.0258448
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0023568   -0.0077603   0.0124740
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0312997    0.0124798   0.0501197
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0126592   -0.0143354   0.0396537
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0014456   -0.0074859   0.0045946
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0026428   -0.0019148   0.0072004
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0133153   -0.0123810   0.0390116
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0125620    0.0041853   0.0209387
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0051497   -0.0073538   0.0176531
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0025654   -0.0026324   0.0077633
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0196575   -0.0153694   0.0546844
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0210773   -0.0666196   0.0244650
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0221723   -0.0024646   0.0468093
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0071044   -0.0262133   0.0120045
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0032144   -0.0046714   0.0111003
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0025939   -0.0286008   0.0337885
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0079515   -0.0194653   0.0353684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0154753   -0.0042746   0.0352253
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0025508   -0.0156617   0.0207633
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0056114   -0.0063526   0.0175754
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0220915    0.0037972   0.0403858
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0213866    0.0063313   0.0364419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0157272   -0.0142138   0.0456683
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0007507   -0.0019463   0.0004449
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0017601   -0.0022974   0.0058177
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0052780   -0.0245297   0.0139738
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0108960    0.0040969   0.0176951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0175411    0.0037890   0.0312932
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0032772   -0.0157344   0.0222887
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0046358   -0.0017432   0.0110149


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1473765    0.0161349   0.2611113
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0246470   -0.0962308   0.0422625
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0234810   -0.4486935   0.2769255
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0830451   -0.3214537   0.1123512
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0162103   -0.0255022   0.0562261
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0190629   -0.0515274   0.0123994
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0076691   -0.0313007   0.0154210
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0551872   -0.0160354   0.1214171
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0165830   -0.0760179   0.0395690
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0481818   -0.0199724   0.1117820
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0061958   -0.0838542   0.0658984
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0224165   -0.0315101   0.0735239
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0712389    0.0280691   0.1124912
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1436190   -0.1752619   0.3759788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0908329    0.0199135   0.1566206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0307200   -0.0164139   0.0756682
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0074343   -0.0320668   0.0166104
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0200431   -0.0013703   0.0409986
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0166712   -0.0869684   0.1104290
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0488953    0.0218833   0.0751615
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0251607   -0.0113066   0.0603129
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.1887603   0.2874874
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0273648    0.0041469   0.0500414
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2002052    0.0204448   0.3469773
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0652291   -0.4195344   0.2006442
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0148522   -0.0667703   0.0345391
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0005475   -0.0390824   0.0386660
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0203030   -0.0693779   0.0265199
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1314766   -0.0207230   0.2609817
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0636024   -0.1391553   0.0069396
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0244142   -0.0616723   0.1035204
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0104040   -0.0838829   0.0964889
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0168670   -0.0582787   0.0866768
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1138342    0.0427379   0.1796502
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0336596   -0.0408663   0.1028495
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0057876   -0.0299413   0.0177997
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0146100   -0.0109105   0.0394863
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0664516   -0.0709590   0.1862315
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0502283    0.0161595   0.0831174
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0218627   -0.0326828   0.0735271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0145585   -0.0153919   0.0436254
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1097161   -0.1071782   0.2841211
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1475410   -0.5125291   0.1293719
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0835381   -0.0137474   0.1714875
6-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0229354   -0.0865158   0.0369245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0105054   -0.0150487   0.0354162
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0072918   -0.0843999   0.0912305
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0271761   -0.0711727   0.1164952
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0961347   -0.0342288   0.2100660
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0193968   -0.1292908   0.1485076
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0349056   -0.0424547   0.1065250
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0689942    0.0100299   0.1244465
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0940359    0.0226866   0.1601764
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0332583   -0.0322337   0.0945950
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0746120   -0.2102860   0.0458528
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0183481   -0.0248758   0.0597489
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0415724   -0.2046332   0.0994162
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0827127    0.0298819   0.1326665
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0657850    0.0127972   0.1159287
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0415320   -0.2321283   0.2544113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0282562   -0.0113842   0.0663429
