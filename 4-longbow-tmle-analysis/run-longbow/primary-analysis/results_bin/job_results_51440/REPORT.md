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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      199     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     265
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      148     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5     639
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
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1697    2153
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1       90    2153
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66    2153
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11    2153
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      275    2153
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       14    2153
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1315    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      162    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       33    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       94    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1633
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0    13092   13720
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1      105   13720
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0      125   13720
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   13720
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      393   13720
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        5   13720
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6290    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      468    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       16    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1166    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       18    8065
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     2407   15636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1      105   15636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0     8527   15636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1      542   15636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     3807   15636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      248   15636
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      129     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        3     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2     237
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                0       58     283
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 0      165     283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            0       60     283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      198     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       30     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     263
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      134     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        4     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      338     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        7     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      150     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        3     636
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
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                0     1514    1845
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                1       36    1845
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 0       60    1845
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 1        7    1845
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            0      224    1845
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            1        4    1845
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                0    11588   13169
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                1     1084   13169
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                 0      114   13169
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                 1        6   13169
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm            0      345   13169
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm            1       32   13169
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0      437     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1       10     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0       38     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1        0     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0       78     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1        2     565
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      165     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       15     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0      406     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       22     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      230     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       15     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0        5      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0       24      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0       15      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1        0      46
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      199     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     265
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      148     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5     639
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
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1697    2153
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1       90    2153
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66    2153
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11    2153
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      275    2153
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       14    2153
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1315    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      162    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       33    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       94    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1633
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0    13092   13720
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1      105   13720
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0      125   13720
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   13720
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      393   13720
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        5   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6290    8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      468    8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       16    8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1166    8065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       18    8065
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     2407   15636
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1      105   15636
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0     8527   15636
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1      542   15636
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     3807   15636
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      248   15636


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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/05629109-e12d-4afe-99b6-d623c40c0ffc/6eb820dc-70d7-4d88-b16f-fcfd7a577ee8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05629109-e12d-4afe-99b6-d623c40c0ffc/6eb820dc-70d7-4d88-b16f-fcfd7a577ee8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05629109-e12d-4afe-99b6-d623c40c0ffc/6eb820dc-70d7-4d88-b16f-fcfd7a577ee8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05629109-e12d-4afe-99b6-d623c40c0ffc/6eb820dc-70d7-4d88-b16f-fcfd7a577ee8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0471123    0.0322679   0.0619567
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1222257    0.0748636   0.1695877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0899304    0.0555640   0.1242968
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1873789    0.0975411   0.2772166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1712531    0.1179774   0.2245289
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1674149    0.0956174   0.2392124
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050300   0.0674337
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0326797    0.0044851   0.0608744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0506962    0.0405591   0.0608334
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1488180    0.0705434   0.2270926
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0486168    0.0239935   0.0732402
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1095894    0.0822778   0.1369010
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2222126   -0.0587647   0.5031899
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1664781    0.0138566   0.3190997
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0167657    0.0136150   0.0199164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0335112    0.0175573   0.0494651
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0148260    0.0079197   0.0217323
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0879949    0.0627426   0.1132471
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0933233    0.0720896   0.1145571
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0748509    0.0502083   0.0994935
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0440152    0.0274581   0.0605722
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0543322    0.0425093   0.0661552
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0509091    0.0356569   0.0661614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0413628    0.0331931   0.0495325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0596768    0.0542040   0.0651495
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0611901    0.0526773   0.0697029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0242188    0.0157951   0.0326424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0194805    0.0040419   0.0349191
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0317460    0.0153788   0.0481133
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0855429    0.0577798   0.1133061
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0500000    0.0273577   0.0726423
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0848806    0.0513293   0.1184320
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0820390    0.0414634   0.1226145
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0511110    0.0300978   0.0721241
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0604855    0.0302996   0.0906714
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0471123    0.0322679   0.0619567
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1222257    0.0748636   0.1695877
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0899304    0.0555640   0.1242968
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1798392    0.0909459   0.2687326
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1671931    0.1137730   0.2206131
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1600915    0.0882358   0.2319472
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050300   0.0674337
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0326797    0.0044851   0.0608744
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0506923    0.0405497   0.0608349
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1363231    0.0564844   0.2161617
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0471918    0.0225037   0.0718800
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1096753    0.0823274   0.1370232
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2791001    0.0321350   0.5260651
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1761715    0.0194298   0.3329132
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0167275    0.0135812   0.0198738
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0332578    0.0175050   0.0490107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0150041    0.0080752   0.0219330
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0868043    0.0615030   0.1121056
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0922237    0.0709837   0.1134637
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0716570    0.0469301   0.0963839
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0437838    0.0273025   0.0602650
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0541970    0.0424154   0.0659786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0512502    0.0359403   0.0665601
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0410092    0.0328434   0.0491749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0596964    0.0542221   0.0651708
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0614505    0.0529393   0.0699617


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234742   0.0117259   0.0352225
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534138   0.0439136   0.0629141
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0174830   0.0146224   0.0203435
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572397   0.0531274   0.0613520
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251355   0.0183227   0.0319484
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852001   0.0575403   0.1128599
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234742   0.0117259   0.0352225
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534138   0.0439136   0.0629141
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0174830   0.0146224   0.0203435
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572397   0.0531274   0.0613520


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.5943485   1.7865213   3.7674580
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.9088525   1.3289744   2.7417517
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.9139405   0.5170901   1.6153610
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8934566   0.4707808   1.6956187
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165172   1.3496143
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9019608   0.2665520   3.0520616
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.9354836   1.6718773   5.1541246
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9589831   0.5563129   1.6531140
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0276837   0.5188927   7.9236063
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5191084   0.5770413   3.9991773
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.9987900   1.1980758   3.3346484
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8843044   0.5351755   1.4611922
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.8034108
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.8396905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0605546   0.7353327   1.5296150
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8506281   0.5494515   1.3168916
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2343985   0.7992840   1.9063807
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1566273   0.7150517   1.8708953
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4427639   1.1673348   1.7831796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4793495   1.1548409   1.8950446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8043569   0.3385130   1.9112712
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3108039   0.7037859   2.4413773
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.5845018   0.3669946   0.9309196
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9922578   0.7748678   1.2706367
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.6230084   0.3274358   1.1853910
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.7372778   0.3650634   1.4889976
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.5943485   1.7865213   3.7674580
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.9088525   1.3289744   2.7417517
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.9296806   0.5170804   1.6715118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8901922   0.4575697   1.7318502
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165172   1.3496143
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9019608   0.2665520   3.0520616
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.6892256   1.4480390   4.9942954
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9309468   0.5317666   1.6297788
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.5447859   0.9391366   6.8956264
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6063013   0.6258659   4.1226145
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.9882130   1.1943742   3.3096756
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8969720   0.5448191   1.4767449
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.8034108
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.8396905
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0624324   0.7325754   1.5408142
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8255003   0.5254896   1.2967920
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2378328   0.8014253   1.9118815
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1705287   0.7239141   1.8926793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4556843   1.1759510   1.8019600
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4984581   1.1687986   1.9210980


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0364199    0.0192127   0.0536272
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0140455   -0.0938280   0.0657369
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127577   -0.0390460   0.0135306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0027176   -0.0020135   0.0074487
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0073733   -0.0065075   0.0212541
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007172   -0.0008325   0.0022669
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327   0.0212497
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0017563   -0.0229325   0.0194198
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0072122   -0.0078084   0.0222327
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0158769    0.0081138   0.0236399
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601   0.0061936
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003428   -0.0012293   0.0005436
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0210776   -0.0559082   0.0137529
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0364199    0.0192127   0.0536272
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0065059   -0.0854403   0.0724284
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127577   -0.0390460   0.0135306
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0027215   -0.0020095   0.0074525
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0072874   -0.0066289   0.0212037
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007555   -0.0007923   0.0023032
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327   0.0212497
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0005658   -0.0217889   0.0206574
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0074435   -0.0075092   0.0223963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0162305    0.0084721   0.0239889


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4359988    0.2883859   0.5529918
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0810320   -0.6543148   0.2935866
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5434783   -2.1252205   0.2377097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0508782   -0.0413753   0.1349593
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0630395   -0.0630203   0.1741503
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0410240   -0.0515736   0.1254677
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844   0.3467457
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0203659   -0.2979840   0.1978741
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1407875   -0.2075648   0.3886489
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2773754    0.1303632   0.3995352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128   0.2249348
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0040239   -0.0144319   0.0062773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3457544   -1.0468233   0.1151874
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4359988    0.2883859   0.5529918
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0375341   -0.6089343   0.3309379
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5434783   -2.1252205   0.2377097
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0509517   -0.0413121   0.1350405
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0623052   -0.0641109   0.1737031
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0432110   -0.0492582   0.1275311
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844   0.3467457
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0065604   -0.2853451   0.2117573
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1453042   -0.2014532   0.3919822
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2835535    0.1365244   0.4055471
