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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       21     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        3     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      154     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        7     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       60     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        3     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      124     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                0       53     240
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                1        2     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 0      102     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 1       13     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       64     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      131     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        2     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                0       58     283
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 0      165     283
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            0       59     283
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            1        1     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      200     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     266
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                0      510    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                1       25    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 0      372    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 1       53    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            0      270    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            1       27    1257
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                0       60     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                1       14     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 0      161     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 1       33     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            0       89     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            1       18     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       88     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        9     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      287     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1       26     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0      112     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1       12     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      149     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0      135     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        3     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      401     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0      168     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        5     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21    2133
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1687    2154
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1      101    2154
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66    2154
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11    2154
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      274    2154
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       15    2154
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1323    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      164    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       34    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       95    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1645
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0    13092   13720
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1      105   13720
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0      125   13720
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   13720
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      393   13720
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        5   13720
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6377    8178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      474    8178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       14    8178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1187    8178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       19    8178
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                0      126    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                1        6    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 0      653    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 1       23    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            0      212    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            1        6    1026
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                0      439    1635
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                1       42    1635
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 0      654    1635
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 1       67    1635
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            0      401    1635
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            1       32    1635
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      557    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       26    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0     1345    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       77    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      765    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       41    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                0      435     716
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                1        5     716
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 0      114     716
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 1        0     716
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            0      161     716
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            1        1     716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     2426   15760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1      107   15760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0     8597   15760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1      540   15760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     3842   15760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      248   15760
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       22     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      157     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        4     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       62     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      125     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                0       49     239
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                1        6     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                 0      105     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                 1        9     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       66     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        4     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      128     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        5     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                0       58     283
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 0      165     283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            0       60     283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      200     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       30     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     265
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       18     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        3     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      104     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1        4     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0       36     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1        4     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      134     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      338     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        7     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      151     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        3     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0       54     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      142     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0       49     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        2     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1249    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       31    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      302    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        6    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      427    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       14    2029
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                0     1511    1853
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                1       46    1853
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 0       60    1853
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 1        7    1853
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            0      224    1853
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            1        5    1853
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                0    11588   13169
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                1     1084   13169
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                 0      114   13169
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                 1        6   13169
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm            0      345   13169
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm            1       32   13169
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0      451     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1       10     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0       38     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1        0     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0       83     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1        2     584
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      165     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       15     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0      406     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       22     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      230     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       15     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0        7      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0       25      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0       16      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1        0      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       21     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        3     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      154     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        7     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       60     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        3     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      124     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        2     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                0       53     240
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                1        2     240
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 0      102     240
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 1       13     240
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       64     240
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        6     240
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      131     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        2     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2     238
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                0       58     283
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     283
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 0      165     283
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     283
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            0       59     283
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            1        1     283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      200     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     266
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                0      510    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                1       25    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 0      372    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 1       53    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            0      270    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            1       27    1257
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                0       60     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                1       14     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 0      161     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 1       33     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            0       89     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            1       18     375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       88     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        9     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      287     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1       26     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0      112     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1       12     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      149     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0      135     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        3     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      401     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0      168     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        5     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316    2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29    2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319    2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7    2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441    2133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21    2133
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1687    2154
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1      101    2154
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66    2154
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11    2154
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      274    2154
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       15    2154
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1323    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      164    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       34    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       95    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1645
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0    13092   13720
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1      105   13720
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0      125   13720
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   13720
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      393   13720
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        5   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6377    8178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      474    8178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       14    8178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1187    8178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       19    8178
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                0      126    1026
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                1        6    1026
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 0      653    1026
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 1       23    1026
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            0      212    1026
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            1        6    1026
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                0      439    1635
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                1       42    1635
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 0      654    1635
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 1       67    1635
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            0      401    1635
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            1       32    1635
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      557    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       26    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0     1345    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       77    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      765    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       41    2811
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                0      435     716
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                1        5     716
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 0      114     716
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 1        0     716
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            0      161     716
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            1        1     716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     2426   15760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1      107   15760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0     8597   15760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1      540   15760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     3842   15760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      248   15760


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/9a0f2d7e-41f1-4d1f-bfbc-cef21d56d9f6/9e5121f5-e33a-4e12-849d-42a8e253c69f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a0f2d7e-41f1-4d1f-bfbc-cef21d56d9f6/9e5121f5-e33a-4e12-849d-42a8e253c69f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a0f2d7e-41f1-4d1f-bfbc-cef21d56d9f6/9e5121f5-e33a-4e12-849d-42a8e253c69f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a0f2d7e-41f1-4d1f-bfbc-cef21d56d9f6/9e5121f5-e33a-4e12-849d-42a8e253c69f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0471123    0.0322679   0.0619567
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1222257    0.0748636   0.1695877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0899304    0.0555640   0.1242968
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1868852    0.0965369   0.2772334
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1711367    0.1179451   0.2243283
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1645420    0.0931610   0.2359229
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050301   0.0674337
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0324675    0.0044529   0.0604822
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0567720    0.0460825   0.0674616
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1394003    0.0597392   0.2190614
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0551880    0.0291782   0.0811977
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1101923    0.0824904   0.1378941
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2176597   -0.0468427   0.4821622
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1545383    0.0141817   0.2948948
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0165248    0.0134174   0.0196322
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0288831    0.0139618   0.0438043
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0156064    0.0085731   0.0226398
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0874269    0.0621713   0.1126826
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0928767    0.0716924   0.1140610
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0746350    0.0498767   0.0993932
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0443793    0.0277320   0.0610266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0541434    0.0423632   0.0659235
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0510387    0.0358193   0.0662582
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0416248    0.0334420   0.0498077
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0590846    0.0535907   0.0645784
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0606991    0.0523202   0.0690780
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0242188    0.0157951   0.0326424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0194805    0.0040419   0.0349191
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0317460    0.0153788   0.0481133
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0295440    0.0211311   0.0379569
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1044776    0.0312158   0.1777394
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0218341    0.0029010   0.0407671
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0855429    0.0577798   0.1133061
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0500000    0.0273577   0.0726423
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0848806    0.0513293   0.1184320
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0836476    0.0432528   0.1240425
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0515024    0.0305517   0.0724531
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0624098    0.0319879   0.0928316
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0471123    0.0322679   0.0619567
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1222257    0.0748636   0.1695877
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0899304    0.0555640   0.1242968
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1995487    0.1102674   0.2888299
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1731026    0.1201686   0.2260366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1716153    0.1009631   0.2422674
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050301   0.0674337
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0324675    0.0044529   0.0604822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0568813    0.0461809   0.0675817
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1529110    0.0726329   0.2331891
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0511441    0.0256227   0.0766656
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1101774    0.0825393   0.1378155
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2275838   -0.0561942   0.5113618
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1635864    0.0132910   0.3138817
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0165307    0.0134223   0.0196391
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0294118    0.0144596   0.0443640
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0154386    0.0084294   0.0224477
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0878944    0.0626159   0.1131729
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0933142    0.0720697   0.1145586
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0747037    0.0500266   0.0993808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0441014    0.0274881   0.0607146
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0542895    0.0424833   0.0660956
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0507497    0.0355568   0.0659426
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0415293    0.0333745   0.0496841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0591738    0.0536794   0.0646682
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0606343    0.0522718   0.0689968


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0589601   0.0490104   0.0689098
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0171191   0.0143076   0.0199306
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567893   0.0526505   0.0609282
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251355   0.0183227   0.0319484
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0313006   0.0233701   0.0392311
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852001   0.0575403   0.1128599
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0589601   0.0490104   0.0689098
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0171191   0.0143076   0.0199306
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567893   0.0526505   0.0609282


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.5943485   1.7865213   3.7674580
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.9088525   1.3289744   2.7417517
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.9157319   0.5163135   1.6241391
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8804442   0.4606349   1.6828556
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165174   1.3496122
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8961039   0.2648038   3.0324416
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.4554410   1.3451445   4.4821879
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9720977   0.5852138   1.6147499
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9752726   0.5321733   7.3316374
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4024420   0.5392450   3.6474026
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7478618   1.0086829   3.0287226
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9444241   0.5795631   1.5389817
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.8034108
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.8396905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0623350   0.7351610   1.5351135
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8536841   0.5498333   1.3254500
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2200131   0.7907019   1.8824187
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1500564   0.7122329   1.8570187
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4194542   1.1507590   1.7508882
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4582421   1.1389014   1.8671238
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8043569   0.3385130   1.9112712
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3108039   0.7037859   2.4413773
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          3.5363400   1.6590731   7.5377634
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7390355   0.2966796   1.8409542
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.5845018   0.3669946   0.9309196
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9922578   0.7748678   1.2706367
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.6157064   0.3273788   1.1579687
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.7461033   0.3756018   1.4820753
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.5943485   1.7865213   3.7674580
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.9088525   1.3289744   2.7417517
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.8674705   0.5054872   1.4886730
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8600170   0.4695220   1.5752811
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165174   1.3496122
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8961039   0.2648038   3.0324416
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.6882480   1.5389822   4.6957509
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8991380   0.5275985   1.5323188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0656120   0.5363245   7.9555440
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4847541   0.5649062   3.9024084
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7792199   1.0347568   3.0592924
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9339316   0.5713867   1.5265112
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.8034108
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.8396905
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0616620   0.7355161   1.5324290
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8499258   0.5483917   1.3172588
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2310154   0.7967645   1.9019409
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1507510   0.7112125   1.8619299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4248699   1.1551071   1.7576328
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4600368   1.1407529   1.8686848


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0364199    0.0192127   0.0536272
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0135518   -0.0938302   0.0667265
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127944   -0.0390871   0.0134983
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0021881   -0.0026417   0.0070178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0071330   -0.0068491   0.0211151
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005943   -0.0009160   0.0021046
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327   0.0212497
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0011884   -0.0223623   0.0199855
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0068480   -0.0082488   0.0219448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0151645    0.0074254   0.0229036
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601   0.0061936
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0017566   -0.0020811   0.0055943
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003428   -0.0012293   0.0005436
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0226863   -0.0573599   0.0119872
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0364199    0.0192127   0.0536272
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0262154   -0.1056603   0.0532296
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127944   -0.0390871   0.0134983
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0020788   -0.0027540   0.0069116
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0071478   -0.0067618   0.0210574
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005884   -0.0009223   0.0020990
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327   0.0212497
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0016559   -0.0228512   0.0195395
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0071260   -0.0079467   0.0221987
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0152601    0.0075373   0.0229829


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4359988    0.2883859   0.5529918
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0781837   -0.6561495   0.2980827
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5458937   -2.1301295   0.2365212
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0371108   -0.0480790   0.1153762
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0607965   -0.0658120   0.1723652
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0347160   -0.0574765   0.1188711
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844   0.3467457
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0137805   -0.2915844   0.2042712
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1336783   -0.2163377   0.3829729
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2670308    0.1192801   0.3899946
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128   0.2249348
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0561203   -0.0739221   0.1704158
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0040239   -0.0144319   0.0062773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3721431   -1.0668625   0.0890654
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4359988    0.2883859   0.5529918
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1512424   -0.7145148   0.2269772
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5458937   -2.1301295   0.2365212
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0352574   -0.0499982   0.1135906
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0609231   -0.0649521   0.1719202
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0343694   -0.0578470   0.1185470
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844   0.3467457
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0192012   -0.2971377   0.1991821
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1391047   -0.2105959   0.3877885
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2687136    0.1213597   0.3913552
