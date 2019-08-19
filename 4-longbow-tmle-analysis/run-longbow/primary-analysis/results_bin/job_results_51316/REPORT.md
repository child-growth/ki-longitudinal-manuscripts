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
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm

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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1       17    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       13    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       16    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1       11     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        2     23
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       58    177
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       84    177
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       12    177
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       16    177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        1    177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        6    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0       18     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       59     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       12     93
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       14     34
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        9     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0       11     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       34     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1       13     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        4     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       19     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        4     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       13     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       22     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       98    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      155    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        8    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       27    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       14    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       24    326
0-24 months   ki1000108-IRC              INDIA                          [20-30)              0      132    395
0-24 months   ki1000108-IRC              INDIA                          [20-30)              1      203    395
0-24 months   ki1000108-IRC              INDIA                          <20                  0       14    395
0-24 months   ki1000108-IRC              INDIA                          <20                  1       16    395
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       16    395
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       14    395
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       64    254
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       40    254
0-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0    254
0-24 months   ki1000109-EE               PAKISTAN                       <20                  1        1    254
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       83    254
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       66    254
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       84    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      120    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       20    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       26    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       24    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       33    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       72    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      127    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       25    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       36    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       20    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       31    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      165    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      297    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       19    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       29    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       81    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      119    710
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      291   1514
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      380   1514
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  0       71   1514
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  1      100   1514
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      332   1514
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      340   1514
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        9     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       11     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        6     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        3     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        5     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3     37
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0      364    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1       20    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       96    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1        3    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      287    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       11    781
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      165    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      198    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       53    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       49    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       50    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       46    561
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0      455   4431
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1     2761   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  0       47   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  1      414   4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0      113   4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      641   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     1067   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1299   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      280   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      328   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      277   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      312   3563
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0     1996   7574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1433   7574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     1980   7574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1438   7574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      399   7574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      328   7574
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0        8     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       26     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  0        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  1       12     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       11     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        8     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              0       22     82
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              1       42     82
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  0        3     82
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  1       10     82
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0        1     82
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        4     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              0        8     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              1       26     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  1        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        7     43
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  1        3     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0        6     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       12     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        7     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        6     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       10     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       56    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      107    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        4    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       16    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        6    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       14    203
0-6 months    ki1000108-IRC              INDIA                          [20-30)              0       70    240
0-6 months    ki1000108-IRC              INDIA                          [20-30)              1      131    240
0-6 months    ki1000108-IRC              INDIA                          <20                  0        9    240
0-6 months    ki1000108-IRC              INDIA                          <20                  1       11    240
0-6 months    ki1000108-IRC              INDIA                          >=30                 0        8    240
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       11    240
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              0       17    108
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              1       18    108
0-6 months    ki1000109-EE               PAKISTAN                       <20                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       <20                  1        1    108
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0       30    108
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1       42    108
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       28    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       98    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  0        4    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  1       19    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0        7    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       28    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       12    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      116    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0        4    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       34    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0        5    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       27    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0       60    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      163    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0        7    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       19    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       34    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       56    339
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              0       55    414
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              1      111    414
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  0       18    414
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  1       36    414
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0       78    414
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      116    414
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1        0      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3      9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              0       43    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              1       69    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  0       17    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  1       19    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0       15    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       17    180
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              0      353   4263
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              1     2733   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  0       36   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  1      408   4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0       99   4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      634   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0      418   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1248   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      126   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      318   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0       97   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      300   2507
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0      748   4737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1     1433   4737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  0      621   4737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  1     1438   4737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      169   4737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      328   4737
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0       16     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1        5     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       36     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       42     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0        9     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       33     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        5     50
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1        9     23
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       22     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       13     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       13     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       12     33
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
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       47    146
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       22    146
6-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0    146
6-24 months   ki1000109-EE               PAKISTAN                       <20                  1        0    146
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       53    146
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       24    146
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
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      236   1100
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      269   1100
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  0       53   1100
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  1       64   1100
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      254   1100
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      224   1100
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       11     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        0     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0      364    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1       20    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       96    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1        3    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      287    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1       11    781
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      122    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      129    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       36    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       30    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       35    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       29    381
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0      102    168
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1       28    168
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  0       11    168
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  1        6    168
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0       14    168
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1        7    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0      649   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1       51   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      154   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1       10   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      180   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1       12   1056
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
![](/tmp/9e08d667-9ffb-4883-a3fb-1bda8b9ce08e/5804da4a-1974-4e72-a9bc-301ff535bccc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e08d667-9ffb-4883-a3fb-1bda8b9ce08e/5804da4a-1974-4e72-a9bc-301ff535bccc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e08d667-9ffb-4883-a3fb-1bda8b9ce08e/5804da4a-1974-4e72-a9bc-301ff535bccc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e08d667-9ffb-4883-a3fb-1bda8b9ce08e/5804da4a-1974-4e72-a9bc-301ff535bccc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.6571429   0.5406898   0.7735959
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6800000   0.4819438   0.8780562
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5517241   0.3870228   0.7164254
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6126482   0.5473590   0.6779374
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7714286   0.6335453   0.9093119
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6315789   0.4821442   0.7810137
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6059701   0.5489040   0.6630363
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5333333   0.3421602   0.7245064
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4666667   0.3071858   0.6261475
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3709600   0.3309047   0.4110152
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.4181782   0.3130550   0.5233015
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3745200   0.2698443   0.4791957
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5358853   0.4741944   0.5975763
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5511033   0.3603375   0.7418690
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4700242   0.3657231   0.5743253
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.5906811   0.5216357   0.6597265
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.6029482   0.4429147   0.7629816
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.5983838   0.4646465   0.7321211
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.6382446   0.5697008   0.7067884
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.5988325   0.4803468   0.7173181
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.6146783   0.4830849   0.7462717
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6437628   0.5972568   0.6902688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6244639   0.4592285   0.7896993
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5936098   0.5233342   0.6638854
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.5660656   0.5227413   0.6093899
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.5378725   0.4522019   0.6235431
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4982364   0.4581583   0.5383144
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5431688   0.4889845   0.5973530
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4762272   0.3594032   0.5930511
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4613604   0.3539390   0.5687818
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8583517   0.8464091   0.8702944
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.8978417   0.8705969   0.9250865
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8476739   0.8219760   0.8733718
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.5496581   0.5295771   0.5697390
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.5530844   0.5137865   0.5923824
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5112731   0.4709803   0.5515659
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.4277483   0.3548540   0.5006425
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5678858   0.4168019   0.7189698
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4265339   0.3430009   0.5100669
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2440321   0.2196426   0.2684217
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2035153   0.1427450   0.2642855
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2282581   0.1932616   0.2632545
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6017088   0.5678306   0.6355870
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6133797   0.5483613   0.6783982
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6156369   0.5695451   0.6617287
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4171556   0.4006320   0.4336792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4216689   0.4052027   0.4381351
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4500651   0.4132033   0.4869270
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.6517413   0.5839855   0.7194971
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5500000   0.3148186   0.7851814
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.5146300   0.4538064   0.5754536
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5286423   0.3537293   0.7035553
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4378904   0.2875589   0.5882220
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.7215190   0.6511513   0.7918867
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.7619048   0.5927535   0.9310560
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5180822   0.8000996
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.7309417   0.6719457   0.7899377
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7307692   0.5576592   0.9038792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6222222   0.5204880   0.7239564
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.6945067   0.6225182   0.7664951
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.7156395   0.5810151   0.8502640
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5951319   0.5233849   0.6668789
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.6178953   0.5270653   0.7087253
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5239538   0.3563625   0.6915451
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5288145   0.3464994   0.7111295
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8854096   0.8741184   0.8967008
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.9212191   0.8957755   0.9466628
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8624735   0.8375812   0.8873658
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.7507717   0.7304525   0.7710910
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.7469557   0.7093692   0.7845422
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7107490   0.6709294   0.7505686
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7575758   0.6738976   0.8412539
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7500000   0.6075529   0.8924471
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3660402   0.3330307   0.3990497
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.3052381   0.2206294   0.3898469
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3561928   0.3049195   0.4074661
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.7242359   0.6816580   0.7668138
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7463341   0.6648589   0.8278093
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7535630   0.6940066   0.8131195
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.6562733   0.6362949   0.6762517
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.6989262   0.6791011   0.7187512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6607108   0.6191403   0.7022813
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.5555556   0.3824365   0.7286746
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5000000   0.1310291   0.8689709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3125000   0.1323165   0.4926835
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2629316   0.2160596   0.3098036
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3462239   0.2171853   0.4752626
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3414931   0.2113968   0.4715894
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2820513   0.1804061   0.3836964
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3043478   0.1179134   0.4907823
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5569165   0.4903068   0.6235262
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3619205   0.1693269   0.5545140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5790974   0.4842643   0.6739306
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.5305429   0.4824552   0.5786307
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.4723089   0.3711818   0.5734361
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4634943   0.4156858   0.5113027
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5125881   0.4480078   0.5771684
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4352588   0.2880985   0.5824190
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4333153   0.2911002   0.5755304
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2153846   0.1450314   0.2857379
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.3529412   0.1237258   0.5821565
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3333333   0.1298967   0.5367700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0725838   0.0538638   0.0913038
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0598658   0.0222175   0.0975140
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0602512   0.0239367   0.0965656
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.5002647   0.4542426   0.5462869
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.5127615   0.4211706   0.6043525
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5112751   0.4476897   0.5748605


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5202864   0.4695109   0.5710618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5416116   0.5143001   0.5689232
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5442043   0.5277100   0.5606986
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2355670   0.2165976   0.2545364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223660   0.4112467   0.4334853
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6352657   0.5887450   0.6817864
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7443159   0.7272505   0.7613813
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3581505   0.3318331   0.3844678
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6753219   0.6619872   0.6886567
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5063636   0.4748679   0.5378594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0691288   0.0539734   0.0842842
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.0347826   0.7358140   1.455225
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.8395802   0.5929854   1.188722
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2591705   1.0225845   1.550493
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0308998   0.7952710   1.336343
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8801314   0.6075574   1.274993
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7701149   0.5402651   1.097752
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1272867   0.8575308   1.481900
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0095968   0.7479818   1.362714
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0283978   0.7143123   1.480588
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8770985   0.6830086   1.126343
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0207676   0.7636864   1.364390
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.0130404   0.7870178   1.303974
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.9382492   0.7497957   1.174068
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9630763   0.7580586   1.223541
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9700218   0.7372413   1.276302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9220940   0.8025979   1.059381
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9501946   0.7964369   1.133636
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8801743   0.7880124   0.983115
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8767573   0.6726313   1.142830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8493869   0.6592814   1.094310
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0460068   1.0117107   1.081465
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9875601   0.9552306   1.020984
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0062337   0.9294056   1.089413
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9301657   0.8532222   1.014048
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.3276170   0.9678739   1.821071
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9971611   0.7698203   1.291639
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8339691   0.6085906   1.142812
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9353606   0.7790418   1.123046
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0193963   0.9041606   1.149319
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0231475   0.9317598   1.123499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0108193   0.9561389   1.068627
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0788903   0.9850732   1.181642
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.8438931   0.5434659   1.310396
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8883086   0.6127210   1.287849
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0272279   0.7227892   1.459896
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           0.8508840   0.5918632   1.223262
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0559733   0.8285939   1.345749
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9134769   0.7220780   1.155609
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9997640   0.7784126   1.284059
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8512611   0.7093703   1.021533
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0304286   0.8322035   1.275869
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8569132   0.7309677   1.004559
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8479653   0.5962161   1.206014
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8558318   0.5879771   1.245709
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0404440   1.0093131   1.072535
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9740955   0.9439191   1.005237
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9949172   0.9410630   1.051853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9466912   0.8910283   1.005831
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           0.9900000   0.7947221   1.233261
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9691139   0.8148596   1.152569
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8338924   0.6231282   1.115944
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9730975   0.8210267   1.153335
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0305125   0.9102519   1.166662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0404940   0.9428497   1.148251
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0649925   1.0215845   1.110245
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0067616   0.9387959   1.079648
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           0.9000000   0.4038524   2.005683
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.5625000   0.2920037   1.083569
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.3167831   0.8710373   1.990636
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2987906   0.8522509   1.979296
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0790514   0.5301386   2.196316
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.8057851   0.3153819   2.058741
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.6498649   0.3763281   1.122224
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0398281   0.8494869   1.272818
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8902370   0.7056606   1.123092
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8736225   0.7618982   1.001730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8491394   0.5917860   1.218410
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8453480   0.5946311   1.201776
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.6386555   0.7920872   3.390020
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.5476190   0.7745254   3.092377
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8247814   0.4180137   1.627373
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8300916   0.4309340   1.598974
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0249803   0.8384364   1.253028
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0220090   0.8758392   1.192573


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0200461   -0.0951000    0.0550079
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0192536   -0.0087860    0.0472932
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0160967   -0.0373720    0.0051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0098754   -0.0099594    0.0297102
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0155989   -0.0498775    0.0186796
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0076192   -0.0485098    0.0332713
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0144504   -0.0540020    0.0251012
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0170022   -0.0449758    0.0109713
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0244540   -0.0564694    0.0075614
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0208871   -0.0552746    0.0135004
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0028534   -0.0032582    0.0089651
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0054537   -0.0169671    0.0060596
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0143570   -0.0389750    0.0676890
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0084651   -0.0225362    0.0056060
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0051592   -0.0166533    0.0269717
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0052104   -0.0070157    0.0174365
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0142413   -0.0424320    0.0139495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0014335   -0.0304616    0.0275946
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0085145   -0.0467921    0.0297631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0288768   -0.0655418    0.0077881
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0592410   -0.1165232   -0.0019587
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0345620   -0.0922029    0.0230790
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001170   -0.0057885    0.0060225
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0064558   -0.0175630    0.0046514
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0099122   -0.0724377    0.0526132
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0078897   -0.0273807    0.0116012
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0124663   -0.0145532    0.0394857
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0190486    0.0045447    0.0335526
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0716846   -0.1816278    0.0382586
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0224806   -0.0030551    0.0480164
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0056285   -0.0676577    0.0564006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0010350   -0.0387612    0.0408311
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0241793   -0.0598367    0.0114781
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0191498   -0.0601908    0.0218913
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0286630   -0.0101059    0.0674319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0034550   -0.0142370    0.0073270
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0024033   -0.0285338    0.0333405


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0314647   -0.1561481    0.0797723
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0304693   -0.0153283    0.0742012
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0272885   -0.0639884    0.0081456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0259309   -0.0275922    0.0766662
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0299815   -0.0980405    0.0338591
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0130676   -0.0857331    0.0547345
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0231654   -0.0884993    0.0382471
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0271272   -0.0728093    0.0166098
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0451504   -0.1058655    0.0122312
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0399920   -0.1083674    0.0241653
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0033133   -0.0038098    0.0103859
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0100215   -0.0314042    0.0109180
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0324742   -0.0959122    0.1458200
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0359351   -0.0972853    0.0219850
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0085013   -0.0281263    0.0438241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0123362   -0.0170406    0.0408645
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0223393   -0.0676463    0.0210451
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0027933   -0.0609840    0.0522059
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0119417   -0.0670961    0.0403619
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0411313   -0.0950270    0.0101118
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0932538   -0.1878923   -0.0061551
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0592491   -0.1634303    0.0356030
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001321   -0.0065590    0.0067789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0086735   -0.0237094    0.0061416
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0132576   -0.1004856    0.0670564
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0220291   -0.0779221    0.0309657
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0169217   -0.0204926    0.0529643
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0282067    0.0064671    0.0494707
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1481481   -0.4017062    0.0595432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0787655   -0.0148143    0.1637159
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0203620   -0.2715476    0.1812036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0018550   -0.0720860    0.0706963
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0477509   -0.1205874    0.0203514
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0388088   -0.1260324    0.0416583
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1174484   -0.0545543    0.2613967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0499792   -0.2183998    0.0951606
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0047812   -0.0587113    0.0644659
