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

agecat        studyid                    country                        mage       ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)                0      147     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)                1       35     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                    0       29     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                    1        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                   0       31     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                   1       15     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)                0      124     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)                1       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                    0       39     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                    1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                   0       48     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                   1        3     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)                0      148     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)                1       46     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                    0       25     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                    1        9     249
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)                0      121     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)                1       40     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                    0       39     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                    1        9     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                   0       81     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                   1       24     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)                0       66     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)                1       74     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    1        9     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                   0       52     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                   1       54     262
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
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)                0       65     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)                1       97     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                    0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                    1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                   0       85     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                   1      129     377
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)                0      428     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)                1       65     700
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)                0     1585    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)                1      158    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                    0      345    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                    1       58    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                   0      920    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                   1      112    3178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)                0      349     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)                1       98     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                    0      107     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                    1       42     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                   0       73     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                   1       29     698
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)                0    11667   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)                1      462   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                    0     1653   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                    1       92   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                   0     2911   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                   1      112   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                0     7915   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                1     1519   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                    0     1815   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                    1      428   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   0     1946   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   1      411   14034
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                0    10693   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                1     2008   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                    0     9578   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                    1     2607   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                   0     1927   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                   1      403   27216
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)                0      170     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)                1       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                    0       33     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                    1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                   0       41     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                   1        5     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)                0      128     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)                1       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                    0       40     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                    1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                   0       48     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                   1        3     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)                0      179     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)                1       15     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                    0       30     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                    1        4     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                   0       21     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                   1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)                0      181     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)                1        8     240
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    0       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                    1        2     262
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
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)                0       94     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)                1       68     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                    0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                    1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                   0      123     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                   1       91     377
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)                0      421     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)                1       26     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                    0      124     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                    1       25     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                   0       93     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                   1        9     698
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)                0    11962   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)                1      166   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                    0     1707   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                    1       37   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                   0     2984   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                   1       37   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                0     8598   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)                1      826   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                    0     2006   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                    1      233   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   0     2133   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                   1      221   14017
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                0    11166   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)                1     1512   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                    0     9990   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                    1     2155   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                   0     1994   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                   1      333   27150


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
![](/tmp/4b138d53-a564-4caf-9dfb-c93d18096e32/21bd549b-78da-4aad-b90b-ad1e3a5883ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b138d53-a564-4caf-9dfb-c93d18096e32/21bd549b-78da-4aad-b90b-ad1e3a5883ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b138d53-a564-4caf-9dfb-c93d18096e32/21bd549b-78da-4aad-b90b-ad1e3a5883ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b138d53-a564-4caf-9dfb-c93d18096e32/21bd549b-78da-4aad-b90b-ad1e3a5883ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1923077   0.1349417   0.2496737
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2162162   0.0833207   0.3491118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3260870   0.1903623   0.4618116
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.2063683   0.1417317   0.2710050
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.2610181   0.1658849   0.3561513
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1674482   0.0788118   0.2560845
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2484472   0.1815936   0.3153008
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1875000   0.0769058   0.2980942
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2285714   0.1481253   0.3090175
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5285714   0.4457249   0.6114179
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.5625000   0.3189609   0.8060391
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5094340   0.4140845   0.6047834
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6418919   0.5872000   0.6965838
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540807   0.7812134
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6046512   0.4583191   0.7509832
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.2441860   0.1987326   0.2896395
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.3243243   0.1733036   0.4753450
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592848   0.3545083
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3286740   0.2907771   0.3665708
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3117028   0.2650480   0.3583576
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3678941   0.3133373   0.4224508
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4690802   0.4120578   0.5261026
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4701420   0.3186023   0.6216817
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.5281713   0.4242110   0.6321315
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3280304   0.2834723   0.3725885
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2348075   0.1344943   0.3351206
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3021706   0.2262642   0.3780770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1355519   0.1058848   0.1652189
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1651818   0.0860242   0.2443394
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1637734   0.1040653   0.2234816
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1206203   0.0918883   0.1493523
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1720976   0.1092182   0.2349770
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1198456   0.0617950   0.1778962
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0998038   0.0848413   0.1147664
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1250859   0.0703159   0.1798559
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1002458   0.0761035   0.1243881
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1890154   0.1683187   0.2097121
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1961176   0.1547433   0.2374918
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2534926   0.2268310   0.2801541
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.1771429   0.1204762   0.2338095
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1914894   0.0787986   0.3041802
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2203390   0.1143905   0.3262875
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0888814   0.0671634   0.1105993
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1355159   0.0938505   0.1771813
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1159068   0.0832741   0.1485394
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2191999   0.1807335   0.2576662
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2812255   0.2082331   0.3542179
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2867697   0.1980252   0.3755142
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0383334   0.0304154   0.0462514
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0501839   0.0328814   0.0674863
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0363970   0.0246444   0.0481496
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1597247   0.1523193   0.1671301
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1847095   0.1680993   0.2013197
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1809012   0.1648710   0.1969313
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.4650926   0.4266726   0.5035126
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.4813136   0.4059474   0.5566797
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4540054   0.4100418   0.4979691
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1284728   0.1175170   0.1394286
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1381470   0.1051611   0.1711329
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1597995   0.1395467   0.1800523
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.3296660   0.3082365   0.3510956
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.3668494   0.3194584   0.4142403
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4075435   0.3752636   0.4398234
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.1971913   0.1564803   0.2379022
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.1406126   0.0754039   0.2058214
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.2299284   0.1718540   0.2880028
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1606213   0.1535418   0.1677007
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2091043   0.2009025   0.2173062
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1810814   0.1654646   0.1966982
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1111111   0.0612315   0.1609907
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.1445783   0.0687959   0.2203608
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1343284   0.0525405   0.2161162
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.0993789   0.0530933   0.1456645
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1041667   0.0176105   0.1907229
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0761905   0.0253643   0.1270167
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2431507   0.1938798   0.2924215
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2941176   0.1407527   0.4474826
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2380952   0.1091100   0.3670805
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1495135   0.1304595   0.1685674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1445874   0.1190384   0.1701363
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1558588   0.1204012   0.1913164
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1072664   0.0715462   0.1429867
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1388889   0.0257836   0.2519941
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.1538462   0.0796267   0.2280656
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.0900474   0.0627146   0.1173801
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0821918   0.0191362   0.1452473
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1136364   0.0594522   0.1678205
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0506073   0.0312653   0.0699493
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0955882   0.0461400   0.1450365
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0703125   0.0259910   0.1146340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0416367   0.0317222   0.0515511
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0751317   0.0338461   0.1164172
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0387574   0.0238323   0.0536826
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1143551   0.0956239   0.1330864
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1079257   0.0744784   0.1413730
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1196898   0.0981096   0.1412701
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0792683   0.0378429   0.1206937
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1086957   0.0185775   0.1988138
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1111111   0.0271307   0.1950915
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0581655   0.0364522   0.0798788
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1677852   0.1077424   0.2278280
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.0882353   0.0331517   0.1433188
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0137022   0.0101385   0.0172660
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0218192   0.0129020   0.0307364
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0119788   0.0066410   0.0173167
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0868201   0.0811246   0.0925155
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1021121   0.0890877   0.1151365
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0950620   0.0826912   0.1074327
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0830513   0.0596132   0.1064894
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0707500   0.0299603   0.1115397
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1321451   0.0994245   0.1648657
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0488069   0.0415905   0.0560232
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0545641   0.0321936   0.0769345
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0460637   0.0343178   0.0578097
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0506863   0.0406713   0.0607013
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0706527   0.0450862   0.0962193
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0811953   0.0630362   0.0993544
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1209855   0.1146455   0.1273255
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1734422   0.1659526   0.1809318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1486006   0.1338554   0.1633457


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2188679   0.1689910   0.2687448
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5229008   0.4623051   0.5834965
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3125997   0.2762869   0.3489125
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993266   0.0872975   0.1113557
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2151102   0.2000458   0.2301746
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1886121   0.1427907   0.2344335
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1032096   0.0833330   0.1230861
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1680205   0.1618345   0.1742065
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1370224   0.1277751   0.1462697
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2014925   0.1710974   0.2318877
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1843768   0.1787788   0.1899748
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0913177   0.0865488   0.0960866
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0482960   0.0424316   0.0541605
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1473297   0.1422794   0.1523799


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.1243243   0.5677789   2.226404
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.6956522   1.0161160   2.829634
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.2648168   0.7833276   2.042264
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           0.8114044   0.4394727   1.498107
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.7546875   0.3946455   1.443202
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.9200000   0.5907199   1.432828
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0641892   0.6714992   1.686523
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9637940   0.7550247   1.230289
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9622291   0.7285538   1.270853
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9419829   0.7288118   1.217505
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.3281853   0.8043984   2.193038
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8472906   0.4053311   1.771148
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9483648   0.7548329   1.191516
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1193283   0.9501048   1.318692
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0022636   0.7124244   1.410020
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.1259722   0.8942549   1.417731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7158101   0.4578915   1.119008
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9211663   0.6946956   1.221466
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.2185873   0.7193660   2.064255
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2081974   0.7909610   1.845528
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.4267714   0.9241267   2.202811
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9935774   0.5801190   1.701713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2533173   0.7891196   1.990578
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0044281   0.7567429   1.333182
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0375743   0.8182212   1.315733
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.3411211   1.1532430   1.559607
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.0809883   0.5532505   2.112128
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2438491   0.6981512   2.216082
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.5246826   1.0607137   2.191597
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.3040615   0.9611326   1.769346
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.2829638   0.9378327   1.755106
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.3082568   0.9166259   1.867213
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.3091426   1.0132834   1.691387
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9494856   0.7275627   1.239100
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1564240   1.0454026   1.279236
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1325809   1.0251289   1.251296
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0348769   0.8675882   1.234422
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9761614   0.8610242   1.106695
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0753017   0.8344200   1.385722
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2438395   1.0677071   1.449027
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1127909   0.9639718   1.284585
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2362313   1.1172907   1.367834
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.7130775   0.4309108   1.180011
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.1660171   0.8442158   1.610484
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.3018471   1.2332213   1.374292
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1273811   1.0261729   1.238571
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
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9670526   0.7930933   1.179169
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0424399   0.9043264   1.201647
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.8044581   0.9919110   3.282622
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9308485   0.5918473   1.464024
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9437765   0.6644486   1.340531
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0466503   0.8207288   1.334761
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3712375   0.5146161   3.653776
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4017094   0.5592228   3.513428
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           2.8846154   1.7199071   4.838055
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5169683   0.7329594   3.139591
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.5923821   1.1185387   2.266959
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8742228   0.5654092   1.351703
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1761347   1.0191332   1.357323
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0949310   0.9465774   1.266536
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.8518832   0.4484357   1.618303
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.5911263   1.0945555   2.312978
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1179593   0.7229660   1.728758
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9437962   0.7028417   1.267357
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.3939210   0.9241350   2.102524
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.6019171   1.1899259   2.156553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.4335786   1.3462356   1.526588
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2282512   1.1001382   1.371283


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0265602   -0.0089121   0.0620326
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0048528   -0.0405997   0.0503053
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0159631   -0.0615271   0.0296008
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0056707   -0.0622418   0.0509005
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0065032   -0.0317243   0.0187180
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0045944   -0.0142326   0.0234215
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0020501   -0.0106347   0.0147348
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0117810   -0.0195014   0.0430635
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0154307   -0.0395752   0.0087138
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0001624   -0.0163830   0.0167078
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0099866   -0.0078459   0.0278190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0004772   -0.0090993   0.0081448
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0260948    0.0107080   0.0414815
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0114692   -0.0247400   0.0476784
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0143282    0.0016542   0.0270022
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0229205   -0.0015787   0.0474197
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0010819   -0.0014732   0.0036370
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0082958    0.0039111   0.0126806
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0011220   -0.0285315   0.0262875
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0085496    0.0019503   0.0151489
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0264491    0.0127501   0.0401481
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0043013   -0.0228224   0.0314249
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0237556    0.0187063   0.0288049
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0143014   -0.0227196   0.0513225
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0070222   -0.0382348   0.0241904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0041319   -0.0187459   0.0270097
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0001597   -0.0042033   0.0045228
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0129259   -0.0090278   0.0348795
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0040515   -0.0122133   0.0203163
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0113980   -0.0020788   0.0248748
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0017135   -0.0042234   0.0076504
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0018954   -0.0119221   0.0157128
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0116408   -0.0164860   0.0397676
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0277943    0.0104552   0.0451335
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0005048   -0.0007250   0.0017347
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0044976    0.0010986   0.0078966
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0177736   -0.0004605   0.0360078
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0005109   -0.0046092   0.0035875
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0117728    0.0044980   0.0190475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0263442    0.0216939   0.0309944


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1213528   -0.0551853   0.2683551
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0229749   -0.2178138   0.2161544
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0686633   -0.2835665   0.1102594
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0108446   -0.1250434   0.0917622
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0102349   -0.0507397   0.0287084
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0184679   -0.0601792   0.0912807
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0061988   -0.0332742   0.0441638
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0244999   -0.0427993   0.0874558
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0493626   -0.1294479   0.0250441
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0011966   -0.1284580   0.1159545
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0764628   -0.0702124   0.2030359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0048049   -0.0954570   0.0783456
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1213088    0.0469425   0.1898723
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0608086   -0.1518042   0.2341750
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.1388263    0.0086370   0.2519186
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0946657   -0.0120686   0.1901436
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0274487   -0.0377325   0.0885358
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0493739    0.0229421   0.0750906
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0024183   -0.0632677   0.0549488
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0623957    0.0131097   0.1092204
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0742711    0.0349545   0.1119860
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0213471   -0.1230034   0.1471429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1288426    0.1012134   0.1556224
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.1140351   -0.2342485   0.3640391
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0760334   -0.4719807   0.2134082
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0167093   -0.0802810   0.1049916
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0010672   -0.0285016   0.0297861
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1075433   -0.0931481   0.2713896
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0430557   -0.1460825   0.2009803
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.1838229   -0.0582042   0.3704948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0395265   -0.1075495   0.1670716
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0163044   -0.1100394   0.1282678
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1280488   -0.2387775   0.3862506
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.3233408    0.1066395   0.4874771
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0355333   -0.0544624   0.1178480
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0492526    0.0113536   0.0856988
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1762821   -0.0231770   0.3368585
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0105776   -0.0990853   0.0708027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.1884880    0.0662250   0.2947426
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.1788109    0.1469565   0.2094759
