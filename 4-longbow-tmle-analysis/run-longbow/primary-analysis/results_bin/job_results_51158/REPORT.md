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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country                        mage       ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)                0      148     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)                1       34     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                    0       29     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                    1        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                   0       31     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                   1       15     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)                0      127     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)                1       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                    0       39     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                    1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                   0       49     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                   1        2     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)                0      149     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)                1       45     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                    0       27     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                    1        7     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                   0       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                   1        2     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)                0      173     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)                1       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                    0        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                    1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                   0       43     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                   1        3     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)                0      121     303
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)                1       32     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                    0       62     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                    1       21     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                   0       56     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                   1       11     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)                0      122     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)                1       39     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                    0       39     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                    1        9     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                   0       81     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                   1       24     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)                0       66     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)                1       74     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    0        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    1        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                   0       53     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                   1       53     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)                0      106     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)                1      190     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                    0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                    1       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                   0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                   1       26     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)                0      260     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)                1       84     410
0-24 months   ki1000108-IRC              INDIA                          <20                    0       25     410
0-24 months   ki1000108-IRC              INDIA                          <20                    1       12     410
0-24 months   ki1000108-IRC              INDIA                          >=30                   0       23     410
0-24 months   ki1000108-IRC              INDIA                          >=30                   1        6     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)                0       60     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)                1      102     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                    0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                    1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                   0       71     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                   1      143     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)                0      784    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)                1      383    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                    0      134    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                    1       59    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                   0      108    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                   1       65    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)                0      153     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)                1      137     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                    0       19     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                    1       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                   0       45     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                   1       47     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)                0      284     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)                1      138     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                    0       55     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                    1       18     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                   0       92     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                   1       40     627
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)                0      429     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)                1       64     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                    0       71     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                    1       14     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                   0      106     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                   1       16     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)                0      434     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)                1       60     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                    0      113     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                    1       23     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                   0      112     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                   1       16     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                0     1411    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                1      160    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    0      147    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    1       20    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   0      582    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   1       56    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)                0     1170    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)                1      267    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                    0      319    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                    1       76    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                   0      755    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                   1      272    2859
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)                0      144     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)                1       31     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                    0       38     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                    1        9     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                   0       46     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                   1       13     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)                0     1584    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)                1      158    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                    0      345    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                    1       58    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                   0      920    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                   1      112    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)                0      297     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)                1       91     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                    0       89     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                    1       34     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                   0       62     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                   1       29     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)                0    11667   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)                1      462   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                    0     1653   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                    1       92   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                   0     2911   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                   1      112   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                0     7977   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                1     1457   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                    0     1835   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                    1      407   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   0     1963   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   1      394   14033
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)                0      354    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)                1      307    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                    0      111    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                    1       91    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                   0      264    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                   1      233    1360
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)                0     3140    5313
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)                1      462    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                    0      368    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                    1       59    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                   0     1077    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                   1      207    5313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)                0     1230    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)                1      597    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                    0      231    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                    1      147    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                   0      508    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                   1      345    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)                0      292     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)                1       72     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                    0       92     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                    1       16     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                   0      151     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                   1       47     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                0    10705   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                1     2004   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                    0     9592   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                    1     2594   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                   0     1928   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                   1      402   27225
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)                0      170     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)                1       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                    0       33     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                    1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                   0       41     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                   1        5     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)                0      129     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)                1       10     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                    0       40     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                    1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                   0       49     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                   1        2     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)                0      179     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)                1       15     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                    0       31     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                    1        3     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                   0       21     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                   1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)                0      182     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)                1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                    0        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                    1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                   0       45     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                   1        1     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)                0      136     303
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)                1       17     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                    0       71     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                    1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                   0       58     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                   1        9     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)                0      145     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)                1       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                    0       43     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                    1        5     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                   0       97     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                   1        8     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)                0      119     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)                1       21     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    0       15     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    1        1     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                   0       91     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                   1       15     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)                0      221     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)                1       71     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                    0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                    1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                   0       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                   1       10     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)                0      294     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)                1       50     410
0-6 months    ki1000108-IRC              INDIA                          <20                    0       28     410
0-6 months    ki1000108-IRC              INDIA                          <20                    1        9     410
0-6 months    ki1000108-IRC              INDIA                          >=30                   0       26     410
0-6 months    ki1000108-IRC              INDIA                          >=30                   1        3     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)                0       93     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)                1       69     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                    0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                    1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                   0      120     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                   1       94     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)                0      990    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)                1      174    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                    0      165    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                    1       28    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                   0      146    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                   1       27    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)                0      258     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)                1       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                    0       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                    1        5     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                   0       77     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                   1       14     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)                0      384     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)                1       38     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                    0       67     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                    1        6     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                   0      117     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                   1       15     627
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)                0      474     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)                1       19     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                    0       81     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                    1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                   0      114     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                   1        8     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)                0      469     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)                1       25     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                    0      123     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                    1       13     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                   0      119     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                   1        9     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                0     1505    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                1       66    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    0      154    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    1       13    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   0      614    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   1       24    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)                0     1040    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)                1      132    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                    0      317    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                    1       42    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                   0      802    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                   1      110    2443
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)                0      151     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)                1       13     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                    0       41     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                    1        5     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                   0       48     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                   1        6     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)                0      372     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)                1       16     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                    0      106     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                    1       17     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                   0       82     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                   1        9     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)                0    11962   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)                1      166   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                    0     1707   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                    1       37   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                   0     2984   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                   1       37   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                0     8599   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                1      822   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                    0     2005   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                    1      232   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   0     2132   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   1      221   14011
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)                0      487    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)                1       44    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                    0      138    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                    1       11    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                   0      356    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                   1       55    1091
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)                0     3314    5135
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)                1      169    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                    0      381    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                    1       22    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                   0     1192    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                   1       57    5135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)                0     1735    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)                1       92    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                    0      347    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                    1       31    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                   0      785    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                   1       68    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)                0      109     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)                1        7     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                    0       37     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                    1        2     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                   0       61     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                   1        4     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                0    11179   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                1     1507   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                    0    10004   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                    1     2142   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                   0     1995   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                   1      332   27159


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8b995bfc-ced2-4a49-bf2d-ea8ed649f5c7/0bb4716b-4b3b-454d-912d-9645eaa91c65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b995bfc-ced2-4a49-bf2d-ea8ed649f5c7/0bb4716b-4b3b-454d-912d-9645eaa91c65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8b995bfc-ced2-4a49-bf2d-ea8ed649f5c7/0bb4716b-4b3b-454d-912d-9645eaa91c65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8b995bfc-ced2-4a49-bf2d-ea8ed649f5c7/0bb4716b-4b3b-454d-912d-9645eaa91c65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1868132   0.1300806   0.2435457
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2162162   0.0833207   0.3491118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3260870   0.1903623   0.4618116
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.2032598   0.1388363   0.2676833
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.2545597   0.1605797   0.3485397
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1603627   0.0705069   0.2502185
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2422360   0.1759512   0.3085209
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1875000   0.0769058   0.2980942
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2285714   0.1481253   0.3090175
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5285714   0.4457249   0.6114179
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.5000000   0.2545356   0.7454644
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5000000   0.4046336   0.5953664
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6418919   0.5872000   0.6965838
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540807   0.7812134
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6046512   0.4583191   0.7509832
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.2441860   0.1987326   0.2896395
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.3243243   0.1733036   0.4753450
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592848   0.3545083
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3281856   0.2910493   0.3653220
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3135501   0.2634644   0.3636357
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3752350   0.3121314   0.4383385
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4700344   0.4131437   0.5269251
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.5475875   0.3930913   0.7020837
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.5243215   0.4219658   0.6266772
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3280853   0.2835007   0.3726700
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2386174   0.1377170   0.3395178
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2985832   0.2224936   0.3746727
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1327510   0.1032216   0.1622804
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1581322   0.0755243   0.2407402
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1329675   0.0741207   0.1918142
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1211223   0.0924199   0.1498248
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1625262   0.0989902   0.2260621
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1189599   0.0615384   0.1763814
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1009992   0.0860587   0.1159397
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1187764   0.0690667   0.1684861
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0916077   0.0692111   0.1140043
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1900803   0.1694379   0.2107227
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1950671   0.1535661   0.2365681
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2521107   0.2255319   0.2786896
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.1771429   0.1204762   0.2338095
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1914894   0.0787986   0.3041802
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2203390   0.1143905   0.3262875
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0902768   0.0684679   0.1120857
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1374085   0.0953502   0.1794667
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1125961   0.0821450   0.1430473
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2346002   0.1922656   0.2769347
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2775819   0.1978018   0.3573620
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3199952   0.2233222   0.4166681
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0382924   0.0304752   0.0461095
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0507871   0.0334456   0.0681287
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0367184   0.0249174   0.0485193
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1544880   0.1471879   0.1617880
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1860206   0.1697627   0.2022784
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1634057   0.1484191   0.1783923
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.4693651   0.4304008   0.5083295
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.4807636   0.4058542   0.5556730
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4491616   0.4057175   0.4926058
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1286474   0.1176727   0.1396221
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1377723   0.1047477   0.1707968
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1591656   0.1390263   0.1793050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.3299428   0.3084546   0.3514310
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.3681417   0.3198616   0.4164219
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4070092   0.3744862   0.4395322
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.1994629   0.1587451   0.2401808
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.1579039   0.0927247   0.2230830
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.2347840   0.1769082   0.2926598
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1601680   0.1531391   0.1671970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2082323   0.2000543   0.2164104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1805846   0.1650871   0.1960821
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1111111   0.0612315   0.1609907
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.1445783   0.0687959   0.2203608
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1343284   0.0525405   0.2161162
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.0993789   0.0530933   0.1456645
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1041667   0.0176105   0.1907229
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0761905   0.0253643   0.1270167
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2431507   0.1938798   0.2924215
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2941176   0.1407527   0.4474826
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2380952   0.1091100   0.3670805
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1492801   0.1307799   0.1677802
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1480765   0.1156279   0.1805251
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1580688   0.1244850   0.1916526
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1072664   0.0715462   0.1429867
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1388889   0.0257836   0.2519941
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.1538462   0.0796267   0.2280656
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.0900474   0.0627146   0.1173801
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0821918   0.0191362   0.1452473
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1136364   0.0594522   0.1678205
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0506073   0.0312653   0.0699493
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0955882   0.0461400   0.1450365
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0703125   0.0259910   0.1146340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0416398   0.0317340   0.0515455
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0747845   0.0333305   0.1162386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0388077   0.0239114   0.0537040
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1142128   0.0953575   0.1330682
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1087831   0.0750578   0.1425084
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1206600   0.0990247   0.1422954
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0792683   0.0378429   0.1206937
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1086957   0.0185775   0.1988138
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1111111   0.0271307   0.1950915
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0412371   0.0214358   0.0610384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1382114   0.0771694   0.1992534
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0989011   0.0375143   0.1602879
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0137151   0.0102133   0.0172169
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0210446   0.0127814   0.0293078
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0123035   0.0067198   0.0178873
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0873012   0.0815912   0.0930112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1061882   0.0932319   0.1191444
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0897956   0.0782377   0.1013534
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0819051   0.0586404   0.1051698
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0721732   0.0306950   0.1136515
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1320205   0.0992363   0.1648046
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0491260   0.0418779   0.0563741
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0538747   0.0315322   0.0762171
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0447686   0.0332686   0.0562686
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0506171   0.0405928   0.0606414
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0717216   0.0454556   0.0979877
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0810601   0.0628055   0.0993146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1206388   0.1143578   0.1269197
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1726617   0.1651937   0.1801298
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1477946   0.1331570   0.1624321


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2150943   0.1655300   0.2646587
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2292994   0.1827279   0.2758709
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5152672   0.4546361   0.5758983
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3125997   0.2762869   0.3489125
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993266   0.0872975   0.1113557
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2151102   0.2000458   0.2301746
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1886121   0.1427907   0.2344335
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1032421   0.0833685   0.1231156
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2558140   0.2209310   0.2906969
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1609064   0.1548268   0.1669861
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1370224   0.1277751   0.1462697
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2014925   0.1710974   0.2318877
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1836547   0.1780857   0.1892238
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0940989   0.0712274   0.1169703
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0433502   0.0351601   0.0515402
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1162505   0.1035378   0.1289632
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0909091   0.0561653   0.1256529
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0697674   0.0494002   0.0901347
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0909999   0.0862375   0.0957624
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0482960   0.0424316   0.0541605
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1465812   0.1415687   0.1515938


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.1573927   0.5830963   2.297318
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.7455243   1.0427077   2.922061
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.2523856   0.7718821   2.032007
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           0.7889544   0.4159728   1.496369
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.7740385   0.4039953   1.483026
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.9435897   0.6041851   1.473657
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9459459   0.5650100   1.583713
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9459459   0.7390120   1.210824
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9622291   0.7285538   1.270853
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9419829   0.7288118   1.217505
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.3281853   0.8043984   2.193038
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8472906   0.4053311   1.771148
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9554046   0.7690293   1.186948
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1433620   0.9488923   1.377687
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.1649945   0.8590546   1.579891
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.1154961   0.8875581   1.401972
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7273029   0.4670682   1.132532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9100778   0.6839172   1.211026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.1911940   0.6747140   2.103029
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.0016305   0.6125871   1.637749
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3418349   0.8513994   2.114778
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9821466   0.5745808   1.678810
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1760136   0.7545122   1.832983
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9070145   0.6817423   1.206725
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0262352   0.8083340   1.302876
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3263381   1.1411087   1.541635
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.0809883   0.5532505   2.112128
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2438491   0.6981512   2.216082
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.5220797   1.0689554   2.167281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2472323   0.9255104   1.680790
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1832127   0.8425751   1.661564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.3640023   0.9596321   1.938766
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.3262991   1.0351032   1.699414
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9588946   0.7307278   1.258306
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.2041106   1.0903830   1.329700
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0577247   0.9541662   1.172523
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0242848   0.8591302   1.221188
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9569557   0.8438532   1.085218
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0709293   0.8302813   1.381326
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2372239   1.0621984   1.441090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1157744   0.9648001   1.290374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2335749   1.1142144   1.365722
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.7916451   0.5015170   1.249613
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1770810   0.8576908   1.615407
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.3000867   1.2314011   1.372604
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1274696   1.0267974   1.238012
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.3012048   0.6525722   2.594554
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.2089552   0.5673887   2.575964
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.0481771   0.4043342   2.717246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.7666667   0.3398341   1.729602
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2096106   0.6913347   2.116425
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9792086   0.5491378   1.746100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9919375   0.8033037   1.224867
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0588740   0.9299808   1.205631
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.2948029   0.5371625   3.121056
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.4342432   0.7980688   2.577539
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9127614   0.3999872   2.082900
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2619617   0.7170788   2.220882
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.8888235   0.9928016   3.593522
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.3893750   0.6647702   2.903805
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.7959890   0.9829747   3.281444
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9319868   0.5934592   1.463621
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9524595   0.6699172   1.354166
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0564488   0.8280863   1.347787
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3712375   0.5146161   3.653776
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4017094   0.5592228   3.513428
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           3.3516260   1.7454965   6.435646
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           2.3983516   1.0942119   5.256835
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.5344105   1.0871867   2.165604
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8970779   0.5714665   1.408217
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.2163431   1.0591805   1.396826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0285724   0.8903400   1.188267
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.8811812   0.4641336   1.672967
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.6118712   1.1066670   2.347706
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0966625   0.7060528   1.703369
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9113009   0.6776238   1.225561
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.4169449   0.9357705   2.145540
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.6014366   1.1876508   2.159388
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.4312292   1.3442553   1.523831
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2251000   1.0982058   1.366656


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0282812   -0.0071337   0.0636960
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0079613   -0.0370997   0.0530223
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0129367   -0.0582904   0.0324171
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0133043   -0.0699133   0.0433048
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0065032   -0.0317243   0.0187180
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0045944   -0.0142326   0.0234215
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0025384   -0.0097874   0.0148643
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0108268   -0.0204477   0.0421014
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0154857   -0.0396492   0.0086779
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0015347   -0.0149819   0.0180513
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0094845   -0.0083157   0.0272848
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0016726   -0.0101817   0.0068365
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0250299    0.0097090   0.0403508
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0114692   -0.0247400   0.0476784
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0129653    0.0002297   0.0257009
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0212138   -0.0053442   0.0477717
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0011229   -0.0014628   0.0037086
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0064185    0.0021063   0.0107306
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0053945   -0.0334511   0.0226621
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0083750    0.0017604   0.0149896
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0261723    0.0124201   0.0399245
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0020296   -0.0251347   0.0291939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0234867    0.0184466   0.0285267
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0143014   -0.0227196   0.0513225
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0070222   -0.0382348   0.0241904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0041319   -0.0187459   0.0270097
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0003931   -0.0036599   0.0044461
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0129259   -0.0090278   0.0348795
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0040515   -0.0122133   0.0203163
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0113980   -0.0020788   0.0248748
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0017104   -0.0042159   0.0076367
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0020377   -0.0118944   0.0159697
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0116408   -0.0164860   0.0397676
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0285303    0.0111666   0.0458940
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0004920   -0.0007620   0.0017459
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0036988    0.0003011   0.0070965
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0189198    0.0007755   0.0370642
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0008300   -0.0049528   0.0032928
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0118420    0.0045519   0.0191321
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0259425    0.0213281   0.0305568


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1314826   -0.0480346   0.2802503
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0376918   -0.2013389   0.2291625
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0564182   -0.2737904   0.1238594
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0258201   -0.1418377   0.0784094
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0102349   -0.0507397   0.0287084
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0184679   -0.0601792   0.0912807
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0076754   -0.0307262   0.0446463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0225155   -0.0447441   0.0854451
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0495383   -0.1296841   0.0249215
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0114287   -0.1194517   0.1270072
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0726188   -0.0736976   0.1989962
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0168390   -0.1061793   0.0652857
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1163585    0.0423613   0.1846378
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0608086   -0.1518042   0.2341750
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.1255813   -0.0051353   0.2392983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0829266   -0.0267967   0.1809250
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0284890   -0.0372177   0.0900332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0398895    0.0127364   0.0662957
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0116269   -0.0739320   0.0470635
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0611215    0.0117126   0.1080603
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0734939    0.0340163   0.1113581
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0100728   -0.1343598   0.1361156
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1278850    0.1002235   0.1546961
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.1140351   -0.2342485   0.3640391
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0760334   -0.4719807   0.2134082
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0167093   -0.0802810   0.1049916
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0026265   -0.0247542   0.0292757
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1075433   -0.0931481   0.2713896
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0430557   -0.1460825   0.2009803
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.1838229   -0.0582042   0.3704948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0394559   -0.1073319   0.1667854
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0175283   -0.1099492   0.1303650
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1280488   -0.2387775   0.3862506
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.4089347    0.1405820   0.5934945
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0346276   -0.0567021   0.1180637
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0406458    0.0026203   0.0772216
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1876503   -0.0107411   0.3471009
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0171858   -0.1062086   0.0646728
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.1895964    0.0670385   0.2960546
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1769836    0.1452383   0.2075499
