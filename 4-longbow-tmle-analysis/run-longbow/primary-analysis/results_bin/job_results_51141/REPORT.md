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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        mage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0       78     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1      104     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       29     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       28     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      103     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1       36     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       34     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        9     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       42     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        9     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0       75     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1      119     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1       19     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1       10     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      127     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1       62     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       18     240
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0       61     303
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1       92     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       29     303
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       54     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       25     303
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       42     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0       76     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       85     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       21     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       27     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       46     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       59     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       21     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1      119     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       89     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1      274     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       40     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)               0      124     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)               1      220     410
0-24 months   ki1000108-IRC              INDIA                          <20                   0        8     410
0-24 months   ki1000108-IRC              INDIA                          <20                   1       29     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       15     410
0-24 months   ki1000108-IRC              INDIA                          >=30                  1       14     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0       11     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1      151     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       22     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1      192     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      368    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      799    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       61    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1      132    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       44    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1      129    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       48     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1      242     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       28     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       16     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       76     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      140     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1      282     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       26     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1       47     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       45     627
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       87     627
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      285     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1      208     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       46     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       57     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      263     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1      231     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       72     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       64     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       61     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       67     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1012    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      559    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      109    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       58    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      433    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      205    2376
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0      732    2859
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      705    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      206    2859
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1      189    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      439    2859
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      588    2859
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0       80     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1       95     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       18     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1       29     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       27     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       32     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1      607    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      124     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      264     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       81     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       30     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       61     602
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    10120   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1     2009   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1386   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      359   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2561   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      462   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     5775   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     3659   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1275   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      967   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1417   14033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      940   14033
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      151    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1      510    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       52    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1      150    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      118    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      379    1360
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     2274    5313
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1     1328    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                   0      248    5313
0-24 months   ki1135781-COHORTS          INDIA                          <20                   1      179    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      731    5313
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      553    5313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0      607    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1     1220    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      103    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1      275    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      249    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      604    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      135     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1      229     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0       42     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1       66     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       66     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      132     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     6890   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     5819   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     5658   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     6528   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1234   27225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1     1096   27225
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      123     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       59     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       26     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       20     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      107     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               1       32     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       37     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        6     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       44     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        7     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      127     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       67     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       20     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1       14     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       18     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        3     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               0      158     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               1       31     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   0        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       38     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        8     240
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               0       88     303
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               1       65     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   0       47     303
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   1       36     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       39     303
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1       28     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      105     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       56     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       20     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       68     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       37     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       75     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1       65     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       12     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        4     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       67     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       39     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      139     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1      153     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       18     368
0-6 months    ki1000108-IRC              INDIA                          [20-30)               0      200     410
0-6 months    ki1000108-IRC              INDIA                          [20-30)               1      144     410
0-6 months    ki1000108-IRC              INDIA                          <20                   0       17     410
0-6 months    ki1000108-IRC              INDIA                          <20                   1       20     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       19     410
0-6 months    ki1000108-IRC              INDIA                          >=30                  1       10     410
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0       39     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1      123     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0       59     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1      155     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      674    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      490    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   0      109    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   1       84    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       96    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       77    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      171     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1      118     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       63     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       28     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      264     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1      158     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   0       56     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   1       17     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       89     627
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       43     627
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      380     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1      113     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   0       61     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       92     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       30     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      347     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1      147     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       90     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       46     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       92     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       36     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1250    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      321    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      134    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       33    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      530    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      108    2376
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               0      814    2443
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               1      358    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      252    2443
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1      107    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      613    2443
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1      299    2443
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      118     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1       46     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       25     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1       21     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       37     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       17     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      292     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       96     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0       76     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       47     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       67     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       24     602
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0    10954   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1     1174   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1511   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1      233   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2747   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      274   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     7029   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     2392   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1613   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      624   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1753   14011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      600   14011
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               0      372    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               1      159    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   0      100    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   1       49    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      264    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1      147    1091
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               0     2841    5135
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               1      642    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                   0      308    5135
0-6 months    ki1135781-COHORTS          INDIA                          <20                   1       95    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1009    5135
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1      240    5135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1440    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      387    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   0      265    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   1      113    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      622    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1      231    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               0       71     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               1       45     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   0       29     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   1       10     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       42     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1       23     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     7983   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     4703   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     6610   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     5536   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1410   27159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      917   27159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0       68     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       45     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       14     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       17     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        8     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0       93     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       28     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        3     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       38     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        2     168
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0       65     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       52     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       15     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        5     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        7     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      124     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1       31     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       10     195
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0       46     149
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1       27     149
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       24     149
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       18     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       20     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       14     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0       47     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       29     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       15     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        7     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       39     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       22     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       15     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1       54     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        9     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       16     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0       22     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1      121     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1       14     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       22     185
6-24 months   ki1000108-IRC              INDIA                          [20-30)               0      124     236
6-24 months   ki1000108-IRC              INDIA                          [20-30)               1       76     236
6-24 months   ki1000108-IRC              INDIA                          <20                   0        8     236
6-24 months   ki1000108-IRC              INDIA                          <20                   1        9     236
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       15     236
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        4     236
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0       11      96
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       28      96
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0      96
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0      96
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       20      96
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       37      96
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      313     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      309     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0       55     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       48     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       52     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0       40     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1      124     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       11     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       48     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0       95     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1      124     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       16     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1       30     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0       36     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       44     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      236     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       95     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       29     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       15     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       55     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       27     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      246     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       84     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0       70     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       18     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0       57     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       31     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0      783    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      238    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0       90    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       25    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      358    1591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       97    1591
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0      657    1972
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      347    1972
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      185    1972
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       82    1972
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      412    1972
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      289    1972
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0       72     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1       49     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       15     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        8     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       25     184
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1       15     184
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1      607    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      120     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      168     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       38     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       34     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       29     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       37     426
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0     9911   14951
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      835   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1360   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      126   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2531   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      188   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     4058    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     1267    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0      863    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      343    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1066    7937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      340    7937
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0       94     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1      351     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0       30     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1      101     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0       87     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1      232     895
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     2088    4062
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      686    4062
6-24 months   ki1135781-COHORTS          INDIA                          <20                   0      209    4062
6-24 months   ki1135781-COHORTS          INDIA                          <20                   1       84    4062
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0      682    4062
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      313    4062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0      480    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      833    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0       75    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1      162    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      198    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      373    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      128     581
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1      184     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0       40     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1       56     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0       64     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1      109     581
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     4002   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     1116   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     3642   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      992   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0      590   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      179   10521


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/d14071a9-1b26-4256-8a69-388861ad7c07/a82c161f-4429-4238-9d52-e01e95f2093f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d14071a9-1b26-4256-8a69-388861ad7c07/a82c161f-4429-4238-9d52-e01e95f2093f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d14071a9-1b26-4256-8a69-388861ad7c07/a82c161f-4429-4238-9d52-e01e95f2093f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d14071a9-1b26-4256-8a69-388861ad7c07/a82c161f-4429-4238-9d52-e01e95f2093f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.5714286   0.4993965   0.6434607
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.7837838   0.6508882   0.9166793
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.6086957   0.4673939   0.7499974
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2589928   0.1860085   0.3319772
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.2093023   0.0874482   0.3311564
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1764706   0.0716196   0.2813216
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.6065933   0.5383758   0.6748109
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5870828   0.4126768   0.7614889
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4415821   0.2077896   0.6753747
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.6017380   0.5241304   0.6793455
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.6750840   0.5715605   0.7786074
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.6390453   0.5258870   0.7522036
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.5211351   0.4417748   0.6004954
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.5860401   0.4262460   0.7458342
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.5396741   0.4422618   0.6370863
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6395349   0.5887350   0.6903348
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.7837838   0.6509771   0.9165904
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4827586   0.3006666   0.6648507
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.6845978   0.6362412   0.7329544
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.6977515   0.6472124   0.7482906
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.7454070   0.6891587   0.8016552
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.8344828   0.7916575   0.8773080
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.7777778   0.6418092   0.9137463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8260870   0.7485421   0.9036319
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.6709941   0.6264326   0.7155556
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6374727   0.5304775   0.7444680
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6708399   0.5902880   0.7513919
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.4266856   0.3833651   0.4700062
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4336732   0.3280260   0.5393204
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4637218   0.3771880   0.5502555
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.4701112   0.4266445   0.5135779
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4712582   0.3855795   0.5569369
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.5074959   0.4224162   0.5925756
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.3537773   0.3301711   0.3773836
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3332513   0.2600570   0.4064455
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3316661   0.2958095   0.3675228
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.4991749   0.4734571   0.5248927
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.4923077   0.4409826   0.5436329
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5443754   0.5141663   0.5745845
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.5334300   0.4592941   0.6075658
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.6125225   0.4709439   0.7541010
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.5254695   0.3978268   0.6531121
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3483314   0.2691448   0.4275180
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.4058531   0.3500483   0.4616579
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3517291   0.3088321   0.3946261
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.6804103   0.6338873   0.7269332
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6606520   0.5760735   0.7452305
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6705293   0.5731994   0.7678591
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.1661085   0.1474102   0.1848068
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.2013605   0.1714063   0.2313147
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1520556   0.1300550   0.1740562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.3889830   0.3791633   0.3988027
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.4420625   0.4216475   0.4624775
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3880515   0.3684936   0.4076093
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7678938   0.7347820   0.8010057
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7766028   0.7169275   0.8362781
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7493225   0.7098441   0.7888008
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3700440   0.3542433   0.3858446
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.4238702   0.3763154   0.4714251
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.4249256   0.3974888   0.4523625
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6704808   0.6489990   0.6919626
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7175086   0.6731353   0.7618819
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7086842   0.6787663   0.7386021
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.6299745   0.5807277   0.6792212
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.6202766   0.5268143   0.7137389
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6682188   0.6032155   0.7332221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4628114   0.4525053   0.4731176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5275011   0.5173857   0.5376165
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4839885   0.4629662   0.5050108
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.3245982   0.2566123   0.3925840
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.4119222   0.2480622   0.5757822
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4233173   0.2818593   0.5647753
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2302158   0.1600821   0.3003495
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1395349   0.0357448   0.2433250
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1372549   0.0426089   0.2319009
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.4272790   0.3484852   0.5060728
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.4468805   0.3394642   0.5542968
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4296918   0.3116510   0.5477327
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.3469583   0.2714794   0.4224373
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.4245260   0.2643673   0.5846846
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3620356   0.2661544   0.4579169
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5239726   0.4666115   0.5813337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.5000000   0.3317057   0.6682943
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4285714   0.2787041   0.5784387
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.4186047   0.3664087   0.4708006
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5405405   0.3797668   0.7013143
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3448276   0.1716235   0.5180317
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4205801   0.3867755   0.4543847
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4389862   0.3771869   0.5007856
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4494592   0.3641782   0.5347401
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4055449   0.3493110   0.4617788
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4382599   0.2676434   0.6088765
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3090529   0.2164136   0.4016922
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3733176   0.3274388   0.4191963
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2003436   0.1073582   0.2933290
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3225499   0.2451112   0.3999887
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2321075   0.1951109   0.2691041
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2922738   0.1961913   0.3883563
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2528606   0.1768980   0.3288231
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2993741   0.2592300   0.3395183
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.3393673   0.2588070   0.4199275
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2894572   0.2104234   0.3684911
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2035799   0.1836848   0.2234750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1888925   0.1288078   0.2489772
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1717217   0.1425876   0.2008558
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3065043   0.2796333   0.3333753
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.2930926   0.2419163   0.3442689
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3174695   0.2868268   0.3481122
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2852574   0.2162118   0.3543031
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4419540   0.2897222   0.5941857
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3044019   0.1809620   0.4278418
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2475579   0.2045386   0.2905773
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3836528   0.2973471   0.4699585
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2678386   0.1764051   0.3592721
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0969757   0.0846090   0.1093423
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.1300771   0.1069863   0.1531678
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0902184   0.0731453   0.1072914
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2544298   0.2456302   0.2632294
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2858427   0.2669794   0.3047061
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2483057   0.2308510   0.2657604
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.3055160   0.2653554   0.3456766
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3212717   0.2398958   0.4026476
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3513375   0.3047886   0.3978865
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1849967   0.1720514   0.1979420
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2358666   0.1937462   0.2779871
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1890893   0.1673005   0.2108782
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.2142926   0.1955055   0.2330798
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2684363   0.2254537   0.3114188
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2729657   0.2435902   0.3023412
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.3895446   0.3005081   0.4785811
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2511286   0.1073922   0.3948650
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3423839   0.2277858   0.4569821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.3748630   0.3650025   0.3847235
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4486856   0.4386285   0.4587427
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4063926   0.3859025   0.4268827
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.3982301   0.3076858   0.4887744
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6666667   0.4644103   0.8689230
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3200000   0.1365670   0.5034330
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.4444444   0.3541142   0.5347747
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.2500000   0.0596122   0.4403878
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.3888889   0.1629504   0.6148274
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.3656436   0.2530911   0.4781961
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4321792   0.2782365   0.5861220
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4157690   0.2461197   0.5854183
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.3815789   0.2720206   0.4911373
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3181818   0.1229373   0.5134263
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3606557   0.2397722   0.4815392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4948719   0.4437471   0.5459967
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4859557   0.4347973   0.5371141
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.5878674   0.5015024   0.6742324
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.7560976   0.6902380   0.8219571
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.6000000   0.3848536   0.8151464
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8135593   0.7139769   0.9131417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5645305   0.4994271   0.6296340
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6007781   0.4660209   0.7355354
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5451527   0.4361421   0.6541633
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2896323   0.2408838   0.3383808
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3104217   0.1762789   0.4445645
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3335186   0.2334736   0.4335636
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2569770   0.2103564   0.3035977
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1876985   0.1011881   0.2742089
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3320191   0.2326717   0.4313665
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2309606   0.2051133   0.2568079
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2041182   0.1289854   0.2792510
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2224596   0.1841746   0.2607446
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3502184   0.3207147   0.3797221
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3288786   0.2721499   0.3856074
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3991698   0.3625425   0.4357972
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.4049587   0.3172550   0.4926623
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.3478261   0.1526483   0.5430038
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3750000   0.2245622   0.5254378
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3480415   0.2692678   0.4268153
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.4074449   0.3516336   0.4632563
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3521130   0.3089236   0.3953023
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5833848   0.5261774   0.6405922
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4670612   0.3486336   0.5854887
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5584801   0.4360163   0.6809439
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0780616   0.0624484   0.0936748
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0830650   0.0626903   0.1034397
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0691182   0.0562718   0.0819646
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2383136   0.2268698   0.2497573
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2830582   0.2575974   0.3085189
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2430260   0.2206205   0.2654315
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7868754   0.7490886   0.8246623
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7772023   0.7012292   0.8531755
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7248117   0.6752833   0.7743400
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2481780   0.2320965   0.2642596
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2875162   0.2352662   0.3397661
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3106446   0.2815677   0.3397214
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6341253   0.6081426   0.6601080
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6844978   0.6265596   0.7424359
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6551594   0.6166822   0.6936367
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.5866641   0.5327829   0.6405452
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.5720954   0.4730118   0.6711790
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6196017   0.5475916   0.6916118
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2208138   0.2077816   0.2338460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2101059   0.1972044   0.2230074
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2435352   0.2127140   0.2743565


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5943775   0.5332672   0.6554878
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6634769   0.6264616   0.7004922
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459596   0.3268289   0.3650903
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5183631   0.5000444   0.5366817
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5551601   0.4969525   0.6133678
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3966365   0.3885423   0.4047307
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3877282   0.3746257   0.4008307
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6373134   0.6008819   0.6737450
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4937741   0.4859396   0.5016087
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3547170   0.2970055   0.4124285
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3476874   0.3103810   0.3849938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1944444   0.1785274   0.2103615
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3127302   0.2943427   0.3311178
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3181818   0.2618904   0.3744732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2580829   0.2508371   0.2653287
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902629   0.1795262   0.2009996
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3545455   0.2911884   0.4179025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4107662   0.4033277   0.4182048
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2262728   0.2057063   0.2468392
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3640974   0.3428547   0.3853400
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3913043   0.3205945   0.4620142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2456848   0.2362134   0.2551561
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2666174   0.2530174   0.2802175
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6006885   0.5608305   0.6405464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173748   0.2080019   0.2267477


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.3716216   1.1103919   1.6943080
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.0652174   0.8179310   1.3872662
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           0.8081395   0.4232352   1.5430888
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           0.6813725   0.3530159   1.3151492
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           0.9678359   0.7062719   1.3262688
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.7279706   0.4239341   1.2500556
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.1218903   0.9192692   1.3691722
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.0619993   0.8529241   1.3223246
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.1245454   0.8231924   1.5362172
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           1.0355742   0.8195738   1.3085019
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.2255528   1.0163873   1.4777631
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7548589   0.5134061   1.1098662
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0192139   0.9245617   1.1235560
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0888247   1.0043638   1.1803882
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.9320478   0.7768057   1.1183144
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           0.9899389   0.8895009   1.1017178
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9500422   0.7941436   1.1365453
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9997702   0.8726360   1.1454267
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0163765   0.7816233   1.3216356
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.0867996   0.8813550   1.3401335
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.0024398   0.8176483   1.2289947
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.0795230   0.8934099   1.3044067
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9419802   0.7488702   1.1848872
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9374996   0.8262961   1.0636689
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9862430   0.8784109   1.1073122
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0905504   1.0121647   1.1750066
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.1482716   0.8770885   1.5033007
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9850768   0.7449968   1.3025242
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1651351   0.9074328   1.4960223
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0097542   0.8017762   1.2716811
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.9709613   0.8397402   1.1226875
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9854779   0.8393904   1.1569904
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.2122227   1.0952069   1.3417409
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9153993   0.8137531   1.0297422
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1364571   1.0784694   1.1975627
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9976051   0.9431661   1.0551863
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0113414   0.9263796   1.1040953
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9758152   0.9122073   1.0438584
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1454590   1.0158762   1.2915711
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1483112   1.0628492   1.2406450
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0701404   0.9984657   1.1469603
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0569792   1.0029913   1.1138730
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.9846059   0.8313072   1.1661740
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0607078   0.9375505   1.2000430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1397754   1.1106790   1.1696341
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0457574   0.9989303   1.0947796
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.2690221   0.8130583   1.9806908
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.3041272   0.8833203   1.9254033
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           0.6061047   0.2713084   1.3540417
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           0.5962010   0.2805403   1.2670392
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.0458752   0.7730455   1.4149941
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.0056470   0.7226649   1.3994396
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.2235646   0.7908920   1.8929392
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           1.0434556   0.7426773   1.4660468
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9542484   0.6698005   1.3594943
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8179272   0.5669933   1.1799166
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           1.2912913   0.9353186   1.7827435
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8237548   0.4909467   1.3821702
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0437637   0.8851138   1.2308503
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0686649   0.8597989   1.3282694
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0806694   0.7157949   1.6315376
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           0.7620684   0.5500045   1.0558973
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5366573   0.3326663   0.8657356
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8640095   0.6614201   1.1286509
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.2592174   0.8746380   1.8128969
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.0894114   0.7766942   1.5280367
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1335892   0.8635792   1.4880216
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9668745   0.7143711   1.3086286
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9278544   0.6655854   1.2934686
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8435100   0.6937011   1.0256712
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9562431   0.7868023   1.1621736
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0357750   0.9097685   1.1792338
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5493162   1.0166602   2.3610453
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.0671130   0.6673621   1.7063154
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.5497496   1.1662760   2.0593101
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0819229   0.7376023   1.5869761
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.3413372   1.1786215   1.5265167
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9303196   0.8054108   1.0746002
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1234639   1.0429612   1.2101804
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9759300   0.9025418   1.0552856
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0515707   0.7915000   1.3970955
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1499808   0.9563991   1.3827448
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2749772   1.0523765   1.5446629
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0221226   0.8933379   1.1694731
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2526621   1.0452260   1.5012660
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2737988   1.1103639   1.4612898
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.6446723   0.3478957   1.1946176
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           0.8789338   0.5892155   1.3111070
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1969322   1.1597182   1.2353404
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0841098   1.0271607   1.1442163
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.6740741   1.1458337   2.4458384
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.8035556   0.4337086   1.4887913
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           0.5625000   0.2557462   1.2371886
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.8750000   0.4728202   1.6192729
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.1819684   0.7376158   1.8940067
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.1370881   0.6815719   1.8970403
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.8338558   0.4235133   1.6417798
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.9451668   0.6079069   1.4695345
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9819829   0.8359606   1.1535117
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1879184   1.0391633   1.3579677
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.7935484   0.5486766   1.1477053
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.0759978   0.9259047   1.2504217
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0642084   0.8290006   1.3661505
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9656744   0.7678252   1.2145044
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0717786   0.6765944   1.6977815
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1515243   0.8190745   1.6189105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.7304096   0.4452015   1.1983295
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2920184   0.9144339   1.8255135
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8837793   0.6015365   1.2984513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9631930   0.7848649   1.1820388
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9390672   0.7760051   1.1363937
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.1397740   1.0074280   1.2895063
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           0.8589175   0.4706868   1.5673676
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9260204   0.5869864   1.4608750
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1706791   0.9154225   1.4971116
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0116981   0.8044163   1.2723923
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8006056   0.6100007   1.0507682
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9573100   0.7528310   1.2173282
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0640964   0.8714696   1.2993008
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8854319   0.7321784   1.0707633
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1877551   1.0727049   1.3151448
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0197740   0.9192137   1.1313354
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9877069   0.8860638   1.1010099
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9211263   0.8478288   1.0007607
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1585076   0.9552503   1.4050138
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2517004   1.1169973   1.4026479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0794361   0.9827929   1.1855828
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0331703   0.9623263   1.1092298
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.9751670   0.8024966   1.1849903
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0561439   0.9122601   1.2227214
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9515072   0.8776437   1.0315872
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1028988   0.9621757   1.2642033


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0361186   -0.0030101    0.0752473
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0272331   -0.0710434    0.0165771
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0122158   -0.0450358    0.0206042
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0187241   -0.0351744    0.0726225
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0234509   -0.0333846    0.0802863
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0019285   -0.0183280    0.0221851
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0068569   -0.0061489    0.0198627
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0067316   -0.0312810    0.0178179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0075172   -0.0327027    0.0176682
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0076001   -0.0154347    0.0306349
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0074613   -0.0180962    0.0330188
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0078177   -0.0212428    0.0056073
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0191882    0.0012784    0.0370979
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0217302   -0.0241596    0.0676200
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0076648   -0.0282457    0.0435754
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0059916   -0.0339896    0.0220063
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0013769   -0.0033781    0.0061319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0076535    0.0020434    0.0132635
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0039233   -0.0282189    0.0203724
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0176842    0.0085130    0.0268554
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0159156    0.0028347    0.0289965
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0073390   -0.0253479    0.0400258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0309627    0.0244616    0.0374638
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0301188   -0.0082957    0.0685334
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0370828   -0.0774599    0.0032943
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0015364   -0.0570870    0.0540141
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0129143   -0.0415671    0.0673956
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0131030   -0.0392621    0.0130560
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0057856   -0.0153591    0.0269303
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0049101   -0.0119866    0.0218068
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0161218   -0.0458065    0.0135629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0256302   -0.0505385   -0.0007218
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0064639   -0.0141526    0.0270805
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0027367   -0.0211538    0.0266272
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0091355   -0.0202559    0.0019849
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0062259   -0.0132921    0.0257440
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0329244   -0.0117258    0.0775746
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0298507    0.0024847    0.0572166
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0025330   -0.0010522    0.0061183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0036531   -0.0014218    0.0087280
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0198736   -0.0096101    0.0493573
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0052662   -0.0022875    0.0128198
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0247525    0.0123338    0.0371712
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0349991   -0.0942560    0.0242577
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0359033    0.0293349    0.0424716
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0231536   -0.0265795    0.0728866
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0315412   -0.0749943    0.0119119
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0303295   -0.0514936    0.1121527
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0167991   -0.0952984    0.0617002
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0082032   -0.0086659    0.0250722
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0011041   -0.0363276    0.0385358
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0093825   -0.0291189    0.0478840
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0101489   -0.0150822    0.0353800
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0058688   -0.0219450    0.0336827
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0046878   -0.0198125    0.0104369
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0138790   -0.0069252    0.0346831
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0136543   -0.0644013    0.0370926
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0079547   -0.0275793    0.0434886
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0223520   -0.0553540    0.0106500
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0012105   -0.0044938    0.0020727
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0073712    0.0006780    0.0140644
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0226296   -0.0504795    0.0052202
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0184394    0.0088854    0.0279934
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0108535   -0.0048055    0.0265124
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0140244   -0.0221065    0.0501553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0034390   -0.0120778    0.0051998


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0594499   -0.0077369    0.1221573
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.1175060   -0.3226939    0.0558513
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0205523   -0.0774212    0.0333149
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0301776   -0.0608048    0.1133568
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0430618   -0.0673266    0.1420333
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0030065   -0.0290797    0.0340921
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0099166   -0.0093807    0.0288451
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0081324   -0.0382500    0.0211116
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0113301   -0.0500233    0.0259373
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0175002   -0.0370164    0.0691508
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0156234   -0.0393665    0.0677040
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0225972   -0.0621411    0.0154744
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0370168    0.0018028    0.0709886
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0391422   -0.0472907    0.1184418
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0215307   -0.0870734    0.1192847
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0088842   -0.0512731    0.0317956
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0082208   -0.0204786    0.0361131
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0192960    0.0050463    0.0333415
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0051354   -0.0374465    0.0261695
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0456099    0.0216494    0.0689835
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0231871    0.0039083    0.0420929
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0115155   -0.0411399    0.0615079
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0627061    0.0493836    0.0758419
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0849094   -0.0304008    0.1873156
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.1920064   -0.4173870   -0.0024639
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0036088   -0.1429495    0.1187444
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0358857   -0.1280418    0.1759911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0256485   -0.0782305    0.0243692
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0136327   -0.0374821    0.0622292
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0115399   -0.0290589    0.0505370
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0413992   -0.1205068    0.0321234
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0737161   -0.1478453   -0.0043743
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0270944   -0.0631934    0.1097148
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0090586   -0.0732477    0.0850529
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0469825   -0.1056849    0.0086033
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0199084   -0.0445504    0.0803894
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1034766   -0.0481450    0.2331652
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1076055    0.0036278    0.2007325
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0254552   -0.0102833    0.0599295
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0141548   -0.0057061    0.0336235
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0610762   -0.0341108    0.1475016
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0276784   -0.0128287    0.0665654
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.1035473    0.0501755    0.1539201
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0987155   -0.2792166    0.0563163
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0874056    0.0712151    0.1033138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0549465   -0.0709449    0.1660392
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0763889   -0.1874994    0.0243253
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0765949   -0.1553447    0.2619718
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0460526   -0.2850353    0.1484856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0163060   -0.0182043    0.0496467
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0014581   -0.0492208    0.0496892
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0163483   -0.0531057    0.0812218
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0338544   -0.0541620    0.1145219
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0223279   -0.0893591    0.1225642
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0207176   -0.0897731    0.0439621
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0381188   -0.0207611    0.0936024
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0348944   -0.1731146    0.0870403
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0223449   -0.0851678    0.1192057
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0398408   -0.1005091    0.0174831
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0157515   -0.0582348    0.0250264
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0300027    0.0023816    0.0568591
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0296104   -0.0668082    0.0062904
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0691605    0.0326959    0.1042504
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0168277   -0.0077716    0.0408265
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0233472   -0.0387191    0.0817049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0158206   -0.0563236    0.0231294
