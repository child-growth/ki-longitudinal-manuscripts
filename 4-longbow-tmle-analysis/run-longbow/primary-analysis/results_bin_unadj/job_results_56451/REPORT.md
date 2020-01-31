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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       ever_swasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  --------  -------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      167     263  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       13     263  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       32     263  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1        5     263  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       43     263  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        3     263  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      138     233  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        1     233  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       41     233  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        2     233  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       50     233  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     233  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      172     249  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1       22     249  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       31     249  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        3     249  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       20     249  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        1     249  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      180     240  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        9     240  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      150     302  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        3     302  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       81     302  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     302  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       67     302  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     302  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      151     312  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        8     312  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       44     312  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        4     312  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      101     312  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        4     312  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      135     261  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        4     261  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       14     261  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        2     261  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     261  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        3     261  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      222     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       74     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       27     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        7     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       32     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1       11     373  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          [20-30)               0      226     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          [20-30)               1      118     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          <20                   0       27     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          <20                   1       10     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          >=30                  0       17     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          >=30                  1       12     410  ever_swasted     
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      134     377  ever_swasted     
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       28     377  ever_swasted     
0-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     377  ever_swasted     
0-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     377  ever_swasted     
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      163     377  ever_swasted     
0-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       51     377  ever_swasted     
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      979    1513  ever_swasted     
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      173    1513  ever_swasted     
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0      173    1513  ever_swasted     
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       19    1513  ever_swasted     
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      138    1513  ever_swasted     
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       31    1513  ever_swasted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      247     418  ever_swasted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       43     418  ever_swasted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       33     418  ever_swasted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        3     418  ever_swasted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       67     418  ever_swasted     
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       25     418  ever_swasted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      349     622  ever_swasted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       68     622  ever_swasted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       66     622  ever_swasted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        7     622  ever_swasted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      108     622  ever_swasted     
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       24     622  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      464     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       29     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       83     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1        2     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      111     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1       11     700  ever_swasted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      455     758  ever_swasted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       39     758  ever_swasted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      122     758  ever_swasted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       14     758  ever_swasted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      115     758  ever_swasted     
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       13     758  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1472    2376  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       99    2376  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      154    2376  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       13    2376  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      593    2376  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       45    2376  ever_swasted     
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1193    2864  ever_swasted     
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      250    2864  ever_swasted     
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      337    2864  ever_swasted     
0-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       57    2864  ever_swasted     
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      812    2864  ever_swasted     
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      215    2864  ever_swasted     
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      174     281  ever_swasted     
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     281  ever_swasted     
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       47     281  ever_swasted     
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     281  ever_swasted     
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       57     281  ever_swasted     
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        2     281  ever_swasted     
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1665    3179  ever_swasted     
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3179  ever_swasted     
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3179  ever_swasted     
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3179  ever_swasted     
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3179  ever_swasted     
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3179  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      339     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1      105     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0      104     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       37     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       66     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       35     686  ever_swasted     
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    11144   16898  ever_swasted     
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1      986   16898  ever_swasted     
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1628   16898  ever_swasted     
0-24 months   ki1119695-PROBIT           BELARUS                        <20                   1      117   16898  ever_swasted     
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2817   16898  ever_swasted     
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1      206   16898  ever_swasted     
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8480   13908  ever_swasted     
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      871   13908  ever_swasted     
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2018   13908  ever_swasted     
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      200   13908  ever_swasted     
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2131   13908  ever_swasted     
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      208   13908  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      608    1341  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1       47    1341  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0      180    1341  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1       16    1341  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      456    1341  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1       34    1341  ever_swasted     
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     3245    5305  ever_swasted     
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      352    5305  ever_swasted     
0-24 months   ki1135781-COHORTS          INDIA                          <20                   0      384    5305  ever_swasted     
0-24 months   ki1135781-COHORTS          INDIA                          <20                   1       42    5305  ever_swasted     
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  0     1129    5305  ever_swasted     
0-24 months   ki1135781-COHORTS          INDIA                          >=30                  1      153    5305  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1596    3045  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      224    3045  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      326    3045  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1       51    3045  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      741    3045  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1      107    3045  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      362     670  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        2     670  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      104     670  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     670  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      196     670  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     670  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0    11861   26945  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      729   26945  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0    11311   26945  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      740   26945  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2129   26945  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      175   26945  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      169     263  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1       11     263  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   0       34     263  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                   1        3     263  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       44     263  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        2     263  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      138     233  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        1     233  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   0       42     233  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                   1        1     233  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  0       50     233  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                  1        1     233  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               0      177     249  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)               1       17     249  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   0       31     249  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                   1        3     249  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  0       20     249  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                  1        1     249  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               0      182     240  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)               1        7     240  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   0        5     240  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                   1        0     240  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     240  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     240  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               0      152     302  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)               1        1     302  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   0       82     302  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           <20                   1        0     302  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  0       67     302  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                  1        0     302  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      158     312  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        1     312  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       45     312  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        3     312  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0      103     312  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        2     312  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      139     261  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        0     261  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       15     261  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     261  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     261  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        3     261  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      238     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       54     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       29     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        5     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       34     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        8     368  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          [20-30)               0      238     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          [20-30)               1      106     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          <20                   0       28     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          <20                   1        9     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          >=30                  0       18     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          >=30                  1       11     410  ever_swasted     
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               0      153     377  ever_swasted     
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)               1        9     377  ever_swasted     
0-6 months    ki1000109-EE               PAKISTAN                       <20                   0        1     377  ever_swasted     
0-6 months    ki1000109-EE               PAKISTAN                       <20                   1        0     377  ever_swasted     
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  0      187     377  ever_swasted     
0-6 months    ki1000109-EE               PAKISTAN                       >=30                  1       27     377  ever_swasted     
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0     1071    1505  ever_swasted     
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1       75    1505  ever_swasted     
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   0      182    1505  ever_swasted     
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                   1        9    1505  ever_swasted     
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      152    1505  ever_swasted     
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       16    1505  ever_swasted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      280     418  ever_swasted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       10     418  ever_swasted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       36     418  ever_swasted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        0     418  ever_swasted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       82     418  ever_swasted     
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       10     418  ever_swasted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      379     620  ever_swasted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       37     620  ever_swasted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   0       66     620  ever_swasted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                   1        6     620  ever_swasted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      119     620  ever_swasted     
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       13     620  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      472     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1       21     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   0       83     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                   1        2     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      116     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                  1        6     700  ever_swasted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      465     758  ever_swasted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       29     758  ever_swasted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      125     758  ever_swasted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1       11     758  ever_swasted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      118     758  ever_swasted     
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1       10     758  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1518    2376  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       53    2376  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      159    2376  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        8    2376  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      621    2376  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       17    2376  ever_swasted     
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               0     1068    2444  ever_swasted     
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)               1      106    2444  ever_swasted     
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   0      328    2444  ever_swasted     
0-6 months    ki1101329-Keneba           GAMBIA                         <20                   1       30    2444  ever_swasted     
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  0      817    2444  ever_swasted     
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                  1       95    2444  ever_swasted     
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      164     264  ever_swasted     
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        0     264  ever_swasted     
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       46     264  ever_swasted     
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     264  ever_swasted     
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       53     264  ever_swasted     
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     264  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      395     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       49     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   0      124     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                   1       17     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  0       88     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                  1       13     686  ever_swasted     
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               0    11167   16895  ever_swasted     
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)               1      962   16895  ever_swasted     
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   0     1627   16895  ever_swasted     
0-6 months    ki1119695-PROBIT           BELARUS                        <20                   1      117   16895  ever_swasted     
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  0     2816   16895  ever_swasted     
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                  1      206   16895  ever_swasted     
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     8653   13815  ever_swasted     
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      644   13815  ever_swasted     
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     2040   13815  ever_swasted     
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1      158   13815  ever_swasted     
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     2175   13815  ever_swasted     
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1      145   13815  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               0      493    1063  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)               1       31    1063  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   0      126    1063  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                   1       11    1063  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  0      377    1063  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                  1       25    1063  ever_swasted     
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               0     3223    5102  ever_swasted     
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)               1      239    5102  ever_swasted     
0-6 months    ki1135781-COHORTS          INDIA                          <20                   0      370    5102  ever_swasted     
0-6 months    ki1135781-COHORTS          INDIA                          <20                   1       30    5102  ever_swasted     
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  0     1145    5102  ever_swasted     
0-6 months    ki1135781-COHORTS          INDIA                          >=30                  1       95    5102  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1690    3044  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      129    3044  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   0      349    3044  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                   1       28    3044  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  0      794    3044  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                  1       54    3044  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               0      116     220  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)               1        0     220  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   0       39     220  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                   1        0     220  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  0       65     220  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                  1        0     220  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0    12046   26848  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      507   26848  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   0    11527   26848  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      469   26848  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     2164   26848  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1      135   26848  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               0      161     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)               1        2     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   0       33     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                   1        2     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  0       41     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                  1        1     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               0      124     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)               1        0     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   0       35     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                   1        1     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  0       47     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                  1        0     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               0      172     233  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)               1        6     233  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   0       34     233  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                   1        0     233  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  0       21     233  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                  1        0     233  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               0      182     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)               1        2     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   0        5     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                   1        0     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  0       46     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                  1        0     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               0      132     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)               1        2     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   0       74     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           <20                   1        1     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  0       61     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                  1        0     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               0      115     259  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)               1        7     259  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   0       41     259  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                   1        1     259  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  0       93     259  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                  1        2     259  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               0      124     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)               1        4     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   0       13     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                   1        1     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                  1        0     245  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               0      272     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)               1       24     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   0       32     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                   1        2     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  0       39     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                  1        4     373  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          [20-30)               0      323     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          [20-30)               1       21     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          <20                   0       35     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          <20                   1        2     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          >=30                  0       26     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          >=30                  1        3     410  ever_swasted     
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               0      139     371  ever_swasted     
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)               1       21     371  ever_swasted     
6-24 months   ki1000109-EE               PAKISTAN                       <20                   0        1     371  ever_swasted     
6-24 months   ki1000109-EE               PAKISTAN                       <20                   1        0     371  ever_swasted     
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  0      181     371  ever_swasted     
6-24 months   ki1000109-EE               PAKISTAN                       >=30                  1       29     371  ever_swasted     
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               0      951    1389  ever_swasted     
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)               1      106    1389  ever_swasted     
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   0      172    1389  ever_swasted     
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                   1       10    1389  ever_swasted     
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  0      132    1389  ever_swasted     
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                  1       18    1389  ever_swasted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               0      246     402  ever_swasted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)               1       33     402  ever_swasted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   0       33     402  ever_swasted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                   1        3     402  ever_swasted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  0       72     402  ever_swasted     
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                  1       15     402  ever_swasted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               0      325     540  ever_swasted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)               1       35     540  ever_swasted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   0       60     540  ever_swasted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                   1        1     540  ever_swasted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  0      107     540  ever_swasted     
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                  1       12     540  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               0      427     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)               1        8     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   0       68     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                   1        0     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  0      107     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                  1        5     615  ever_swasted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               0      463     730  ever_swasted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)               1       11     730  ever_swasted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   0      129     730  ever_swasted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                   1        4     730  ever_swasted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  0      118     730  ever_swasted     
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                  1        5     730  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1259    2003  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       48    2003  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      135    2003  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        6    2003  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      526    2003  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       29    2003  ever_swasted     
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               0     1188    2689  ever_swasted     
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)               1      151    2689  ever_swasted     
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   0      333    2689  ever_swasted     
6-24 months   ki1101329-Keneba           GAMBIA                         <20                   1       31    2689  ever_swasted     
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  0      851    2689  ever_swasted     
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                  1      135    2689  ever_swasted     
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               0      165     265  ever_swasted     
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)               1        1     265  ever_swasted     
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   0       42     265  ever_swasted     
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                   1        0     265  ever_swasted     
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  0       56     265  ever_swasted     
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                  1        1     265  ever_swasted     
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1665    3179  ever_swasted     
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3179  ever_swasted     
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3179  ever_swasted     
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3179  ever_swasted     
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3179  ever_swasted     
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3179  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               0      316     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)               1       66     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   0       96     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                   1       23     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  0       66     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                  1       23     590  ever_swasted     
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               0    11868   16598  ever_swasted     
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)               1       26   16598  ever_swasted     
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   0     1715   16598  ever_swasted     
6-24 months   ki1119695-PROBIT           BELARUS                        <20                   1        0   16598  ever_swasted     
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  0     2989   16598  ever_swasted     
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                  1        0   16598  ever_swasted     
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               0     6948   10789  ever_swasted     
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)               1      246   10789  ever_swasted     
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   0     1661   10789  ever_swasted     
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                   1       42   10789  ever_swasted     
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  0     1825   10789  ever_swasted     
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                  1       67   10789  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               0      575    1213  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)               1       16    1213  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   0      167    1213  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                   1        5    1213  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  0      441    1213  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                  1        9    1213  ever_swasted     
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               0     3250    4957  ever_swasted     
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)               1      115    4957  ever_swasted     
6-24 months   ki1135781-COHORTS          INDIA                          <20                   0      363    4957  ever_swasted     
6-24 months   ki1135781-COHORTS          INDIA                          <20                   1       14    4957  ever_swasted     
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  0     1155    4957  ever_swasted     
6-24 months   ki1135781-COHORTS          INDIA                          >=30                  1       60    4957  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               0     1567    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)               1      106    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   0      322    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                   1       24    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  0      732    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                  1       58    2809  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               0      355     659  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)               1        2     659  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   0      102     659  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                   1        4     659  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  0      194     659  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                  1        2     659  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               0     7627   17292  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)               1      230   17292  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   0     7904   17292  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                   1      279   17292  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  0     1209   17292  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                  1       43   17292  ever_swasted     


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/4715543d-45ab-4164-b6ba-93ba04e1d46b/71fd3792-af0a-45ac-b0dc-21138b58a194/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4715543d-45ab-4164-b6ba-93ba04e1d46b/71fd3792-af0a-45ac-b0dc-21138b58a194/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4715543d-45ab-4164-b6ba-93ba04e1d46b/71fd3792-af0a-45ac-b0dc-21138b58a194/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4715543d-45ab-4164-b6ba-93ba04e1d46b/71fd3792-af0a-45ac-b0dc-21138b58a194/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1501736   0.1203626   0.1799846
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0989583   0.0565327   0.1413840
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1834320   0.1575713   0.2092926
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1630695   0.1275833   0.1985558
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.0958904   0.0282924   0.1634885
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1818182   0.1159684   0.2476679
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0789474   0.0551526   0.1027422
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1029412   0.0518354   0.1540470
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1015625   0.0491976   0.1539274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0630172   0.0509988   0.0750356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0778443   0.0372003   0.1184883
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0705329   0.0506609   0.0904049
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1732502   0.1537196   0.1927807
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1446701   0.1099299   0.1794102
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2093476   0.1844610   0.2342342
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0447504   0.0314082   0.0580927
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0521092   0.0351837   0.0690347
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0493708   0.0237742   0.0749674
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2364865   0.1969330   0.2760400
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2624113   0.1897416   0.3350811
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3465347   0.2536618   0.4394075
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0812861   0.0470038   0.1155683
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0670487   0.0367330   0.0973644
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0681442   0.0381010   0.0981874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0931451   0.0872542   0.0990360
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0901713   0.0782508   0.1020919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0889269   0.0773912   0.1004625
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0717557   0.0519838   0.0915276
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0816327   0.0432865   0.1199788
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0693878   0.0468797   0.0918958
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0978593   0.0881485   0.1075702
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0985916   0.0702799   0.1269032
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1193448   0.1015968   0.1370928
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1230769   0.1079812   0.1381726
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1352785   0.1007481   0.1698089
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1261792   0.1038267   0.1485318
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0579031   0.0532994   0.0625068
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0614057   0.0564340   0.0663773
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0759549   0.0636888   0.0882210
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0587045   0.0379615   0.0794474
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0808824   0.0350283   0.1267364
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0781250   0.0316027   0.1246473
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0337365   0.0248065   0.0426664
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0479042   0.0155069   0.0803015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0266458   0.0141467   0.0391449
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0902896   0.0738923   0.1066869
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0837989   0.0550904   0.1125073
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1041667   0.0843369   0.1239964
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1103604   0.0811937   0.1395270
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1205674   0.0667811   0.1743537
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1287129   0.0633553   0.1940704
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0793140   0.0448358   0.1137922
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0670872   0.0367435   0.0974308
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0681668   0.0381140   0.0982196
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0692697   0.0641082   0.0744312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0718835   0.0610850   0.0826821
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0625000   0.0526498   0.0723502
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0591603   0.0389506   0.0793700
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0802920   0.0347666   0.1258173
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0621891   0.0385705   0.0858077
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0690352   0.0605897   0.0774808
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.0750000   0.0491856   0.1008144
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.0766129   0.0618074   0.0914184
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0709181   0.0591201   0.0827161
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0742706   0.0477978   0.1007433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0636792   0.0472419   0.0801166
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0403888   0.0363457   0.0444318
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0390964   0.0350218   0.0431709
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0587212   0.0474628   0.0699795
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1002838   0.0729565   0.1276111
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0549451   0.0237017   0.0861884
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1200000   0.0981748   0.1418252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0367253   0.0265259   0.0469248
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0425532   0.0092282   0.0758782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0522523   0.0337336   0.0707709
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1127707   0.0958252   0.1297162
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0851648   0.0564848   0.1138449
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1369168   0.1154561   0.1583776
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0447504   0.0314082   0.0580927
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0521092   0.0351837   0.0690347
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0493708   0.0237742   0.0749674
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1727749   0.1348314   0.2107183
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1932773   0.1222712   0.2642834
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2584270   0.1674006   0.3494534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0341952   0.0299955   0.0383948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0246624   0.0172960   0.0320288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0354123   0.0270840   0.0437405
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0270728   0.0139828   0.0401628
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0290698   0.0039522   0.0541873
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0200000   0.0070596   0.0329404
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0341753   0.0280362   0.0403144
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0371353   0.0180457   0.0562249
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0493827   0.0371986   0.0615668
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0633592   0.0516839   0.0750346
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0693642   0.0425882   0.0961401
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0734177   0.0552268   0.0916086
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0292733   0.0253244   0.0332221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0340951   0.0297648   0.0384254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0343450   0.0242725   0.0444176


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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.6589596   0.4727980   0.9184211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2214660   1.1225187   1.3291352
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5880339   0.2811841   1.2297419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1149733   0.7307436   1.7012334
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3039216   0.7294904   2.3306837
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2864583   0.7079846   2.3375861
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2352870   0.7085337   2.1536507
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1192647   0.7964829   1.5728569
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8350355   0.6404662   1.0887137
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2083544   1.0257568   1.4234567
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1644397   0.7653943   1.7715313
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1032467   0.6206064   1.9612322
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1096251   0.8029225   1.5334830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4653465   1.0684184   2.0097374
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8248487   0.6646395   1.0236759
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8383260   0.7031609   0.9994733
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9680736   0.8361094   1.1208657
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9547134   0.8264129   1.1029325
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.1376465   0.6599236   1.9611962
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9669996   0.6318067   1.4800226
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0074824   0.7435134   1.3651682
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.2195544   1.0199006   1.4582920
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0991379   0.8280625   1.4589530
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0252064   0.8264866   1.2717062
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0604906   0.9554385   1.1770935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3117582   1.0978159   1.5673935
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.3777890   0.7064220   2.6872076
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.3308190   0.6658890   2.6597212
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.4199525   0.6868599   2.9354825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7898208   0.4609054   1.3534597
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9281122   0.6298019   1.3677191
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.1536950   0.8868066   1.5009046
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0924881   0.6504699   1.8348738
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1662962   0.6579640   2.0673576
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8458421   0.6779749   1.0552734
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8594541   0.7202480   1.0255653
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0377348   0.8775271   1.2271911
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9022710   0.7579252   1.0741072
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.3571933   0.7000980   2.6310228
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0511956   0.6307222   1.7519792
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0864017   0.7539600   1.5654260
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1097652   0.8828764   1.3949616
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0472724   0.7066926   1.5519896
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.8979267   0.6604990   1.2207018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9680013   0.8455252   1.1082184
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.4538994   1.1776440   1.7949597
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.5478955   0.3215736   0.9335016
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1966038   0.9300886   1.5394884
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1586879   0.5047784   2.6596972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4227853   0.9069712   2.2319541
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.7552034   0.5222904   1.0919828
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.2141168   0.9771462   1.5085559
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1644397   0.7653943   1.7715313
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1032467   0.6206064   1.9612322
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1186656   0.7291479   1.7162674
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4957440   0.9876140   2.2653081
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7212237   0.5221713   0.9961550
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0355927   0.7942612   1.3502515
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.0737645   0.3989341   2.8901274
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.7387500   0.3293871   1.6568700
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.0866105   0.6303528   1.8731137
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.4449812   1.0649221   1.9606794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0947759   0.7137680   1.6791650
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1587533   0.8509184   1.5779530
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1647174   0.9737682   1.3931104
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1732567   0.8481928   1.6228991


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0033512   -0.0254025    0.0187001
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0015598   -0.0215967    0.0184770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0027843   -0.0072140    0.0016453
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0039056   -0.0238720    0.0160609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0081239   -0.0070938    0.0233415
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0030603   -0.0042369    0.0103574
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0090124   -0.0050250    0.0230498
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0024342   -0.0074188    0.0122872
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0215310   -0.0032266    0.0462886
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0038213   -0.0070326   -0.0006100
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0011837   -0.0045159    0.0021486
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0005784   -0.0136133    0.0147700
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0052509   -0.0005283    0.0110302
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0023746   -0.0073170    0.0120663
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0031101   -0.0000699    0.0062900
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0028663   -0.0226565    0.0169239
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0008225   -0.0203468    0.0187019
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0010002   -0.0036966    0.0056969
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0013803   -0.0145456    0.0173061
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0072586   -0.0062358    0.0207530
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009082   -0.0059724    0.0041560
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0042276   -0.0078197    0.0162748
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0048000   -0.0131150    0.0227150
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0032560   -0.0065189    0.0000068
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0007210   -0.0036433    0.0022013
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0038689   -0.0109427    0.0186804
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0023093   -0.0026326    0.0072513
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0016014   -0.0089687    0.0057659
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0009924   -0.0017718    0.0037565
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0038115   -0.0098898    0.0022667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0047125   -0.0019571    0.0113821
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0051170   -0.0071218    0.0173558
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0024342   -0.0074188    0.0122872
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0170556   -0.0069955    0.0411068
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012913   -0.0036253    0.0010428
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0023407   -0.0113312    0.0066498
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0039526    0.0000865    0.0078186
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0035685   -0.0041369    0.0112739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0026490   -0.0003145    0.0056126


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0135870   -0.1070401    0.0719771
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0045681   -0.0649954    0.0524305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0188909   -0.0491895    0.0105327
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0245379   -0.1579328    0.0934897
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0933014   -0.0981199    0.2513547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0463132   -0.0705524    0.1504212
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0494473   -0.0307168    0.1233767
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0515892   -0.1783814    0.2366792
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0834479   -0.0174720    0.1743578
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0493292   -0.0846984   -0.0151134
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0128712   -0.0497577    0.0227191
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0079956   -0.2089401    0.1860037
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0509255   -0.0066908    0.1052443
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0189287   -0.0614325    0.0932058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0509739   -0.0025461    0.1016367
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0157432   -0.1304383    0.0873149
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0026763   -0.0682637    0.0588843
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0150524   -0.0603904    0.0851277
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0152816   -0.1777722    0.1766911
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.1100405   -0.1176092    0.2913194
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0276649   -0.1939816    0.1154846
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0447281   -0.0915192    0.1639686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0416809   -0.1270107    0.1851227
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0428099   -0.0795284   -0.0073403
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0105178   -0.0540561    0.0312223
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0613820   -0.2051629    0.2689754
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0323687   -0.0393716    0.0991573
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0231026   -0.1350646    0.0778154
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0239809   -0.0451590    0.0885471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0395092   -0.0993964    0.0171158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1137250   -0.0607877    0.2595282
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0434054   -0.0661746    0.1417230
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0515892   -0.1783814    0.2366792
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0898467   -0.0455084    0.2076782
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0392440   -0.1125433    0.0292261
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0946418   -0.5237626    0.2136303
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.1036660   -0.0026060    0.1986736
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0533187   -0.0688745    0.1615428
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0829833   -0.0143108    0.1709448
