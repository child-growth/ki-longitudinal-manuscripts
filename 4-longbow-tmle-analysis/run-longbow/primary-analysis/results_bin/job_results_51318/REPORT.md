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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* delta_W_mage
* delta_meducyrs
* delta_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        4    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        5    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       33    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       51    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        7    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       22    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       12     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     23
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       12    175
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       17    175
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       44    175
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       49    175
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       14    175
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       39    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       14     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       45     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       22     93
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       23     34
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        2     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        9     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       46     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        4     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       13     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        5     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       19     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9     45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      151    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      124    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      187    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      104    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      120    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       58    744
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       36    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      119    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        7    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       63    231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        4    231
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       32    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       39    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      128    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      136    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       42    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       44    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       16    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       31    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       72    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      105    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       36    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       42    302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       17    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       34    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       72    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      117    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       27    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       43    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      160    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      285    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       45    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       55    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       57    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      103    705
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      507   1350
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      617   1350
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       33   1350
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       18   1350
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       78   1350
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       97   1350
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0       10     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       10     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        7     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     32
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      648    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       30    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       69    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    781
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      466   3957
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3345   3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        4   3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       32   3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0       18   3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1       92   3957
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      854   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1253   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       71   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      106   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      151   2671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      236   2671
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       25    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       25    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      144    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      112    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       37    373
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       30    373
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      143    700
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1       66    700
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      240    700
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1       69    700
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      138    700
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1       44    700
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      108   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      213   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      380   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      553   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      176   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      259   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0       40     78
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        9     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0        8     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        1     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       17     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        3     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      594   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      514   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     2670   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1861   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     1089   7542
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      814   7542
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        4     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0        9     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       29     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        1     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       15     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       10     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     14
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6     80
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       11     80
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       15     80
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       20     80
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0        4     80
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       24     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0        4     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       20     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       12     43
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9     11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        3     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       16     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        5     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        6     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        4     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0       57    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       75    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0       54    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       57    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       35    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       28    306
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       11     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        0     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       42     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        0     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       22     75
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        0     75
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       10    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       29    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0       42    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       97    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       33    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0        6    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       27    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       21    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       81    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0        8    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       36    179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0        2    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       32    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       12    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      107    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0        6    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       38    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       61    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      154    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       14    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       34    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       24    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       49    336
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0      110    371
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      201    371
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       13    371
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1        7    371
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0       10    371
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       30    371
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        0      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        0      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        2      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        3      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        2      7
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        0      7
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  0      365   3815
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3311   3815
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   0        2   3815
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   1       32   3815
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              0       15   3815
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              1       90   3815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      204   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1198   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       17   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      105   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0       40   1792
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      228   1792
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0        8    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       25    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   0       37    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      106    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0        8    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       28    212
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  0       87    471
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  1       66    471
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   0      120    471
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   1       69    471
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              0       85    471
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              1       44    471
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0       42    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      121    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0       98    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      289    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0       58    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      144    752
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      231   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      514   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0      899   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1861   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0      399   4718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      814   4718
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       22     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        6     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1        7     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       29     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       29     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       10     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       15     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       25     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       10     50
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       30     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       13     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5     33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0       94    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       49    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      133    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       47    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       85    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       30    438
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       25    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       77    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1        7    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       41    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        4    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       22    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       10    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0       86    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       39    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       30    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       11    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       51    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       28    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1        6    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       15    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1        2    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       60    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1       10    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       21    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1        5    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       99    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      131    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       31    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       21    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       33    369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       54    369
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      397    979
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      416    979
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       20    979
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       11    979
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       68    979
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       67    979
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        8     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        7     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        5     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     25
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      648    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       30    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       69    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    781
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      101    142
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1       34    142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        2    142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        0    142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0        3    142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        2    142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      650    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1       55    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       54    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1        1    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      111    879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1        8    879
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       17    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1        0    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      107    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1        6    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       29    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1        2    161
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0       56    229
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1        0    229
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      120    229
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1        0    229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0       53    229
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1        0    229
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0       66    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1       92    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      282    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      264    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      118    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      115    937
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0       38     74
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        9     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0        8     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        1     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       15     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        3     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      363   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1        0   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     1771   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1        0   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0      690   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1        0   2824


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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




# Results Detail

