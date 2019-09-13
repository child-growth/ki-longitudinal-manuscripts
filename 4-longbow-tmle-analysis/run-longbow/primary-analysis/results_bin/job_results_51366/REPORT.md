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
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      175     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       31     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        3     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        2     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      180     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      151     302
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        2     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       81     302
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      152     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        7     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       44     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      102     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        3     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      136     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        3     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        2     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      104     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        2     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      219     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       77     373
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
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      143     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       19     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      171     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       43     377
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
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      350     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       67     622
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
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1238    2863
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      205    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      348    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       46    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      840    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      186    2863
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      174     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       47     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       57     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        2     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1664    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      295     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       93     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       31     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       59     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       32     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    11144   16898
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      986   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1628   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      117   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2817   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      206   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8483   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      863   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2017   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      199   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2132   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      207   13901
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
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      361     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        3     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      104     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      196     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0    11865   26949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      729   26949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0    11313   26949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      738   26949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2129   26949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      175   26949
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       51     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      179     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       15     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       31     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1        3     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       19     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        2     249
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      104     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      139     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       15     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      104     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      235     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       57     368
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
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0      154     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1        8     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        1     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        0     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0      195     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1       19     377
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
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               0     1107    2415
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               1       59    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      339    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1       17    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      830    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1       63    2415
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      164     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        0     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       46     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       53     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      352     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       36     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0      113     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       81     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       10     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0    11167   16895
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1      962   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1627   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1      117   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2816   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      206   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8650   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      642   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2039   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      158   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2175   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      145   13809
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0    12050   26852
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      507   26852
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0    11529   26852
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      467   26852
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2164   26852
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      135   26852
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
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      173     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1        5     233
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
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      133     270
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       74     270
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       61     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      116     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        6     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       41     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       93     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        2     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      125     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        3     245
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
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      149     372
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       11     372
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     372
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     372
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      184     372
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       27     372
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      325     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       34     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       60     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        1     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      107     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       12     539
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1664    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      315     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       67     590
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     6871   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      240   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1637   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1       41   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1813   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1       66   10668
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
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      354     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        3     659
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
![](/tmp/8f975343-0cdc-44e1-8592-51863883679d/9726265c-890f-4b6b-9494-c12b3bfb0c07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f975343-0cdc-44e1-8592-51863883679d/9726265c-890f-4b6b-9494-c12b3bfb0c07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f975343-0cdc-44e1-8592-51863883679d/9726265c-890f-4b6b-9494-c12b3bfb0c07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f975343-0cdc-44e1-8592-51863883679d/9726265c-890f-4b6b-9494-c12b3bfb0c07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2601351   0.2100901   0.3101802
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2558140   0.1252270   0.3864009
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.3430233   0.2927964   0.3932501
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.2702703   0.1269995   0.4135411
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4137931   0.2343212   0.5932650
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1500431   0.1201652   0.1799210
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1002234   0.0567526   0.1436943
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1825615   0.1559358   0.2091872
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1606715   0.1253966   0.1959463
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0958904   0.0282924   0.1634885
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1818182   0.1159684   0.2476679
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0790804   0.0552864   0.1028744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1035970   0.0527411   0.1544529
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1035316   0.0505616   0.1565015
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0628627   0.0508355   0.0748898
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0784842   0.0372211   0.1197474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0709975   0.0510648   0.0909302
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1443672   0.1256184   0.1631159
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1156816   0.0820050   0.1493581
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1828210   0.1583838   0.2072582
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0448886   0.0315695   0.0582077
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0526893   0.0357445   0.0696340
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0496882   0.0240423   0.0753342
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2395249   0.1969435   0.2821062
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2529028   0.1751769   0.3306288
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3516490   0.2531433   0.4501546
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0813330   0.0470168   0.1156491
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0677959   0.0379209   0.0976708
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0666714   0.0368823   0.0964605
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0925459   0.0866419   0.0984499
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0912760   0.0790900   0.1034620
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0878976   0.0762382   0.0995570
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0701593   0.0506394   0.0896792
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0856274   0.0449756   0.1262793
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0687572   0.0463451   0.0911693
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0980445   0.0882931   0.1077959
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1004154   0.0712635   0.1295672
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1174977   0.0997271   0.1352683
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1229003   0.1077448   0.1380558
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1273396   0.0932101   0.1614691
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1265934   0.1040397   0.1491470
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0579213   0.0533104   0.0625322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0610934   0.0561126   0.0660742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0768192   0.0646816   0.0889568
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1952055   0.1496819   0.2407290
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0587196   0.0378851   0.0795542
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0840338   0.0372635   0.1308040
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0709282   0.0231184   0.1187379
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0337365   0.0248065   0.0426664
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0479042   0.0155069   0.0803015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0266458   0.0141467   0.0391449
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0508879   0.0381409   0.0636349
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0429607   0.0217943   0.0641272
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0681088   0.0515874   0.0846301
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0930670   0.0640992   0.1220349
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.0861461   0.0363482   0.1359439
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1105866   0.0468120   0.1743611
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0795713   0.0449803   0.1141624
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0673471   0.0373004   0.0973937
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0671414   0.0372786   0.0970043
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0693012   0.0641136   0.0744887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0717149   0.0607577   0.0826721
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0624235   0.0524531   0.0723940
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0573507   0.0376767   0.0770247
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0859443   0.0376371   0.1342515
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0608653   0.0375412   0.0841893
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0688151   0.0603650   0.0772652
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0741821   0.0485847   0.0997794
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0767466   0.0617231   0.0917700
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0705576   0.0587700   0.0823451
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0681412   0.0430693   0.0932130
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0640577   0.0473696   0.0807459
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0403951   0.0363430   0.0444471
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0389600   0.0348538   0.0430661
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0595846   0.0482017   0.0709676
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1002557   0.0728719   0.1276396
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0548424   0.0220971   0.0875877
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1186601   0.0965371   0.1407831
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0367253   0.0265259   0.0469248
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0425532   0.0092282   0.0758782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0522523   0.0337336   0.0707709
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1141704   0.0965370   0.1318039
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0825150   0.0520560   0.1129740
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1427575   0.1202542   0.1652609
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0449438   0.0315759   0.0583118
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0524460   0.0355144   0.0693776
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0495309   0.0239026   0.0751591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1745343   0.1362979   0.2127707
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1826356   0.1110285   0.2542427
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2428112   0.1514543   0.3341682
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0337703   0.0295648   0.0379758
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0248402   0.0174366   0.0322438
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0347923   0.0264601   0.0431246
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0270728   0.0139828   0.0401628
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0290698   0.0039522   0.0541873
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0200000   0.0070596   0.0329404
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0342702   0.0280976   0.0404429
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0410671   0.0198009   0.0623333
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0491794   0.0368308   0.0615279
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0633706   0.0516756   0.0750656
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0689461   0.0415785   0.0963137
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0729688   0.0547882   0.0911493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0293520   0.0253868   0.0333172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0338370   0.0295108   0.0381632
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0355056   0.0247675   0.0462437


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1575563   0.1289019   0.1862106
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0660774   0.0560867   0.0760682
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1526371   0.1394613   0.1658129
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471995   0.0353423   0.0590567
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912884   0.0865003   0.0960765
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1031103   0.0949263   0.1112943
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609299   0.0574570   0.0644028
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0903226   0.0677415   0.1129037
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0328283   0.0256620   0.0399945
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0575569   0.0482661   0.0668478
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0684336   0.0642223   0.0726450
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0713446   0.0642809   0.0784082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413005   0.0383253   0.0442756
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1178877   0.1056970   0.1300784
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471995   0.0353423   0.0590567
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325272   0.0291608   0.0358936
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0381279   0.0327962   0.0434596
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319223   0.0290352   0.0348093


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7914439   0.3975810   1.5754863
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9833887   0.5699112   1.6968491
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.7879066   0.4546040   1.3655769
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           1.2063121   0.7632228   1.9066372
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.6679644   0.4724568   0.9443751
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2167268   1.1148178   1.3279517
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5968105   0.2852176   1.2488106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1316147   0.7409103   1.7283493
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3100214   0.7370230   2.3284970
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.3091943   0.7229990   2.3706668
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2485029   0.7135277   2.1845817
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1294066   0.8041622   1.5861965
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8013010   0.5825881   1.1021223
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2663612   1.0510831   1.5257315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1737775   0.7723814   1.7837739
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1069228   0.6252556   1.9596433
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0558521   0.7402885   1.5059314
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4681105   1.0534336   2.0460220
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8335597   0.6797958   1.0221037
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8197338   0.6849822   0.9809942
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9862779   0.8506017   1.1435952
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9497731   0.8197476   1.1004227
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2204721   0.7039815   2.1158968
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9800159   0.6382737   1.5047323
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0241819   0.7535336   1.3920394
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1984120   0.9999332   1.4362874
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0361213   0.7713312   1.3918111
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0300493   0.8293941   1.2792489
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0547656   0.9501268   1.1709285
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3262687   1.1138499   1.5791972
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7533540   0.3240970   1.7511493
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9757728   0.5010837   1.9001466
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.4311021   0.7388883   2.7718033
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2079126   0.5636693   2.5884910
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.4199525   0.6868599   2.9354825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7898208   0.4609054   1.3534597
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8442231   0.4858425   1.4669624
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3384080   0.9444947   1.8966076
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.9256346   0.4800092   1.7849648
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1882465   0.6171495   2.2878245
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8463736   0.6817259   1.0507862
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8437890   0.7045578   1.0105344
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0348294   0.8728926   1.2268083
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9007572   0.7550572   1.0745723
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4985750   0.7758488   2.8945423
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0612823   0.6344231   1.7753454
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0779909   0.7473995   1.5548102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1152575   0.8851328   1.4052120
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9657530   0.6446815   1.4467281
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9078791   0.6661914   1.2372488
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9644731   0.8415154   1.1053968
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.4750475   1.1956293   1.8197658
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.5470249   0.3115286   0.9605417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1835738   0.9163823   1.5286710
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1586879   0.5047784   2.6596972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4227853   0.9069712   2.2319541
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.7227353   0.4843329   1.0784861
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2503898   1.0025570   1.5594869
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1669236   0.7692918   1.7700835
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1020615   0.6209290   1.9560038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0464169   0.6673556   1.6407869
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.3911951   0.9000461   2.1503606
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7355627   0.5325454   1.0159744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0302645   0.7864927   1.3495929
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0737645   0.3989341   2.8901274
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.7387500   0.3293871   1.6568700
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1983307   0.6924996   2.0736423
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.4350457   1.0534819   1.9548093
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0879820   0.7024156   1.6851915
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1514606   0.8445544   1.5698947
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1528013   0.9629314   1.3801095
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2096473   0.8671738   1.6873741


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0054434   -0.0275736    0.0166867
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0015598   -0.0215967    0.0184770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0026538   -0.0074350    0.0021274
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0031152   -0.0230392    0.0168088
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0079909   -0.0071966    0.0231783
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0032148   -0.0040854    0.0105150
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0082699   -0.0054997    0.0220396
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0023109   -0.0075265    0.0121482
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0196113   -0.0069875    0.0462102
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0038682   -0.0071060   -0.0006304
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012575   -0.0046122    0.0020971
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0021748   -0.0118828    0.0162323
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0050658   -0.0007532    0.0108848
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0025513   -0.0072254    0.0123279
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0030086   -0.0001713    0.0061885
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049881   -0.0248855    0.0149093
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008225   -0.0203468    0.0187019
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0010002   -0.0036966    0.0056969
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0013803   -0.0145456    0.0173061
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0072434   -0.0063365    0.0208234
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009082   -0.0059724    0.0041560
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0066690   -0.0030532    0.0163913
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0000438   -0.0173491    0.0172615
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0035133   -0.0068918   -0.0001349
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0008675   -0.0038170    0.0020820
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0056785   -0.0088131    0.0201701
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0025295   -0.0024300    0.0074890
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0012409   -0.0086363    0.0061546
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0009054   -0.0018730    0.0036838
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037835   -0.0099705    0.0024036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0047125   -0.0019571    0.0113821
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0037173   -0.0091987    0.0166332
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0022557   -0.0076238    0.0121351
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0169912   -0.0071843    0.0411666
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012431   -0.0035860    0.0010998
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0023407   -0.0113312    0.0066498
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0038577   -0.0000346    0.0077499
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0035571   -0.0041683    0.0112826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0025703   -0.0004002    0.0055407


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0213727   -0.1120395    0.0619019
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0045681   -0.0649954    0.0524305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0180054   -0.0507677    0.0137353
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0197719   -0.1543674    0.0991301
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0917738   -0.0992261    0.2495858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0486517   -0.0682946    0.1527958
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0541803   -0.0404412    0.1401965
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0489596   -0.1805595    0.2338566
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0756797   -0.0327052    0.1726893
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0499348   -0.0854462   -0.0155853
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0137753   -0.0511888    0.0223066
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0300660   -0.1850567    0.2061377
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0491299   -0.0089058    0.1038272
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0203366   -0.0607646    0.0952371
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0493781   -0.0042281    0.1001228
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0262231   -0.1362595    0.0731573
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0026763   -0.0682637    0.0588843
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0150524   -0.0603904    0.0851277
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0152816   -0.1777722    0.1766911
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.1098106   -0.1195929    0.2922096
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0276649   -0.1939816    0.1154846
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1158685   -0.0692125    0.2689119
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0004704   -0.2049219    0.1692897
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0461927   -0.0837979   -0.0098923
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0126770   -0.0566991    0.0295112
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0900928   -0.1703835    0.2925985
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0354543   -0.0365558    0.1024618
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0179014   -0.1303583    0.0833674
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0219222   -0.0477237    0.0869384
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0392182   -0.1003608    0.0185270
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1137250   -0.0607877    0.2595282
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0315322   -0.0844695    0.1351257
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0477899   -0.1829237    0.2335059
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0887149   -0.0462001    0.2062316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0382178   -0.1126888    0.0312689
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0946418   -0.5237626    0.2136303
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1011768   -0.0059336    0.1968822
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0531486   -0.0693912    0.1616467
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0805160   -0.0170481    0.1687209
