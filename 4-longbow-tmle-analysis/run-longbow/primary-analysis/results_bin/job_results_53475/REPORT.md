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

agecat        studyid                    country                        mage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0       77     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1      105     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       29     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       28     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0       99     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1       40     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       32     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       39     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1       12     233
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0       75     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1      119     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       13     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1       21     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1       10     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      126     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1       63     240
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0       73     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       88     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       20     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       28     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       45     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       60     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       21     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1      119     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1       14     262
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
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0       20     377
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1      142     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       21     377
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1      193     377
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      284     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1      209     700
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1      608    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      166     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      281     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       47     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1      102     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       39     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       63     698
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    10120   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1     2009   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1386   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      359   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2561   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      462   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     5588   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     3846   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1231   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1     1012   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1360   14034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      997   14034
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     6864   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     5837   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     5643   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     6542   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1229   27216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1     1101   27216
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      122     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       60     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       26     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1       20     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      104     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               1       35     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       41     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1       10     233
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      126     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       68     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       20     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1       14     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       18     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        3     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               0      157     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               1       32     240
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      103     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       58     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1       20     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       67     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       38     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       75     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1       65     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       11     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        5     262
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
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0       43     377
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1      119     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        0     377
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        1     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0       52     377
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1      162     377
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      379     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1      114     700
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      323     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      124     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0       81     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       68     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       72     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       30     698
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0    10954   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1     1174   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1511   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1      233   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2747   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      274   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     7025   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     2399   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1612   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      627   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1753   14017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      601   14017
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     7952   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     4726   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     6583   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1     5562   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1403   27150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      924   27150
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0       67     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       45     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0        7     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1       14     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       17     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        8     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0       90     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        5     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       26     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        4     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       36     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        2     163
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0       65     154
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       51     154
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       13     154
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        7     154
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       11     154
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        7     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      123     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1       31     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        2     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       28     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1       10     194
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0       46     149
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1       27     149
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       24     149
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1       18     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       20     149
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1       14     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0       46     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1       30     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       14     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        8     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       38     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1       22     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0       15     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1       54     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0        0     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        9     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0       16     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     144
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
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0       19      93
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       23      93
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        0      93
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0      93
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0       20      93
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       31      93
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      235     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       95     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       29     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1       15     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0       55     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       27     456
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1      608    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      112     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      157     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       33     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       34     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       28     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       33     397
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0     9911   14951
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      835   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1360   14951
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      126   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2531   14951
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      188   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     4259    8476
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1     1447    8476
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0      900    8476
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      385    8476
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1089    8476
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      396    8476
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     3995   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1     1111   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     3635   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      980   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0      590   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      177   10488


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
![](/tmp/70e880c9-d81a-43b4-b487-04db6fb0541f/eed89e7d-abfb-43d6-b1a0-b1b8876ef32e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/70e880c9-d81a-43b4-b487-04db6fb0541f/eed89e7d-abfb-43d6-b1a0-b1b8876ef32e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/70e880c9-d81a-43b4-b487-04db6fb0541f/eed89e7d-abfb-43d6-b1a0-b1b8876ef32e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/70e880c9-d81a-43b4-b487-04db6fb0541f/eed89e7d-abfb-43d6-b1a0-b1b8876ef32e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.5769231   0.5050110   0.6488352
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.7837838   0.6508882   0.9166793
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.6086957   0.4673939   0.7499974
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2895354   0.2112758   0.3677949
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.2749576   0.1412443   0.4086708
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.2261104   0.1053102   0.3469105
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.6077920   0.5395051   0.6760788
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.6370166   0.4683146   0.8057186
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4864515   0.2494134   0.7234895
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.6017960   0.5240107   0.6795813
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.6662858   0.5640618   0.7685098
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.6167979   0.4977953   0.7358006
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.5339121   0.4582421   0.6095822
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.5363936   0.3878786   0.6849085
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.5841262   0.4888197   0.6794327
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6395349   0.5887350   0.6903348
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.7837838   0.6509771   0.9165904
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4827586   0.3006666   0.6648507
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.6844233   0.6352324   0.7336142
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.6970557   0.6428433   0.7512681
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.7348340   0.6808510   0.7888170
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.8344828   0.7916575   0.8773080
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.7777778   0.6418092   0.9137463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8260870   0.7485421   0.9036319
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.6720780   0.6276706   0.7164854
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6350528   0.5240355   0.7460701
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6697578   0.5899563   0.7495593
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.4299279   0.3866163   0.4732396
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4166644   0.3103549   0.5229739
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4743079   0.3901451   0.5584708
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.4735071   0.4296361   0.5173781
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4460953   0.3588458   0.5333448
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.5355611   0.4484370   0.6226852
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.3540561   0.3302740   0.3778381
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3070662   0.2348202   0.3793123
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3394335   0.3025453   0.3763217
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.4995444   0.4738929   0.5251959
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.4855484   0.4334897   0.5376072
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5443797   0.5140763   0.5746832
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.5409202   0.4669967   0.6148438
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.6266921   0.4834563   0.7699279
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.5403724   0.4103383   0.6704064
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3464670   0.2591553   0.4337787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.3935048   0.3371691   0.4498405
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3572674   0.3129270   0.4016077
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.6289124   0.5839563   0.6738684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6874764   0.6125202   0.7624326
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6149181   0.5197100   0.7101263
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.1660948   0.1472118   0.1849778
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.2033441   0.1717498   0.2349384
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1561386   0.1336894   0.1785878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.4061137   0.3962122   0.4160153
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.4452440   0.4242544   0.4662336
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4355910   0.4152823   0.4558996
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7687135   0.7361716   0.8012554
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7773126   0.7164733   0.8381519
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7512156   0.7120733   0.7903579
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3706774   0.3548520   0.3865028
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.4222001   0.3751582   0.4692419
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.4237517   0.3964386   0.4510648
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6708383   0.6493236   0.6923530
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7147107   0.6691131   0.7603084
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7078505   0.6777186   0.7379824
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.6277927   0.5788246   0.6767608
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.6035825   0.5112881   0.6958770
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6635868   0.5988597   0.7283140
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4651250   0.4548391   0.4754110
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5284665   0.5183271   0.5386059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4871534   0.4659138   0.5083931
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.3282777   0.2600379   0.3965176
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.4015561   0.2357786   0.5673337
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4300904   0.2891558   0.5710250
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2517986   0.1794865   0.3241106
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1627907   0.0522099   0.2733715
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1960784   0.0868794   0.3052774
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.4235719   0.3438857   0.5032582
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.4433305   0.3359784   0.5506827
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4224584   0.3016245   0.5432924
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.3509106   0.2769144   0.4249067
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3976728   0.2444244   0.5509213
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3908449   0.2948041   0.4868856
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.4642857   0.3815156   0.5470559
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3125000   0.0849484   0.5400516
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3679245   0.2759454   0.4599037
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5239726   0.4666115   0.5813337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.5000000   0.3317057   0.6682943
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4285714   0.2787041   0.5784387
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.4186047   0.3664087   0.4708006
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5405405   0.3797668   0.7013143
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3448276   0.1716235   0.5180317
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4215424   0.3866251   0.4564597
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4400678   0.3816446   0.4984910
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4377073   0.3563190   0.5190957
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.4069127   0.3506160   0.4632093
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.4061580   0.2376183   0.5746977
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2954209   0.2007592   0.3900825
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3736287   0.3276852   0.4195722
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1996822   0.1053875   0.2939769
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3191305   0.2408973   0.3973636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2357817   0.1986571   0.2729063
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2576272   0.1582392   0.3570152
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2506896   0.1753620   0.3260171
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.3012628   0.2608533   0.3416722
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.3154364   0.2333456   0.3975273
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2917990   0.2125462   0.3710519
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2020052   0.1819478   0.2220625
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1739767   0.1142286   0.2337248
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1737148   0.1437029   0.2037266
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3075000   0.2806103   0.3343896
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.2892118   0.2386854   0.3397381
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3174455   0.2871783   0.3477128
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2855343   0.2163482   0.3547204
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4371012   0.2875841   0.5866183
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2975541   0.1725342   0.4225741
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2804188   0.2388723   0.3219653
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4776751   0.3975235   0.5578268
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3141768   0.2280437   0.4003099
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0967626   0.0843161   0.1092090
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.1308248   0.1068872   0.1547623
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0921628   0.0754485   0.1088772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2535164   0.2447028   0.2623299
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2741648   0.2550920   0.2932377
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2636809   0.2454303   0.2819316
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.3031640   0.2629028   0.3434252
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3139194   0.2327483   0.3950904
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3580132   0.3107601   0.4052662
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1850628   0.1721162   0.1980093
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2364768   0.1944231   0.2785306
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1888061   0.1669080   0.2107043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.2143563   0.1955805   0.2331321
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2691350   0.2259567   0.3123132
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2728862   0.2435709   0.3022015
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.3934096   0.3038934   0.4829259
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2639993   0.1262008   0.4017977
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3618209   0.2439477   0.4796941
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.3776534   0.3677959   0.3875109
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4501041   0.4400729   0.4601354
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4099733   0.3895455   0.4304011
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.4017857   0.3107014   0.4928700
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6666667   0.4644062   0.8689271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3200000   0.1365633   0.5034367
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.4396552   0.3490365   0.5302738
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.3500000   0.1402807   0.5597193
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.3888889   0.1629457   0.6148321
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.3791968   0.2608398   0.4975538
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4189566   0.2688208   0.5690925
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4002254   0.2228786   0.5775722
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.3947368   0.2844951   0.5049786
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3636364   0.1619847   0.5652880
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3666667   0.2443451   0.4889882
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4958222   0.4446155   0.5470288
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4845106   0.4169077   0.5521134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.5969779   0.5108836   0.6830723
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.7560976   0.6902380   0.8219571
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.6000000   0.3848536   0.8151464
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.8135593   0.7139769   0.9131417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5638727   0.4986440   0.6291014
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6335447   0.4979441   0.7691453
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5341364   0.4250811   0.6431917
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2900191   0.2411317   0.3389066
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3083020   0.1720629   0.4445410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3321740   0.2325760   0.4317720
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2583032   0.2115642   0.3050423
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2007785   0.1145615   0.2869956
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3405981   0.2423408   0.4388555
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2310066   0.2048436   0.2571697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1967215   0.1223251   0.2711180
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2259367   0.1869039   0.2649695
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.3499570   0.3204862   0.3794278
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3372164   0.2796509   0.3947819
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3986374   0.3619476   0.4353273
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.4049587   0.3172550   0.4926623
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.3478261   0.1526483   0.5430038
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3750000   0.2245622   0.5254378
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3470188   0.2582965   0.4357411
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.3912985   0.3323669   0.4502301
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3571802   0.3131844   0.4011760
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5860796   0.5269682   0.6451911
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5209623   0.4012535   0.6406712
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5918301   0.4640360   0.7196241
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0780376   0.0623498   0.0937254
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0819876   0.0617652   0.1022099
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0719213   0.0586402   0.0852025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2521764   0.2408421   0.2635107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2870983   0.2616256   0.3125710
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2902332   0.2662478   0.3142187
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7884416   0.7507463   0.8261370
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7856510   0.7125505   0.8587516
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7228949   0.6735472   0.7722426
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2484618   0.2323897   0.2645340
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2873963   0.2356442   0.3391484
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3097646   0.2807902   0.3387390
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6342379   0.6082451   0.6602308
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6865848   0.6283769   0.7447926
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6556865   0.6170965   0.6942764
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.5908716   0.5369259   0.6448173
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.5798150   0.4796537   0.6799763
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6337848   0.5623852   0.7051844
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2203604   0.2072700   0.2334509
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2079682   0.1950506   0.2208857
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2410512   0.2101695   0.2719329


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6113208   0.5525209   0.6701206
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2703863   0.2132328   0.3275398
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6024096   0.5415000   0.6633193
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6634769   0.6264616   0.7004922
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459596   0.3268289   0.3650903
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5183631   0.5000444   0.5366817
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5551601   0.4969525   0.6133678
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3561989   0.3061990   0.4061987
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4172011   0.4090427   0.4253595
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3877282   0.3746257   0.4008307
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6373134   0.6008819   0.6737450
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4952969   0.4874720   0.5031218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3584906   0.3006428   0.4163383
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2231760   0.1695976   0.2767543
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4160305   0.3562327   0.4758284
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3476874   0.3103810   0.3849938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1944444   0.1785274   0.2103615
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3127302   0.2943427   0.3311178
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3181818   0.2618904   0.3744732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2587572   0.2515068   0.2660076
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902629   0.1795262   0.2009996
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3545455   0.2911884   0.4179025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4129650   0.4055288   0.4204012
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2262728   0.2057063   0.2468392
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3640974   0.3428547   0.3853400
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3913043   0.3205945   0.4620142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3561989   0.3061990   0.4061987
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2628598   0.2534882   0.2722315
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2666174   0.2530174   0.2802175
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6006885   0.5608305   0.6405464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2162471   0.2068695   0.2256248


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.3585586   1.1007380   1.6767671
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.0550725   0.8106836   1.3731349
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           0.9496510   0.5437165   1.6586530
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           0.7809422   0.4289131   1.4218980
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           1.0480833   0.7878401   1.3942913
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.8003585   0.4854517   1.3195415
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.1071622   0.9073880   1.3509196
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.0249286   0.8131724   1.2918278
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.0046477   0.7377730   1.3680588
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           1.0940493   0.8846029   1.3530861
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           1.2255528   1.0163873   1.4777631
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7548589   0.5134061   1.1098662
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0184570   0.9188774   1.1288282
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0736542   0.9867444   1.1682188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.9320478   0.7768057   1.1183144
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           0.9899389   0.8895009   1.1017178
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9449094   0.7850335   1.1373449
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9965477   0.8707627   1.1405029
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.9691494   0.7382090   1.2723371
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1032266   0.9031705   1.3475959
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.9421090   0.7588703   1.1695929
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.1310519   0.9399773   1.3609672
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8672814   0.6793020   1.1072791
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9586999   0.8445725   1.0882493
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9719825   0.8635056   1.0940866
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0897524   1.0114393   1.1741291
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.1585666   0.8880669   1.5114589
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9989871   0.7578896   1.3167819
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1357641   0.8498662   1.5178390
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0311728   0.7878233   1.3496902
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0931196   0.9595069   1.2453379
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9777486   0.8244217   1.1595913
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.2242654   1.0937038   1.3704129
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9400572   0.8390473   1.0532273
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0963529   1.0400594   1.1556933
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0725837   1.0180254   1.1300658
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0111864   0.9254919   1.1048156
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9772375   0.9144675   1.0443161
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1389958   1.0109222   1.2832952
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1431818   1.0582029   1.2349848
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0653994   0.9923126   1.1438694
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0551731   1.0009724   1.1123086
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.9614360   0.8104011   1.1406194
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0570158   0.9343897   1.1957351
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1361815   1.1074006   1.1657104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0473602   1.0001805   1.0967653
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.2232207   0.7735200   1.9343634
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.3101418   0.8936619   1.9207171
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           0.6465116   0.3092336   1.3516553
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           0.7787115   0.4161478   1.4571545
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.0466476   0.7706272   1.4215317
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           0.9973711   0.7084512   1.4041181
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           1.1332597   0.7306382   1.7577476
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           1.1138019   0.8077617   1.5357929
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.6730769   0.3180438   1.4244346
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7924528   0.5829399   1.0772662
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9542484   0.6698005   1.3594943
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8179272   0.5669933   1.1799166
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           1.2912913   0.9353186   1.7827435
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8237548   0.4909467   1.3821702
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0439467   0.8897063   1.2249264
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0383471   0.8348822   1.2913974
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.9981454   0.6451927   1.5441808
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           0.7260056   0.5143488   1.0247601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5344403   0.3288672   0.8685158
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8541380   0.6507494   1.1210948
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0926516   0.7207047   1.6565558
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.0632274   0.7589676   1.4894607
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.0470474   0.7815008   1.4028243
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9685864   0.7164739   1.3094121
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8612486   0.6028393   1.2304261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8599520   0.7050066   1.0489512
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9405262   0.7737719   1.1432175
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0323434   0.9077716   1.1740099
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5308185   1.0070558   2.3269866
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.0420960   0.6430858   1.6886767
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.7034347   1.3611053   2.1318628
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1203842   0.8203118   1.5302238
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.3520187   1.1802161   1.5488305
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9524637   0.8334209   1.0885101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0814483   1.0007964   1.1685998
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0400943   0.9628923   1.1234861
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0354770   0.7753545   1.3828675
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1809223   0.9812626   1.4212074
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2778196   1.0554872   1.5469850
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0202274   0.8911082   1.1680558
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2555495   1.0474384   1.5050094
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2730496   1.1098559   1.4602394
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.6710544   0.3794932   1.1866194
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           0.9197052   0.6178805   1.3689665
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1918445   1.1552534   1.2295946
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0855809   1.0289703   1.1453060
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.6592593   1.1361428   2.4232354
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.7964444   0.4299716   1.4752689
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           0.7960784   0.4224373   1.5002011
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           0.8845316   0.4775097   1.6384927
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           1.1048529   0.6848093   1.7825398
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           1.0554557   0.6131423   1.8168486
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           0.9212121   0.4951164   1.7140046
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           0.9288889   0.6011930   1.4352039
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9771862   0.8033264   1.1886737
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2040162   1.0568353   1.3716945
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           0.7935484   0.5486766   1.1477053
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           1.0759978   0.9259047   1.2504217
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.1235597   0.8830350   1.4295996
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9472641   0.7505417   1.1955489
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0630400   0.6647554   1.6999547
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1453519   0.8145411   1.6105154
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.7772978   0.4879787   1.2381522
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.3185981   0.9413153   1.8470972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8515839   0.5738851   1.2636591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9780528   0.7961858   1.2014624
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9635938   0.7977155   1.1639651
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.1391040   1.0066640   1.2889684
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           0.8589175   0.4706868   1.5673676
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9260204   0.5869864   1.4608750
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1276002   0.8373223   1.5185100
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0292820   0.7839755   1.3513452
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8888935   0.6914797   1.1426679
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0098117   0.7954847   1.2818847
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0506160   0.8474242   1.3025283
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9216240   0.7709814   1.1017007
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1384822   1.0308919   1.2573014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1509136   1.0478362   1.2641310
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9964606   0.8976456   1.1061535
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9168655   0.8439884   0.9960353
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.1567022   0.9553428   1.4005025
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2467292   1.1128462   1.3967192
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0825350   0.9854705   1.1891599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0338178   0.9628325   1.1100364
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           0.9812877   0.8078692   1.1919325
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           1.0726270   0.9293356   1.2380120
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9437636   0.8700115   1.0237677
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0938950   0.9521988   1.2566770


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0343977   -0.0046598    0.0734552
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0191491   -0.0680762    0.0297780
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0053823   -0.0380607    0.0272961
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0186661   -0.0353970    0.0727291
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0265974   -0.0253101    0.0785049
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0019285   -0.0183280    0.0221851
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0070313   -0.0069748    0.0210375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0067316   -0.0312810    0.0178179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0086011   -0.0338614    0.0166592
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0057863   -0.0169003    0.0284730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0040655   -0.0218818    0.0300128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0080965   -0.0217361    0.0055432
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0188187    0.0009738    0.0366635
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0142399   -0.0309923    0.0594721
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0097318   -0.0346626    0.0541263
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0100561   -0.0165709    0.0366831
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0013906   -0.0034686    0.0062497
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0110873    0.0054324    0.0167423
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0047429   -0.0284680    0.0189822
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0170508    0.0078691    0.0262324
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0155580    0.0024422    0.0286739
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0095207   -0.0230928    0.0421342
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0301718    0.0237075    0.0366362
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0302128   -0.0081760    0.0686017
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0286226   -0.0717589    0.0145137
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0021706   -0.0541138    0.0584551
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0185162   -0.0339521    0.0709845
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0482552   -0.1039787    0.0074683
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0131030   -0.0392621    0.0130560
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0057856   -0.0153591    0.0269303
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0039478   -0.0131399    0.0210355
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0174896   -0.0471300    0.0121509
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0259413   -0.0508202   -0.0010624
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0042183   -0.0164472    0.0248838
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0008480   -0.0232966    0.0249926
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0075607   -0.0189987    0.0038773
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0052303   -0.0142676    0.0247282
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0326475   -0.0120891    0.0773842
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0376328    0.0108259    0.0644396
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0027461   -0.0006729    0.0061651
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0052409    0.0001486    0.0103331
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0222255   -0.0074245    0.0518755
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0052001   -0.0023533    0.0127535
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0246888    0.0122790    0.0370986
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0388642   -0.0994813    0.0217529
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0353116    0.0287597    0.0418635
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0222649   -0.0278377    0.0723675
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0175773   -0.0619084    0.0267539
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0167764   -0.0702179    0.1037707
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0149900   -0.0938865    0.0639065
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0072529   -0.0108225    0.0253283
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0011041   -0.0363276    0.0385358
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0100403   -0.0284603    0.0485409
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0104195   -0.0149917    0.0358306
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0045426   -0.0232940    0.0323792
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0047339   -0.0201303    0.0106626
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0141404   -0.0066322    0.0349129
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0136543   -0.0644013    0.0370926
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0091801   -0.0366565    0.0550166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0218479   -0.0560040    0.0123083
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0011866   -0.0045096    0.0021365
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0106835    0.0040346    0.0173323
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0241958   -0.0520749    0.0036833
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0181556    0.0086370    0.0276743
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0107408   -0.0049304    0.0264121
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0098169   -0.0263940    0.0460278
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0041133   -0.0127923    0.0045657


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0562678   -0.0103161    0.1184636
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0708213   -0.2672228    0.0951408
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0089347   -0.0647010    0.0439108
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0300841   -0.0611922    0.1135095
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0474522   -0.0499429    0.1358128
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0030065   -0.0290797    0.0340921
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0101689   -0.0106190    0.0305292
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0081324   -0.0382500    0.0211116
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0129637   -0.0517825    0.0244224
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0132801   -0.0402057    0.0640158
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0085128   -0.0473337    0.0613813
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0234029   -0.0635848    0.0152609
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0363040    0.0012235    0.0701524
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0256501   -0.0593947    0.1038677
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0273214   -0.1087824    0.1467183
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0157381   -0.0268578    0.0565670
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0083026   -0.0210695    0.0368297
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0265755    0.0129190    0.0400432
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0062082   -0.0377504    0.0243752
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0439761    0.0199870    0.0673780
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0226663    0.0033360    0.0416216
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0149388   -0.0375972    0.0648149
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0609167    0.0477114    0.0739388
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0842779   -0.0297271    0.1856609
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.1282512   -0.3380526    0.0486541
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0050985   -0.1363011    0.1289025
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0501213   -0.1030826    0.1820472
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1159895   -0.2589886    0.0107674
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0256485   -0.0782305    0.0243692
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0136327   -0.0374821    0.0622292
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0092782   -0.0318152    0.0487351
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0449115   -0.1238849    0.0285126
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0746110   -0.1486199   -0.0053707
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0175763   -0.0723510    0.0999623
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0028071   -0.0803989    0.0796050
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0388838   -0.0993285    0.0182374
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0167246   -0.0476571    0.0771499
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1026065   -0.0493616    0.2325667
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1183228    0.0302333    0.1984106
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0275967   -0.0064294    0.0604724
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0202540    0.0003734    0.0397391
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0683044   -0.0275042    0.1551794
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0273313   -0.0131743    0.0662175
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.1032810    0.0499539    0.1536148
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.1096169   -0.2948064    0.0490858
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0855075    0.0694446    0.1012932
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0525053   -0.0735034    0.1637230
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0416446   -0.1523167    0.0583983
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0423675   -0.2049571    0.2389272
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0394737   -0.2695024    0.1488748
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0144171   -0.0224768    0.0499797
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0014581   -0.0492208    0.0496892
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0174945   -0.0519710    0.0823730
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0346808   -0.0537929    0.1157265
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0172825   -0.0944883    0.1176390
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0209210   -0.0912336    0.0448611
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0388367   -0.0199518    0.0942368
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0348944   -0.1731146    0.0870403
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0257723   -0.1147736    0.1485987
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0387215   -0.1012154    0.0202259
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0154398   -0.0584313    0.0258054
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0406432    0.0150125    0.0656069
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0316597   -0.0689107    0.0042930
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0680961    0.0317669    0.1030622
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0166530   -0.0079656    0.0406703
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0163427   -0.0458396    0.0748279
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0190213   -0.0599231    0.0203021