## Results Plots
![](/tmp/b0b148bf-b381-44bd-8c6a-abb352825295/fc8fe764-f48c-4997-a202-8f46f0ee2c64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0b148bf-b381-44bd-8c6a-abb352825295/fc8fe764-f48c-4997-a202-8f46f0ee2c64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0b148bf-b381-44bd-8c6a-abb352825295/fc8fe764-f48c-4997-a202-8f46f0ee2c64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0b148bf-b381-44bd-8c6a-abb352825295/fc8fe764-f48c-4997-a202-8f46f0ee2c64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.6085250   0.3776316   0.8394184
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5306609   0.4218835   0.6394383
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.6956413   0.5554237   0.8358588
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4518409   0.3886135   0.5150682
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3598877   0.3031526   0.4166228
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3217291   0.2490657   0.3943925
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5615987   0.4291957   0.6940017
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5161669   0.4524907   0.5798431
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5185295   0.4079958   0.6290631
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.6580510   0.5107350   0.8053669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5884617   0.5119581   0.6649652
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.5443908   0.4369751   0.6518065
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6761494   0.5408286   0.8114702
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.6203057   0.5518959   0.6887154
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.6215244   0.5019100   0.7411389
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6411387   0.5936946   0.6885828
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5460831   0.4478742   0.6442919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6479850   0.5667424   0.7292276
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5489114   0.5174266   0.5803962
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3634548   0.2163118   0.5105979
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.5564286   0.4738182   0.6390390
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5946705   0.5736004   0.6157407
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6015674   0.5278153   0.6753196
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6112506   0.5638846   0.6586166
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5150334   0.3810860   0.6489809
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4396456   0.3763449   0.5029462
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4152060   0.2864001   0.5440119
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3172225   0.2537030   0.3807421
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2248287   0.1782853   0.2713720
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2469004   0.1794190   0.3143819
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6641710   0.6078742   0.7204677
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.5927382   0.5604290   0.6250475
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5953257   0.5447938   0.6458576
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4628089   0.4329749   0.4926430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4106357   0.3963206   0.4249508
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4275200   0.4053516   0.4496884
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5674089   0.4820303   0.6527875
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5130576   0.4198518   0.6062634
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4443791   0.3197676   0.5689905
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7252833   0.5818878   0.8686788
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6943025   0.6175398   0.7710651
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7111230   0.5751008   0.8471453
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8181818   0.6839633   0.9524003
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7941176   0.7155043   0.8727310
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8181818   0.7131862   0.9231774
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7170207   0.6557170   0.7783244
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6662794   0.5336045   0.7989542
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6563871   0.5447136   0.7680606
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.6463023   0.5929102   0.6996943
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3500000   0.2035859   0.4964141
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.7500000   0.6059063   0.8940937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8544976   0.8360869   0.8729083
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8605249   0.7989505   0.9220993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8489836   0.8065830   0.8913843
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4254011   0.3453259   0.5054762
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3653535   0.2966024   0.4341045
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3480591   0.2655422   0.4305759
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7441334   0.6782966   0.8099702
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7461928   0.7023824   0.7900032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7133039   0.6493899   0.7772179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6923158   0.6591777   0.7254538
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.6735126   0.6560030   0.6910223
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.6711751   0.6446220   0.6977282
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.6000000   0.3701212   0.8298788
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3359687   0.2548349   0.4171025
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2611391   0.1966022   0.3256760
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2549506   0.1714908   0.3384104
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3112194   0.1225383   0.4999004
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3117230   0.2306044   0.3928417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2521282   0.1147621   0.3894943
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5655939   0.4994968   0.6316911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4134657   0.2647481   0.5621833
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6380189   0.5307411   0.7452966
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5116685   0.4751529   0.5481841
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4215987   0.2151338   0.6280636
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.5091577   0.4173745   0.6009409
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5855220   0.5015884   0.6694556
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4839908   0.4399728   0.5280088
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.4960491   0.4280469   0.5640513


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6000000   0.5192868   0.6807132
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5894040   0.5323948   0.6464131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6258065   0.5718723   0.6797406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905159   0.6662217
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5422222   0.5133413   0.5711031
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5971546   0.5785503   0.6157590
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4477212   0.3954919   0.4999504
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2557143   0.2227697   0.2886589
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4228321   0.4116868   0.4339775
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8044693   0.7471161   0.8618224
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6415094   0.5927496   0.6902692
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8543527   0.8380828   0.8706225
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7500000   0.6917133   0.8082867
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3800425   0.3361595   0.4239255
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6759220   0.6625668   0.6892772
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5582656   0.5057575   0.6107737
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5045965   0.4711801   0.5380129
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8720445   0.5661883   1.3431248
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.1431596   0.7442541   1.7558707
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7964922   0.6450974   0.9834170
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7120408   0.5459166   0.9287172
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9191027   0.7042412   1.1995177
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9233095   0.6716491   1.2692647
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8942493   0.6898744   1.1591702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8272776   0.6136410   1.1152908
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          0.9174092   0.7296852   1.1534283
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          0.9192116   0.6961955   1.2136677
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8517393   0.7012273   1.0345574
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0106783   0.8736155   1.1692450
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6621375   0.4399270   0.9965883
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0136947   0.8644979   1.1886402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0115979   0.8903822   1.1493157
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0278812   0.9438905   1.1193456
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8536253   0.6347263   1.1480163
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8061730   0.5381852   1.2076047
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7087412   0.5314598   0.9451592
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7783193   0.5544814   1.0925182
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8924483   0.8068582   0.9871175
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8963441   0.7949921   1.0106173
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.8872683   0.8245723   0.9547314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9237506   0.8504084   1.0034181
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9042113   0.7144258   1.1444129
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7831725   0.5704652   1.0751911
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9572845   0.7630631   1.2009409
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9804762   0.7447658   1.2907865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9705882   0.8013534   1.1755631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8119831   1.2315527
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9292331   0.7481529   1.1541414
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9154368   0.7567102   1.1074577
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.5415423   0.3535521   0.8294904
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1604478   0.9414564   1.4303784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0070537   0.9345363   1.0851981
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9935471   0.9409388   1.0490968
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8588447   0.6581184   1.1207926
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8181904   0.6045363   1.1073538
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0027675   0.9016859   1.1151807
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9585699   0.8451456   1.0872166
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9728403   0.9212683   1.0272991
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9694638   0.9110886   1.0315793
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2000000   0.5065261   2.8428939
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7772721   0.5504087   1.0976424
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7588523   0.5052052   1.1398472
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0016184   0.5171752   1.9398446
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8101302   0.3582076   1.8322080
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.7310293   0.5004379   1.0678724
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1280511   0.9194162   1.3840296
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.8239684   0.5022952   1.3516434
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9950929   0.8195216   1.2082779
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8265971   0.6975250   0.9795531
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8471912   0.6947370   1.0331002


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0085250   -0.2128108    0.1957607
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0674323   -0.1165369   -0.0183276
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0414087   -0.1611193    0.0783019
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0686470   -0.2046522    0.0673582
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0503430   -0.1740979    0.0734120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0127699   -0.0419430    0.0164031
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0066892   -0.0199518    0.0065734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0024841   -0.0070226    0.0119908
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0673122   -0.1922366    0.0576122
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0615082   -0.1137988   -0.0092177
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0573030   -0.1079205   -0.0066855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0399768   -0.0674251   -0.0125284
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0445331   -0.1090045    0.0199383
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0122788   -0.1434693    0.1189117
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0137125   -0.1347982    0.1073731
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0116635   -0.0490179    0.0256909
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0047928   -0.0259744    0.0163887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001449   -0.0087162    0.0084264
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0453586   -0.1105783    0.0198611
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0074313   -0.0662506    0.0513881
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0163938   -0.0468793    0.0140918
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0263158   -0.3268414    0.3794730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0482975   -0.1130084    0.0164134
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0081891   -0.1780302    0.1616521
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0073283   -0.0495512    0.0348945
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0070720   -0.0225243    0.0083803
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0828539   -0.1591659   -0.0065419


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0142084   -0.4184015    0.2748043
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1754182   -0.3103394   -0.0543893
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0796030   -0.3357542    0.1274273
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1164685   -0.3731744    0.0922479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0804449   -0.2975429    0.1003294
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0203223   -0.0678575    0.0250968
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0123366   -0.0371196    0.0118542
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0041599   -0.0118913    0.0199565
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1503441   -0.4674886    0.0982612
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2405351   -0.4633299   -0.0516611
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0944242   -0.1811753   -0.0140444
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0945453   -0.1614214   -0.0315200
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0851696   -0.2162084    0.0317506
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0172212   -0.2189356    0.1511127
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0170455   -0.1792690    0.1228621
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0165356   -0.0709389    0.0351040
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0074712   -0.0410345    0.0250101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001696   -0.0102526    0.0098128
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1193514   -0.3048090    0.0397463
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0100872   -0.0931856    0.0666945
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0242539   -0.0703725    0.0198775
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0500000   -0.9284701    0.5320125
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1678912   -0.4149488    0.0360289
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0270239   -0.7714239    0.4045592
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0131270   -0.0917160    0.0598047
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0140151   -0.0451401    0.0161830
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1648283   -0.3272529   -0.0222806
