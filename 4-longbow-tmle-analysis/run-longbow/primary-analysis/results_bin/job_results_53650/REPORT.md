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

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

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




# Results Detail

## Results Plots
![](/tmp/633bf815-4a0b-4269-93bf-a2ac8019b7ad/eae775c2-b398-4bd0-bc88-d01c4d0c3665/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/633bf815-4a0b-4269-93bf-a2ac8019b7ad/eae775c2-b398-4bd0-bc88-d01c4d0c3665/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/633bf815-4a0b-4269-93bf-a2ac8019b7ad/eae775c2-b398-4bd0-bc88-d01c4d0c3665/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/633bf815-4a0b-4269-93bf-a2ac8019b7ad/eae775c2-b398-4bd0-bc88-d01c4d0c3665/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3705717   0.3304981   0.4106453
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4126033   0.3077178   0.5174888
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3932720   0.2912235   0.4953204
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5398032   0.4782015   0.6014048
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6086859   0.4195987   0.7977731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4523606   0.3511624   0.5535588
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.5851378   0.5167736   0.6535020
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.5596390   0.3983156   0.7209623
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.5611631   0.4250856   0.6972405
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.6354454   0.5661956   0.7046953
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.6006445   0.4830913   0.7181976
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.5871392   0.4460366   0.7282417
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6431704   0.5966814   0.6896595
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6072416   0.4424651   0.7720181
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5956717   0.5263045   0.6650388
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.6377394   0.5997268   0.6757519
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.6608005   0.5917550   0.7298460
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5552358   0.5183136   0.5921581
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5665813   0.5156588   0.6175039
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5149221   0.4050188   0.6248254
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4660218   0.3612618   0.5707818
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8581136   0.8460832   0.8701441
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.9010493   0.8728515   0.9292472
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8444376   0.8181792   0.8706961
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.5457649   0.5256502   0.5658796
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.5722033   0.5324382   0.6119684
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5042680   0.4634099   0.5451261
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.4276183   0.3549424   0.5002942
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5518298   0.3927968   0.7108628
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4212231   0.3374319   0.5050143
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2436742   0.2192706   0.2680777
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2012470   0.1407757   0.2617182
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2299438   0.1948801   0.2650075
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6018152   0.5681485   0.6354818
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6179140   0.5555262   0.6803018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6138058   0.5678690   0.6597427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4162513   0.3997026   0.4328001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4213779   0.4049004   0.4378553
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4531262   0.4164618   0.4897906
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.6517413   0.5839855   0.7194971
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5500000   0.3148186   0.7851814
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.5182414   0.4575016   0.5789813
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5761971   0.3868518   0.7655424
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4932505   0.3528726   0.6336284
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.7215190   0.6511513   0.7918867
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.7619048   0.5927535   0.9310560
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5180822   0.8000996
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.7309417   0.6719457   0.7899377
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7307692   0.5576592   0.9038792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6222222   0.5204880   0.7239564
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.8002686   0.7535462   0.8469910
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.8588653   0.7978904   0.9198401
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.7266628   0.6741489   0.7791767
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.6415959   0.5680116   0.7151802
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5628759   0.4322832   0.6934686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4637889   0.2901269   0.6374509
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8854410   0.8740780   0.8968040
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.9204309   0.8945451   0.9463166
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8592486   0.8338297   0.8846676
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.7526634   0.7325275   0.7727992
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.7540594   0.7165757   0.7915431
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7212482   0.6827827   0.7597136
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7575758   0.6738976   0.8412539
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7500000   0.6075529   0.8924471
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3667172   0.3337136   0.3997208
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.3078683   0.2221023   0.3936343
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3552521   0.3040057   0.4064984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.7237652   0.6809740   0.7665565
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7376900   0.6546935   0.8206866
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7547058   0.6944903   0.8149214
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.6565408   0.6365787   0.6765028
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.6983595   0.6785143   0.7182046
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6592707   0.6177222   0.7008192
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.5555556   0.3812212   0.7298899
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5000000   0.1284515   0.8715485
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3333333   0.1484634   0.5182032
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2616422   0.2147523   0.3085321
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3437145   0.2167843   0.4706448
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3322455   0.2011849   0.4633060
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2820513   0.1804061   0.3836964
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3043478   0.1179134   0.4907823
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5579734   0.4914086   0.6245383
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3762257   0.1796395   0.5728120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5828488   0.4856396   0.6800581
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.5303005   0.4823875   0.5782135
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.4903952   0.3882253   0.5925650
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4662277   0.4181334   0.5143221
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5144065   0.4497653   0.5790476
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4315296   0.2854808   0.5775784
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4344718   0.2934735   0.5754701
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2153846   0.1450314   0.2857379
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.3529412   0.1237258   0.5821565
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3333333   0.1298967   0.5367700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0749053   0.0562730   0.0935376
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0836388   0.0428739   0.1244037
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0661107   0.0298422   0.1023792
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.5012812   0.4552818   0.5472806
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.5117138   0.4206836   0.6027440
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5064247   0.4423757   0.5704738


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1134236   0.8449725   1.4671627
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0612573   0.8013527   1.4054574
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.1276071   0.8101713   1.5694185
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8380103   0.6525311   1.0762111
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.9564226   0.7004870   1.3058687
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.9590272   0.7326448   1.2553603
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.9452337   0.7553881   1.1827917
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9239805   0.7091911   1.2038222
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9441379   0.7128099   1.2505388
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9261490   0.8076320   1.0620580
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0361608   0.9188859   1.1684031
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8706312   0.7964445   0.9517283
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.9088229   0.7207126   1.1460312
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8225153   0.6455896   1.0479281
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0500350   1.0146596   1.0866437
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9840627   0.9510833   1.0181858
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0484430   0.9696673   1.1336184
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9239657   0.8459176   1.0092149
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2904728   0.9239191   1.8024521
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9850446   0.7591674   1.2781276
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8258855   0.6015008   1.1339751
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9436528   0.7863697   1.1323943
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0267504   0.9148282   1.1523656
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0199241   0.9290330   1.1197075
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0123159   0.9574077   1.0703731
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0885879   0.9947582   1.1912681
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.8438931   0.5434659   1.3103962
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8883086   0.6127210   1.2878490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1118314   0.7843141   1.5761148
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.9517774   0.6994680   1.2950990
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0559733   0.8285939   1.3457492
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9134769   0.7220780   1.1556092
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9997640   0.7784126   1.2840595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8512611   0.7093703   1.0215334
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0732213   0.9793055   1.1761436
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.9080237   0.8272369   0.9966999
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8773059   0.6771893   1.1365592
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7228676   0.4882208   1.0702894
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0395168   1.0078961   1.0721295
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9704188   0.9396420   1.0022037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0018548   0.9485560   1.0581483
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9582613   0.9047233   1.0149673
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9900000   0.7947221   1.2332612
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9691139   0.8148596   1.1525688
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8395251   0.6265458   1.1249018
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9687359   0.8172121   1.1483544
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0192394   0.8975095   1.1574796
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0427495   0.9441390   1.1516594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0636955   1.0203240   1.1089106
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0041580   0.9362985   1.0769359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           0.9000000   0.4015934   2.0169656
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.6000000   0.3172102   1.1348940
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.3136816   0.8720279   1.9790185
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2698466   0.8235098   1.9580951
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0790514   0.5301386   2.1963159
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.8057851   0.3153819   2.0587410
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.6742718   0.3942389   1.1532155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0445817   0.8506641   1.2827049
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9247496   0.7367802   1.1606741
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8791765   0.7669111   1.0078761
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8388884   0.5839912   1.2050416
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8446080   0.5959088   1.1971006
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.6386555   0.7920872   3.3900202
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.5476190   0.7745254   3.0923773
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1165934   0.6462051   1.9293886
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8825904   0.4830448   1.6126162
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0208119   0.8358018   1.2467753
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0102608   0.8643984   1.1807368


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0119816   -0.0869654   0.0630023
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0200679   -0.0081753   0.0483111
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0160967   -0.0373720   0.0051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0102636   -0.0093441   0.0298714
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0195168   -0.0535090   0.0144754
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0039690   -0.0448889   0.0369510
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0128648   -0.0534291   0.0276996
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0164099   -0.0443945   0.0115748
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0251020   -0.0531410   0.0029370
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0269235   -0.0594794   0.0056324
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0030915   -0.0031283   0.0093114
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0023288   -0.0139081   0.0092504
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0144870   -0.0387908   0.0677647
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0081072   -0.0221855   0.0059711
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0050528   -0.0165177   0.0266233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0059415   -0.0063009   0.0181840
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0142413   -0.0424320   0.0139495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0050450   -0.0340051   0.0239152
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0085145   -0.0467921   0.0297631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0288768   -0.0655418   0.0077881
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0274154   -0.0649337   0.0101029
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0370332   -0.0841173   0.0100510
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0000856   -0.0059020   0.0060732
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0041580   -0.0149456   0.0066296
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0099122   -0.0724377   0.0526132
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0085667   -0.0280522   0.0109188
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0129369   -0.0143524   0.0402261
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0187181    0.0042236   0.0332125
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0637523   -0.1721469   0.0446423
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0237701   -0.0015583   0.0490984
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0056285   -0.0676577   0.0564006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0000220   -0.0402855   0.0402416
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0230145   -0.0585684   0.0125393
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0196696   -0.0611059   0.0217667
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0286630   -0.0101059   0.0674319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0017792   -0.0129271   0.0093688
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0013869   -0.0294567   0.0322305


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0185714   -0.1415944   0.0911941
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0318725   -0.0144597   0.0760887
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0272885   -0.0639884   0.0081456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0269504   -0.0259689   0.0771401
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0375116   -0.1049863   0.0258429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0068293   -0.0797946   0.0612056
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0206637   -0.0878736   0.0423940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0261820   -0.0718820   0.0175695
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0409737   -0.0876987   0.0037442
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0498899   -0.1125017   0.0091982
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0035898   -0.0036602   0.0107874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0042854   -0.0258206   0.0167978
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0327681   -0.0954610   0.1459873
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0344155   -0.0958009   0.0235312
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0083260   -0.0278865   0.0432628
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0140730   -0.0153578   0.0426508
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0223393   -0.0676463   0.0210451
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0098305   -0.0678830   0.0450662
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0119417   -0.0670961   0.0403619
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0411313   -0.0950270   0.0101118
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0354730   -0.0852813   0.0120494
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0612561   -0.1427310   0.0144098
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0000967   -0.0066879   0.0068355
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0055551   -0.0200711   0.0087544
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0132576   -0.1004856   0.0670564
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0239193   -0.0797959   0.0290659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0175605   -0.0202376   0.0539583
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0277198    0.0059939   0.0489709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1296296   -0.3739720   0.0712597
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0832833   -0.0096216   0.1676391
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0203620   -0.2715476   0.1812036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0000393   -0.0748700   0.0695817
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0453680   -0.1178680   0.0224300
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0397577   -0.1276439   0.0412788
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1174484   -0.0545543   0.2613967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0243301   -0.1890234   0.1175513
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0027591   -0.0605299   0.0622712
