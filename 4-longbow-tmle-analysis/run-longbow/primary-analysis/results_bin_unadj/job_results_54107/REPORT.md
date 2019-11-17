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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0       24    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       46    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0        8    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1       18    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       12    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       16    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        3     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1       11     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        4     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        3     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        3     24
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       59    180
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       87    180
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       11    180
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       17    180
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        1    180
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        5    180
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0       18     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       63     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        2     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       13     98
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       15     35
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  0        2     35
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        9     35
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0       12     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       34     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        2     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1       14     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        4     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       21     87
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        5     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       16     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       24     51
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       98    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      153    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        8    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       27    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       14    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       24    324
0-24 months   ki1000108-IRC              INDIA                          [20-30)              0      132    395
0-24 months   ki1000108-IRC              INDIA                          [20-30)              1      203    395
0-24 months   ki1000108-IRC              INDIA                          <20                  0       14    395
0-24 months   ki1000108-IRC              INDIA                          <20                  1       16    395
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       16    395
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       14    395
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       63    320
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       61    320
0-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0    320
0-24 months   ki1000109-EE               PAKISTAN                       <20                  1        1    320
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       95    320
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1      100    320
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      390    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1      230    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0       52    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1       38    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       62    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       42    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0      145    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0       17    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       59    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        5    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      133    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      154    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       16    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1       19    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       52    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       45    419
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       85    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      120    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       20    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       26    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       24    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       33    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       72    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      126    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       25    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       36    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       20    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       31    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      165    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      297    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       19    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       29    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       81    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      119    710
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      296   1820
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      520   1820
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  0       73   1820
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  1      155   1820
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      336   1820
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      440   1820
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        9     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       11     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        6     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        3     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        5     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3     37
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0      365    782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1       20    782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       96    782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1        3    782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      287    782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       11    782
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      180    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      236    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       62    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       64    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       54    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       47    643
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0      455   4431
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1     2761   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  0       47   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  1      414   4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0      113   4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      641   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     1085   3603
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1306   3603
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      284   3603
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      334   3603
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      276   3603
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      318   3603
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0      104    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1       79    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0       24    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1       28    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0       84    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       61    380
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0      936   1940
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1      302   1940
0-24 months   ki1135781-COHORTS          INDIA                          <20                  0      136   1940
0-24 months   ki1135781-COHORTS          INDIA                          <20                  1       34   1940
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      411   1940
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      121   1940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0      379   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      575   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0       98   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1      152   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      187   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      298   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0       25     63
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1        6     63
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       10     63
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        3     63
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0       17     63
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1        2     63
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     1995   7570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1433   7570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     1980   7570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1435   7570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      399   7570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      328   7570
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0        8     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       26     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  0        3     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  1       13     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0        2     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       11     63
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        8     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        3     15
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              0       23     85
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              1       45     85
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  0        3     85
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  1       10     85
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0        1     85
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        3     85
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              0        8     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              1       30     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  1        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        8     48
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  1        3     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0        7     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       12     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        7     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        1     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        8     36
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       12     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       56    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      105    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        4    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       16    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        6    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       14    201
0-6 months    ki1000108-IRC              INDIA                          [20-30)              0       70    240
0-6 months    ki1000108-IRC              INDIA                          [20-30)              1      131    240
0-6 months    ki1000108-IRC              INDIA                          <20                  0        9    240
0-6 months    ki1000108-IRC              INDIA                          <20                  1       11    240
0-6 months    ki1000108-IRC              INDIA                          >=30                 0        8    240
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       11    240
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              0       19    127
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              1       24    127
0-6 months    ki1000109-EE               PAKISTAN                       <20                  0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       <20                  1        1    127
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0       36    127
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1       47    127
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      128    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1      137    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  0       14    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  1       17    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       24    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       21    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       47     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        7     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       24     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0       44    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      114    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       15    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       29    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       29    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       98    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  0        4    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  1       19    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0        7    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       28    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       12    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      115    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0        4    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       34    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0        5    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       27    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0       60    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      163    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0        7    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       19    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       34    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       56    339
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              0       61    722
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              1      251    722
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  0       20    722
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  1       91    722
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0       83    722
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      216    722
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1        0      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3      9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              0       59    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      107    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  0       26    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  1       34    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0       19    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       18    263
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              0      353   4263
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              1     2733   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  0       36   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  1      408   4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0       99   4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      634   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0      416   2509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1252   2509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      124   2509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      320   2509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0       91   2509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      306   2509
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              0       24    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              1       75    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  0        9    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  1       27    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 0       21    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 1       58    214
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              0      523   1276
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              1      302   1276
0-6 months    ki1135781-COHORTS          INDIA                          <20                  0       78   1276
0-6 months    ki1135781-COHORTS          INDIA                          <20                  1       34   1276
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 0      218   1276
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 1      121   1276
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              0      121    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      317    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  0       26    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  1       81    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 0       51    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 1      156    752
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              0        1      3
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              1        0      3
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  0        0      3
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  1        0      3
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 0        2      3
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 1        0      3
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0      747   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1433   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  0      621   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1435   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      169   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      328   4733
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0       16     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       20     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       10     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1        5     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       36     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       42     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1        7     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       33     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        5     50
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       10     24
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        6     24
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0        5     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       22     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        7     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       13     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        4     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       16     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       12     37
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       42    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1       48    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       11    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       10    123
6-24 months   ki1000108-IRC              INDIA                          [20-30)              0       62    155
6-24 months   ki1000108-IRC              INDIA                          [20-30)              1       72    155
6-24 months   ki1000108-IRC              INDIA                          <20                  0        5    155
6-24 months   ki1000108-IRC              INDIA                          <20                  1        5    155
6-24 months   ki1000108-IRC              INDIA                          >=30                 0        8    155
6-24 months   ki1000108-IRC              INDIA                          >=30                 1        3    155
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       44    193
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       37    193
6-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0    193
6-24 months   ki1000109-EE               PAKISTAN                       <20                  1        0    193
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       59    193
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       53    193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      262    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1       93    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0       38    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1       21    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       38    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       21    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       98    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1        8    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0       10    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       35    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        5    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0       89    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1       40    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       11    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1        3    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       37    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       16    196
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       56    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       16    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1        5    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       60    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1       11    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       21    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1        2    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       15    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      105    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      134    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       12    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       10    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       47    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       63    371
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      235   1098
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      269   1098
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  0       53   1098
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  1       64   1098
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      253   1098
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      224   1098
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       11     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        0     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0      365    782
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1       20    782
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       96    782
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1        3    782
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      287    782
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       11    782
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      121    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      129    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       36    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       30    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       35    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       29    380
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0      102    168
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1       28    168
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  0       11    168
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  1        6    168
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0       14    168
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1        7    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0      669   1094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1       54   1094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      160   1094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1       14   1094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      185   1094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1       12   1094
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0       80    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1        4    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0       15    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1        1    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0       63    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1        3    166
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0      413    664
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1        0    664
6-24 months   ki1135781-COHORTS          INDIA                          <20                  0       58    664
6-24 months   ki1135781-COHORTS          INDIA                          <20                  1        0    664
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      193    664
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 1        0    664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0      258    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      258    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0       72    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1       71    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      136    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      142    937
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0       24     60
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1        6     60
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       10     60
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        3     60
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0       15     60
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1        2     60
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     1248   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     1359   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      230   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1        0   2837


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ccb1c343-cc61-41ec-8ca0-498ae12cf439/df4bfb6c-3d1c-46b4-8567-d30d97ea4507/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ccb1c343-cc61-41ec-8ca0-498ae12cf439/df4bfb6c-3d1c-46b4-8567-d30d97ea4507/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ccb1c343-cc61-41ec-8ca0-498ae12cf439/df4bfb6c-3d1c-46b4-8567-d30d97ea4507/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ccb1c343-cc61-41ec-8ca0-498ae12cf439/df4bfb6c-3d1c-46b4-8567-d30d97ea4507/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.6571429   0.5406898   0.7735959
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6923077   0.5029558   0.8816596
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5714286   0.4018241   0.7410330
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6095618   0.5440036   0.6751199
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7714286   0.6337889   0.9090682
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6315789   0.4824082   0.7807497
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6059701   0.5489040   0.6630363
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5333333   0.3421602   0.7245064
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4666667   0.3071858   0.6261475
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3709677   0.3309249   0.4110106
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4222222   0.3175354   0.5269091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4038462   0.3039523   0.5037401
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5365854   0.4751640   0.5980067
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5428571   0.3658374   0.7198769
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4639175   0.3608362   0.5669988
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.5853659   0.5168466   0.6538851
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.5652174   0.4109847   0.7194501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.5789474   0.4468849   0.7110098
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.6363636   0.5675310   0.7051963
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.5901639   0.4723983   0.7079295
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.6078431   0.4756675   0.7400188
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6428571   0.5964647   0.6892496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6041667   0.4499991   0.7583342
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5950000   0.5240251   0.6659749
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.6372549   0.6002795   0.6742303
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.6798246   0.6166059   0.7430432
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5670103   0.5305855   0.6034351
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5673077   0.5166775   0.6179378
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5079365   0.4026576   0.6132154
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4653465   0.3602822   0.5704109
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8585199   0.8465766   0.8704632
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.8980477   0.8707822   0.9253132
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8501326   0.8247349   0.8755303
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.5462150   0.5261241   0.5663058
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.5404531   0.5006203   0.5802858
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5353535   0.4945439   0.5761631
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.4316940   0.3586829   0.5047050
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5384615   0.3923849   0.6845382
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4206897   0.3369595   0.5044198
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2439418   0.2196135   0.2682701
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2000000   0.1410052   0.2589948
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2274436   0.1925299   0.2623573
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6027254   0.5692538   0.6361970
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6080000   0.5490467   0.6669533
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6144330   0.5694107   0.6594552
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4180280   0.4015021   0.4345539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4202050   0.4037504   0.4366596
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4511692   0.4143602   0.4879781
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.6517413   0.5839855   0.7194971
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5500000   0.3148186   0.7851814
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.5169811   0.4563015   0.5776607
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5483871   0.3676375   0.7291367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4666667   0.3216504   0.6116830
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.7215190   0.6511513   0.7918867
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.7619048   0.5927535   0.9310560
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5180822   0.8000996
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.7309417   0.6719457   0.7899377
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7307692   0.5576592   0.9038792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6222222   0.5204880   0.7239564
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.8044872   0.7612878   0.8476866
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.8198198   0.7520403   0.8875994
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.7224080   0.6716068   0.7732092
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.6445783   0.5716155   0.7175411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5666667   0.4386028   0.6947306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4864865   0.3219971   0.6509759
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8856124   0.8742984   0.8969265
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.9189189   0.8932778   0.9445600
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8649386   0.8400437   0.8898335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.7505995   0.7298449   0.7713541
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.7207207   0.6792021   0.7622394
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7707809   0.7292757   0.8122860
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7575758   0.6738976   0.8412539
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7500000   0.6075529   0.8924471
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3660606   0.3331761   0.3989451
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.3035714   0.2183835   0.3887594
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3569322   0.3059122   0.4079521
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.7237443   0.6816227   0.7658659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7570093   0.6760179   0.8380007
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7536232   0.6949446   0.8123018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.6573394   0.6374063   0.6772726
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.6979572   0.6781249   0.7177895
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6599598   0.6182898   0.7016297
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.5555556   0.3812212   0.7298899
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5000000   0.1284515   0.8715485
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3333333   0.1484634   0.5182032
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2619718   0.2151620   0.3087817
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3559322   0.2306584   0.4812060
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3559322   0.2293804   0.4824840
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2820513   0.1804061   0.3836964
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3043478   0.1179134   0.4907823
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5606695   0.4957083   0.6256306
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.4545455   0.2257592   0.6833317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5727273   0.4775076   0.6679470
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.5337302   0.4871740   0.5802863
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.5470085   0.4517989   0.6422182
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4696017   0.4218289   0.5173744
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5160000   0.4514173   0.5805827
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4545455   0.3110617   0.5980293
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4531250   0.3144565   0.5917935
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2153846   0.1450314   0.2857379
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.3529412   0.1237258   0.5821565
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3333333   0.1298967   0.5367700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0746888   0.0560715   0.0933061
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0804598   0.0389012   0.1220183
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0609137   0.0256532   0.0961743
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.5000000   0.4543027   0.5456973
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.4965035   0.4104952   0.5825118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5107914   0.4487580   0.5728247


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5202864   0.4695109   0.5710618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6126374   0.5884768   0.6367979
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5434360   0.5270156   0.5598565
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2355670   0.2165976   0.2545364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4221929   0.4110723   0.4333134
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.7728532   0.7426787   0.8030276
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7485054   0.7315407   0.7654701
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3581505   0.3318331   0.3844678
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752588   0.6619177   0.6885999
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5072860   0.4757518   0.5388202
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0731261   0.0577817   0.0884705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.0535117   0.7605022   1.4594131
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.8695652   0.6151686   1.2291649
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2655462   1.0275196   1.5587122
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0361197   0.7992780   1.3431423
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8801314   0.6075574   1.2749927
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7701149   0.5402651   1.0977519
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1381643   0.8684895   1.4915757
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0886288   0.8311253   1.4259133
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0116883   0.7161022   1.4292838
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8645736   0.6733556   1.1100932
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.9655797   0.7174669   1.2994943
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.9890351   0.7652710   1.2782274
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.9274005   0.7388195   1.1641161
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9551821   0.7490222   1.2180851
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9398148   0.7208988   1.2252093
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9255556   0.8051072   1.0640236
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0668016   0.9560639   1.1903657
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8897700   0.8159914   0.9702194
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8953457   0.7144412   1.1220573
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8202719   0.6434234   1.0457282
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0460418   1.0116844   1.0815661
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9902305   0.9581287   1.0234079
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9894512   0.9112100   1.0744106
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9801151   0.9005634   1.0666940
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2473223   0.9060073   1.7172190
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9745089   0.7504518   1.2654613
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8198675   0.6005015   1.1193691
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9323682   0.7764009   1.1196669
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0087513   0.9020876   1.1280271
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0194245   0.9298619   1.1176135
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0052077   0.9508015   1.0627272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0792798   0.9857377   1.1816986
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.8438931   0.5434659   1.3103962
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8883086   0.6127210   1.2878490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0607488   0.7475888   1.5050894
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.9026764   0.6475355   1.2583475
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0559733   0.8285939   1.3457492
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9134769   0.7220780   1.1556092
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9997640   0.7784126   1.2840595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8512611   0.7093703   1.0215334
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0190589   0.9233815   1.1246500
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8979733   0.8219307   0.9810512
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8791277   0.6827794   1.1319404
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7547360   0.5283751   1.0780722
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0376084   1.0062488   1.0699453
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9766559   0.9463800   1.0079003
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9601934   0.9007567   1.0235521
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0268870   0.9665708   1.0909669
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9900000   0.7947221   1.2332612
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9691139   0.8148596   1.1525688
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8292928   0.6176524   1.1134524
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9750630   0.8235934   1.1543899
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0459624   0.9260231   1.1814365
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0412838   0.9448248   1.1475905
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0617911   1.0185710   1.1068452
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0039862   0.9360689   1.0768313
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           0.9000000   0.4015934   2.0169656
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.6000000   0.3172102   1.1348940
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.3586659   0.9155633   2.0162158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.3586659   0.9126337   2.0226878
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0790514   0.5301386   2.1963159
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.8057851   0.3153819   2.0587410
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8107191   0.4836820   1.3588795
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0215061   0.8341199   1.2509889
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0248785   0.8435385   1.2452020
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8798485   0.7694741   1.0060552
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8809020   0.6272081   1.2372104
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8781492   0.6308110   1.2224677
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.6386555   0.7920872   3.3900202
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.5476190   0.7745254   3.0923773
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0772669   0.6070831   1.9116065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8155668   0.4342629   1.5316741
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9930070   0.8163783   1.2078504
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0215827   0.8775332   1.1892784


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0119816   -0.0869654   0.0630023
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0200679   -0.0081753   0.0483111
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0160967   -0.0373720   0.0051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0098676   -0.0098676   0.0296029
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0162990   -0.0504996   0.0179016
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0041970   -0.0448502   0.0364562
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0137830   -0.0540277   0.0264618
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0160966   -0.0439482   0.0117550
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0246175   -0.0515649   0.0023298
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0276498   -0.0599772   0.0046776
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0026852   -0.0034479   0.0088184
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0027789   -0.0145087   0.0089508
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0104113   -0.0431759   0.0639984
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0083748   -0.0223883   0.0056387
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0041426   -0.0172129   0.0254981
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0041649   -0.0080588   0.0163885
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0142413   -0.0424320   0.0139495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0037847   -0.0325238   0.0249545
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0085145   -0.0467921   0.0297631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0288768   -0.0655418   0.0077881
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0316340   -0.0657240   0.0024560
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0400156   -0.0865473   0.0065162
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0000858   -0.0060341   0.0058625
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0020941   -0.0141695   0.0099812
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0099122   -0.0724377   0.0526132
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0079101   -0.0272917   0.0114714
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0129578   -0.0135854   0.0395011
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0179194    0.0034523   0.0323865
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0637523   -0.1721469   0.0446423
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0234404   -0.0020153   0.0488962
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0056285   -0.0676577   0.0564006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0027180   -0.0417530   0.0363171
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0264442   -0.0607499   0.0078615
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0212632   -0.0623204   0.0197941
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0286630   -0.0101059   0.0674319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0015627   -0.0126962   0.0095709
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0026681   -0.0278732   0.0332093


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0185714   -0.1415944   0.0911941
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0318725   -0.0144597   0.0760887
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0272885   -0.0639884   0.0081456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0259105   -0.0273423   0.0764030
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0313269   -0.0992537   0.0324024
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0072217   -0.0796894   0.0603821
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0221385   -0.0888097   0.0404503
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0256822   -0.0711606   0.0178654
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0401829   -0.0850689   0.0028463
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0512359   -0.1134411   0.0074942
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0031180   -0.0040301   0.0102152
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0051137   -0.0269336   0.0162427
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0235493   -0.1054210   0.1374725
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0355518   -0.0966517   0.0221439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0068262   -0.0290128   0.0414170
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0098648   -0.0195166   0.0383996
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0223393   -0.0676463   0.0210451
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0073747   -0.0649690   0.0471049
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0119417   -0.0670961   0.0403619
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0411313   -0.0950270   0.0101118
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0409314   -0.0861857   0.0024374
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0661893   -0.1468000   0.0087552
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0000969   -0.0068368   0.0065978
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0027978   -0.0190615   0.0132064
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0132576   -0.1004856   0.0670564
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0220861   -0.0776635   0.0306251
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0175890   -0.0191519   0.0530053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0265370    0.0048545   0.0477472
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1296296   -0.3739720   0.0712597
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0821283   -0.0111679   0.1668165
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0203620   -0.2715476   0.1812036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0048713   -0.0773326   0.0627161
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0521288   -0.1220642   0.0134478
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0429787   -0.1300677   0.0373987
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1174484   -0.0545543   0.2613967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0213693   -0.1858258   0.1202795
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0053079   -0.0573475   0.0642505
