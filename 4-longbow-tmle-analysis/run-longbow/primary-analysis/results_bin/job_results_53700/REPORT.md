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

agecat        studyid                    country                        mage       ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      167     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       13     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       32     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       43     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        3     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      138     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       41     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       50     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      172     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       22     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       31     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        3     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       20     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        1     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      180     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      150     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        3     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       81     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      151     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        8     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       44     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      101     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        4     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      135     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        4     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        2     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        3     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      222     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       74     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       27     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       11     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)               0      226     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)               1      118     410
0-24 months   ki1000108-IRC              INDIA                          <20                   0       27     410
0-24 months   ki1000108-IRC              INDIA                          <20                   1       10     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       17     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  1       12     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      134     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       28     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      163     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       51     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      979    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      173    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0      173    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       19    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      138    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       31    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      247     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       43     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       67     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       25     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      349     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       68     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       66     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        7     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      108     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       24     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      464     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       29     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       83     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1        2     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      111     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       11     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      455     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       39     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       14     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      115     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       13     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1472    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       99    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      154    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       13    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      593    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       45    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1193    2864
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      250    2864
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      337    2864
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       57    2864
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      812    2864
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      215    2864
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      174     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       47     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       57     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        2     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1665    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3179
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      339     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      105     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0      104     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       37     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       66     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       35     686
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    11144   16898
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      986   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1628   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      117   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2817   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      206   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8480   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      871   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2018   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      200   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2131   13908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      208   13908
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      608    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1       47    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0      180    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1       16    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      456    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1       34    1341
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     3245    5305
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      352    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                   0      384    5305
0-24 months   ki1135781-COHORTS          INDIA                          <20                   1       42    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0     1129    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      153    5305
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1596    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      224    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      326    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1       51    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      741    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      107    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      362     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        2     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      104     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      196     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0    11861   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      729   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0    11311   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      740   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2129   26945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      175   26945
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      169     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       11     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       34     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       44     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        2     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      138     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       42     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       50     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      177     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       17     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       31     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1        3     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       20     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        1     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               0      182     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               0      152     302
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   0       82     302
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       67     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      158     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       45     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      103     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        2     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      139     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       15     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        3     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      238     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        8     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)               0      238     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)               1      106     410
0-6 months    ki1000108-IRC              INDIA                          <20                   0       28     410
0-6 months    ki1000108-IRC              INDIA                          <20                   1        9     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       18     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  1       11     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0      153     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1        9     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        1     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        0     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0      187     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1       27     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0     1071    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1       75    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   0      182    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   1        9    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      152    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       16    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      280     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       10     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       36     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        0     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       82     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       10     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      379     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       37     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   0       66     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   1        6     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      119     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       13     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      472     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       21     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   0       83     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      116     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1        6     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      465     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       29     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      125     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       11     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      118     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       10     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1518    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       53    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      159    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        8    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      621    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       17    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               0     1068    2444
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               1      106    2444
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      328    2444
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1       30    2444
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      817    2444
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1       95    2444
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      164     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        0     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       46     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       53     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      395     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       49     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0      124     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       17     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       88     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       13     686
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0    11167   16895
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1      962   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1627   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1      117   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2816   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      206   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8653   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      644   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2040   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      158   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2175   13815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      145   13815
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               0      493    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               1       31    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   0      126    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   1       11    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      377    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1       25    1063
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               0     3223    5102
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               1      239    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                   0      370    5102
0-6 months    ki1135781-COHORTS          INDIA                          <20                   1       30    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1145    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1       95    5102
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1690    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      129    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   0      349    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   1       28    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      794    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1       54    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               0      116     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   0       39     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       65     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1        0     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0    12046   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      507   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0    11527   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      469   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2164   26848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      135   26848
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      161     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       33     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      124     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       47     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      172     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1        6     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       34     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       21     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      182     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      132     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       74     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       61     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      115     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        7     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       41     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       93     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        2     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      124     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       13     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        0     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      272     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       39     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        4     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)               0      323     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)               1       21     410
6-24 months   ki1000108-IRC              INDIA                          <20                   0       35     410
6-24 months   ki1000108-IRC              INDIA                          <20                   1        2     410
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       26     410
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        3     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      139     371
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       21     371
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     371
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      181     371
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       29     371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      951    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      106    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0      172    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       10    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      132    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       18    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      246     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       33     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       33     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        3     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       72     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       15     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      325     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       35     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       60     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        1     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      107     540
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       12     540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      427     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1        8     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       68     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      107     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1        5     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      463     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      129     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1        4     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      118     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1        5     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1259    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       48    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      135    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        6    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      526    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       29    2003
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1188    2689
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      151    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      333    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       31    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      851    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      135    2689
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      165     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       42     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       56     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1665    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3179
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      316     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       66     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       96     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       66     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       23     590
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    11868   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1       26   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1715   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2989   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     6948   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      246   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1661   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1       42   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1825   10789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1       67   10789
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      575    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1       16    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0      167    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1        5    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      441    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1        9    1213
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     3250    4957
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      115    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                   0      363    4957
6-24 months   ki1135781-COHORTS          INDIA                          <20                   1       14    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0     1155    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  1       60    4957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1567    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      106    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      322    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1       24    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      732    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1       58    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      355     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        2     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      102     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      194     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     7627   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      230   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     7904   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      279   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1209   17292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1       43   17292


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/ec359a6c-4382-4423-8788-b30e96706a00/247198fc-5150-4bf4-8bf8-52009d2a87d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ec359a6c-4382-4423-8788-b30e96706a00/247198fc-5150-4bf4-8bf8-52009d2a87d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ec359a6c-4382-4423-8788-b30e96706a00/247198fc-5150-4bf4-8bf8-52009d2a87d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ec359a6c-4382-4423-8788-b30e96706a00/247198fc-5150-4bf4-8bf8-52009d2a87d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2500000   0.2006047   0.2993953
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2558140   0.1252270   0.3864009
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.3430233   0.2927964   0.3932501
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2702703   0.1269995   0.4135411
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4137931   0.2343212   0.5932650
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1500431   0.1201652   0.1799210
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1002234   0.0567526   0.1436943
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1825615   0.1559358   0.2091872
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1630695   0.1275833   0.1985558
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0958904   0.0282924   0.1634885
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1818182   0.1159684   0.2476679
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0790941   0.0552566   0.1029315
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1026938   0.0514124   0.1539752
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1005246   0.0478359   0.1532134
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0628572   0.0508397   0.0748748
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0772893   0.0362827   0.1182959
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0710602   0.0510785   0.0910419
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1761737   0.1559302   0.1964172
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1460604   0.1089662   0.1831546
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2092240   0.1835849   0.2348631
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0445688   0.0311754   0.0579623
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0473529   0.0316963   0.0630094
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0505796   0.0254299   0.0757293
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2363163   0.1967278   0.2759047
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2642157   0.1904665   0.3379649
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3503655   0.2566644   0.4440667
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0812121   0.0470259   0.1153983
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0662358   0.0351748   0.0972968
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0687301   0.0398492   0.0976110
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0930362   0.0870799   0.0989925
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0867013   0.0746809   0.0987217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0974787   0.0846069   0.1103506
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0706380   0.0510760   0.0902000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0847631   0.0447681   0.1247581
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0687221   0.0463366   0.0911075
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0979349   0.0882035   0.1076662
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1006355   0.0715201   0.1297510
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1184056   0.1005446   0.1362667
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1229627   0.1078152   0.1381102
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1253382   0.0914280   0.1592485
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1265532   0.1040173   0.1490891
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0580563   0.0534278   0.0626848
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0615080   0.0565015   0.0665144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0760646   0.0640253   0.0881039
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1849315   0.1403402   0.2295228
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278510   0.2662666
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1904762   0.0715577   0.3093947
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.3081395   0.2592876   0.3569915
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024974   0.5561233
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0654450   0.0396258   0.0912642
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0471204   0.0196351   0.0746057
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.0952381   0.0672186   0.1232576
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.0889423   0.0615657   0.1163189
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0833333   0.0194412   0.1472255
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0984848   0.0476124   0.1493573
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0588361   0.0380571   0.0796151
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0804370   0.0341439   0.1267301
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0777414   0.0307546   0.1247283
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0337365   0.0248065   0.0426664
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0479042   0.0155069   0.0803015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0266458   0.0141467   0.0391449
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0918829   0.0749058   0.1088600
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0843738   0.0538151   0.1149325
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1005421   0.0809006   0.1201837
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1097358   0.0805277   0.1389438
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1208145   0.0658016   0.1758275
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1220018   0.0557324   0.1882712
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0792508   0.0447854   0.1137162
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0680908   0.0371703   0.0990113
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0688051   0.0399707   0.0976395
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0692853   0.0640793   0.0744912
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0706616   0.0595674   0.0817558
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0651989   0.0544984   0.0758994
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0570433   0.0374367   0.0766499
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0862583   0.0379739   0.1345428
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0596844   0.0364959   0.0828728
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0689111   0.0604554   0.0773668
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0751882   0.0494364   0.1009400
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0753955   0.0606432   0.0901478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0706372   0.0588260   0.0824485
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0696306   0.0438794   0.0953818
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0643138   0.0475394   0.0810883
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0404923   0.0364216   0.0445630
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0391774   0.0350562   0.0432986
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0584562   0.0474175   0.0694948
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1002557   0.0728719   0.1276396
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0548424   0.0220971   0.0875877
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1186601   0.0965371   0.1407831
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0367253   0.0265259   0.0469248
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0425532   0.0092282   0.0758782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0522523   0.0337336   0.0707709
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1139117   0.0963061   0.1315174
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0835519   0.0528204   0.1142833
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1426987   0.1201518   0.1652456
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0444801   0.0310205   0.0579398
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0480739   0.0315679   0.0645800
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0512022   0.0267171   0.0756872
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1724298   0.1344309   0.2104287
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1943726   0.1227512   0.2659940
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2599641   0.1680388   0.3518894
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0339147   0.0296816   0.0381478
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0221238   0.0152344   0.0290131
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0416879   0.0319866   0.0513892
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0270728   0.0139828   0.0401628
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0290698   0.0039522   0.0541873
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0200000   0.0070596   0.0329404
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0341588   0.0280033   0.0403142
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0402590   0.0190322   0.0614859
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0503210   0.0377922   0.0628499
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0632952   0.0516159   0.0749745
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0676579   0.0409257   0.0943900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0731386   0.0549461   0.0913311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0296156   0.0256110   0.0336201
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0338240   0.0294995   0.0381485
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0344577   0.0250301   0.0438853


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1591640   0.1303913   0.1879367
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0660774   0.0560867   0.0760682
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1822626   0.1681211   0.1964040
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471847   0.0353428   0.0590265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0919615   0.0871588   0.0967642
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1031103   0.0949263   0.1112943
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610132   0.0575333   0.0644930
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0903226   0.0677415   0.1129037
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0328283   0.0256620   0.0399945
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0945172   0.0829165   0.1061178
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1151604   0.0912555   0.1390652
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0685487   0.0643349   0.0727624
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0713446   0.0642809   0.0784082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413811   0.0384001   0.0443621
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1178877   0.1056970   0.1300784
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471847   0.0353428   0.0590265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329039   0.0295377   0.0362701
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0381279   0.0327962   0.0434596
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319223   0.0290352   0.0348093


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8235294   0.4130909   1.6417711
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0232558   0.5919164   1.7689196
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.7879066   0.4546040   1.3655769
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           1.2063121   0.7632228   1.9066372
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.6679644   0.4724568   0.9443751
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2167268   1.1148178   1.3279517
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5880339   0.2811841   1.2297419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1149733   0.7307436   1.7012334
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.2983755   0.7249340   2.3254240
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2709502   0.6943839   2.3262555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2296007   0.6995738   2.1611986
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1305020   0.8046658   1.5882801
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8290706   0.6274922   1.0954051
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.1876008   1.0039954   1.4047829
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0624657   0.6974487   1.6185183
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1348651   0.6528654   1.9727172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1180598   0.8071731   1.5486861
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4826130   1.0812406   2.0329808
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8155902   0.6622596   1.0044208
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8463042   0.6919715   1.0350583
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9319094   0.7999561   1.0856285
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0477509   0.9047523   1.2133507
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.1999644   0.6942432   2.0740779
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9728762   0.6342289   1.4923445
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0275762   0.7567449   1.3953354
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2090243   1.0092383   1.4483594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0193193   0.7571760   1.3722197
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0292002   0.8288711   1.2779466
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0594538   0.9540349   1.1765213
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3101870   1.1003294   1.5600692
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7952070   0.3413429   1.8525481
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0299824   0.5274371   2.0113556
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.7893932   0.4372748   1.4250572
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.2309694   0.7523425   2.0140902
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7200000   0.4186812   1.2381735
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.4552381   1.0939298   1.9358810
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9369369   0.4101128   2.1405105
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1072891   0.6069010   2.0202458
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3671370   0.6955632   2.6871228
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.3213221   0.6557582   2.6624021
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.4199525   0.6868599   2.9354825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7898208   0.4609054   1.3534597
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9182749   0.6117111   1.3784757
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0942418   0.8364037   1.4315635
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1009584   0.6495804   1.8659881
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1117781   0.6071592   2.0357931
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8591816   0.6959241   1.0607377
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8681945   0.7067000   1.0665935
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0198645   0.8569377   1.2137681
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9410213   0.7856132   1.1271718
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.5121547   0.7841832   2.9159154
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0462989   0.6224637   1.7587235
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0910897   0.7583455   1.5698342
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0940970   0.8684653   1.3783490
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9857493   0.6568812   1.4792655
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9104810   0.6679015   1.2411645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9675263   0.8438622   1.1093128
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.4436357   1.1726087   1.7773056
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.5470249   0.3115286   0.9605417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1835738   0.9163823   1.5286710
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1586879   0.5047784   2.6596972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4227853   0.9069712   2.2319541
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.7334788   0.4921205   1.0932104
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2527131   1.0040751   1.5629210
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0807956   0.7036977   1.6599729
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1511245   0.6751476   1.9626635
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1272563   0.7335064   1.7323733
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5076517   0.9940762   2.2865586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.6523359   0.4664996   0.9122025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.2291984   0.9439802   1.6005938
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0737645   0.3989341   2.8901274
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.7387500   0.3293871   1.6568700
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1785859   0.6750707   2.0576581
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.4731518   1.0832036   2.0034796
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0689250   0.6912643   1.6529145
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1555149   0.8478325   1.5748566
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1421021   0.9548575   1.3660648
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1634990   0.8559341   1.5815821


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0033512   -0.0254025    0.0187001
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0015598   -0.0215967    0.0184770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0026538   -0.0074350    0.0021274
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0039056   -0.0238720    0.0160609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0079772   -0.0072350    0.0231893
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0032202   -0.0040777    0.0105182
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0060889   -0.0086206    0.0207984
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0026158   -0.0073651    0.0125967
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0217012   -0.0031000    0.0465025
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0037473   -0.0069488   -0.0005458
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010747   -0.0044822    0.0023328
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0016960   -0.0123763    0.0157684
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0051754   -0.0006273    0.0109781
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0024889   -0.0072806    0.0122584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0029569   -0.0002305    0.0061442
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0028663   -0.0226565    0.0169239
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008225   -0.0203468    0.0187019
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0010002   -0.0036966    0.0056969
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0013803   -0.0145456    0.0173061
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0071270   -0.0064153    0.0206692
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009082   -0.0059724    0.0041560
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0026343   -0.0099065    0.0151750
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0054246   -0.0125372    0.0233864
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0031928   -0.0065141    0.0001285
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0007366   -0.0037105    0.0022373
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0059858   -0.0084995    0.0204712
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0024334   -0.0025313    0.0073982
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0013205   -0.0087343    0.0060933
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0008888   -0.0018977    0.0036752
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037835   -0.0099705    0.0024036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0047125   -0.0019571    0.0113821
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0039759   -0.0089199    0.0168718
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0027045   -0.0073308    0.0127399
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0174007   -0.0066845    0.0414859
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010108   -0.0033893    0.0013677
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0023407   -0.0113312    0.0066498
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0039691    0.0000841    0.0078542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0036325   -0.0040836    0.0113486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0023067   -0.0006684    0.0052818


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0135870   -0.1070401    0.0719771
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0045681   -0.0649954    0.0524305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0180054   -0.0507677    0.0137353
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0245379   -0.1579328    0.0934897
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0916165   -0.0997809    0.2497046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0487341   -0.0681632    0.1528385
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0334073   -0.0507638    0.1108359
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0554377   -0.1777449    0.2424523
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0841076   -0.0170123    0.1751734
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0483743   -0.0843884   -0.0135563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0116866   -0.0494168    0.0246871
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0234474   -0.1917856    0.1998100
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0501929   -0.0076692    0.1047326
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0198394   -0.0611976    0.0946880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0484631   -0.0052039    0.0992649
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0157432   -0.1304383    0.0873149
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0026763   -0.0682637    0.0588843
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0150524   -0.0603904    0.0851277
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0152816   -0.1777722    0.1766911
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.1080448   -0.1204747    0.2899580
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0276649   -0.1939816    0.1154846
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0278707   -0.1142940    0.1518976
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0471045   -0.1221699    0.1908446
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0419781   -0.0798244   -0.0054582
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0107454   -0.0550656    0.0317130
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0949695   -0.1654061    0.2971718
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0341083   -0.0379789    0.1011890
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0190506   -0.1317886    0.0824575
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0214777   -0.0482402    0.0865586
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0392182   -0.1003608    0.0185270
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1137250   -0.0607877    0.2595282
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0337265   -0.0820976    0.1371532
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0573180   -0.1773203    0.2451932
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0916644   -0.0439554    0.2096659
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0307204   -0.1054787    0.0389823
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0946418   -0.5237626    0.2136303
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1041008   -0.0027597    0.1995736
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0542750   -0.0681033    0.1626318
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0722593   -0.0255493    0.1607398
