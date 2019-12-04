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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       32    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       52    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        7    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       22    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       13     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     24
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       12    178
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       18    178
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       44    178
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       50    178
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       14    178
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       40    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        3     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        9     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       14     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       46     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       23     98
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4     35
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       24     35
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2     35
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        2     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0       10     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       47     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        4     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       13     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        6     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       21     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       10     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        6     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       11     51
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       16    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       32    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       73    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      104    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0       36    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       42    303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       17    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       33    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       72    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      117    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0       27    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       43    309
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      160    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      285    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       45    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       55    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       57    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      103    705
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      517   1635
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      842   1635
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       33   1635
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       29   1635
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       79   1635
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1      135   1635
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0       10     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       10     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        7     32
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     32
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      661    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       31    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       68    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    794
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      466   3957
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3345   3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        4   3957
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       32   3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0       18   3957
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1       92   3957
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      865   2698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1262   2698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       72   2698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      108   2698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      153   2698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      238   2698
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      593   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      514   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     2670   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1858   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     1089   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      814   7538
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        4     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0        9     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       30     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        1     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       15     61
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       11     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     15
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0        6     83
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       12     83
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       15     83
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       21     83
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0        5     83
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       24     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        2     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        5     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0        4     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       21     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        3     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       13     48
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1     11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9     11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        4     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       16     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        5     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        7     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5     14
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0        6    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       27    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       22    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       81    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0        8    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       36    180
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0        2    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       31    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0       12    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      107    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0        6    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       38    196
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       61    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      154    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       14    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       34    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       24    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       49    336
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0      122    658
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      426    658
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       13    658
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1       18    658
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0       11    658
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       68    658
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      200   1793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1202   1793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       17   1793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      106   1793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0       38   1793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      230   1793
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0      230   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      514   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0      899   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1858   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0      399   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      814   4714
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0       23     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       22     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0        6     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1        7     61
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
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0        9     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       16     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       25     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       10     50
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       15     24
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0        6     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       31     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        8     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       14     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        5     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        6     37
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1        5    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0       51    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       23    123
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
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0      395    977
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      416    977
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       20    977
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       11    977
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0       68    977
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1       67    977
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0        8     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        7     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0        5     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     25
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      661    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       31    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       68    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    794
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0      101    142
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1       34    142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0        2    142
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        0    142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0        3    142
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        2    142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0      665    905
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1       60    905
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0       55    905
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1        2    905
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0      115    905
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1        8    905
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9576d22b-c1c1-4a32-b83b-e93577a8c015/6423c58f-ec1f-4be5-b76a-eda1245bfd3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9576d22b-c1c1-4a32-b83b-e93577a8c015/6423c58f-ec1f-4be5-b76a-eda1245bfd3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9576d22b-c1c1-4a32-b83b-e93577a8c015/6423c58f-ec1f-4be5-b76a-eda1245bfd3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9576d22b-c1c1-4a32-b83b-e93577a8c015/6423c58f-ec1f-4be5-b76a-eda1245bfd3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.6333574   0.4153092   0.8514055
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5306218   0.4237830   0.6374607
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.7104210   0.5751513   0.8456908
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4547245   0.3915045   0.5179444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3665723   0.3097683   0.4233762
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3275562   0.2551187   0.3999937
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5684960   0.4394302   0.6975617
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5215418   0.4578563   0.5852274
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5376001   0.4273271   0.6478730
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.6707221   0.5229048   0.8185393
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5850732   0.5080566   0.6620898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.5366728   0.4297045   0.6436411
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6786914   0.5387562   0.8186266
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.6200586   0.5515792   0.6885381
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.6141327   0.4956698   0.7325955
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6408170   0.5932638   0.6883702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5460843   0.4472442   0.6449243
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6482537   0.5676322   0.7288751
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.6191935   0.5915890   0.6467979
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4897571   0.3519623   0.6275519
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6348667   0.5626161   0.7071173
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5931647   0.5721723   0.6141571
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6033960   0.5299433   0.6768486
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6116426   0.5644617   0.6588236
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5037677   0.3640636   0.6434719
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4403127   0.3771178   0.5035076
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4246956   0.2981190   0.5512723
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3155178   0.2519710   0.3790647
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2238689   0.1771435   0.2705943
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2368933   0.1695266   0.3042600
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6655499   0.6091798   0.7219201
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.5926070   0.5603079   0.6249062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5940402   0.5435123   0.6445681
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4630307   0.4329820   0.4930794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4102079   0.3958520   0.4245639
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4278109   0.4054215   0.4502002
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.6666667   0.4364044   0.8969290
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5833333   0.4130521   0.7536146
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8275862   0.6950274   0.9601450
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5654399   0.4805600   0.6503198
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5095553   0.4166039   0.6025066
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4400926   0.3152037   0.5649815
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7301959   0.5882975   0.8720942
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6950123   0.6183688   0.7716557
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7334275   0.6043395   0.8625156
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8181818   0.6832135   0.9531501
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7864078   0.7080119   0.8648036
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8181818   0.7125996   0.9237640
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7175664   0.6561889   0.7789440
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6933702   0.5640304   0.8227100
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6685792   0.5570552   0.7801032
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.7780658   0.7436289   0.8125027
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.5825146   0.4317093   0.7333200
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8540794   0.7747040   0.9334548
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8574614   0.8392059   0.8757169
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8610157   0.7994030   0.9226284
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8573680   0.8160716   0.8986645
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4306621   0.3509937   0.5103306
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3659789   0.2967401   0.4352177
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3443586   0.2606674   0.4280498
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7474146   0.6825244   0.8123047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7456444   0.7017445   0.7895442
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7112886   0.6469606   0.7756166
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6934062   0.6602315   0.7265809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.6730448   0.6555240   0.6905657
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.6711618   0.6446401   0.6976836
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.6400000   0.4178946   0.8621054
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3444542   0.2628536   0.4260548
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2632143   0.1982965   0.3281320
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2637537   0.1794573   0.3480502
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2931174   0.1047990   0.4814358
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3108143   0.2282494   0.3933793
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2272690   0.0834902   0.3710477
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.3333333   0.0871379   0.5795287
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3108108   0.2023701   0.4192516
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1764706   0.0429533   0.3099879
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5667892   0.5009025   0.6326760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4110007   0.2604067   0.5615947
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6350303   0.5269801   0.7430804
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5129384   0.4763683   0.5495085
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3457383   0.1508777   0.5405989
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4930283   0.4020875   0.5839691
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5943389   0.5092156   0.6794621
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4848539   0.4408172   0.5288907
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.4961631   0.4287319   0.5635943


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6067416   0.5268346   0.6866486
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5874587   0.5306185   0.6442990
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6245955   0.5705077   0.6786833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905159   0.6662217
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6152905   0.5899139   0.6406671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5959970   0.5774555   0.6145386
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4477212   0.3954919   0.4999504
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2557143   0.2227697   0.2886589
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4226585   0.4115120   0.4338051
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8000000   0.7425836   0.8574164
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.7781155   0.7468871   0.8093439
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8577803   0.8416785   0.8738820
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7500000   0.6917133   0.8082867
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3800425   0.3361595   0.4239255
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6758591   0.6624976   0.6892206
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5582656   0.5057575   0.6107737
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5056295   0.4721671   0.5390918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8377921   0.5615318   1.2499660
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.1216749   0.7538656   1.6689373
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.8061414   0.6547173   0.9925873
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7203399   0.5546153   0.9355846
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9174064   0.7084923   1.1879232
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9456532   0.6964249   1.2840726
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8723035   0.6744800   1.1281483
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.8001419   0.5943090   1.0772629
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          0.9136091   0.7226176   1.1550807
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          0.9048777   0.6818305   1.2008901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8521688   0.7006950   1.0363878
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0116050   0.8751093   1.1693906
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.7909596   0.5949242   1.0515914
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0253123   0.9074267   1.1585128
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0172487   0.8961290   1.1547387
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0311515   0.9472136   1.1225275
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8740391   0.6405020   1.1927274
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8430386   0.5611598   1.2665091
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.7095285   0.5307029   0.9486112
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7508079   0.5297010   1.0642089
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8904020   0.8050709   0.9847777
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8925554   0.7915839   1.0064065
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.8859196   0.8229489   0.9537087
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9239363   0.8500416   1.0042547
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8750000   0.5566840   1.3753315
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2413793   0.8483148   1.8165693
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9011661   0.7121624   1.1403301
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7783190   0.5653022   1.0716046
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9518163   0.7604374   1.1913594
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0044257   0.7734508   1.3043766
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9611650   0.7926666   1.1654815
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8110389   1.2329865
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9662801   0.7869315   1.1865038
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9317315   0.7722484   1.1241507
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.7486702   0.5758311   0.9733879
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0976956   0.9907969   1.2161278
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0041452   0.9318976   1.0819938
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9998911   0.9485844   1.0539729
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8498052   0.6521875   1.1073025
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7996027   0.5893397   1.0848827
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9976316   0.8982607   1.1079955
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9516654   0.8395322   1.0787759
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9706357   0.9191900   1.0249606
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9679201   0.9096869   1.0298811
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.2800000   0.5486876   2.9860342
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.7641488   0.5426188   1.0761209
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7657151   0.5140559   1.1405754
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0603751   0.5287795   2.1263975
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.7753514   0.3133371   1.9186041
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9324324   0.4118850   2.1108568
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.5294118   0.1839182   1.5239213
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.7251386   0.4933753   1.0657729
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1203994   0.9120448   1.3763521
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.6740347   0.3818902   1.1896685
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9611842   0.7886397   1.1714794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8157870   0.6886105   0.9664513
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8348152   0.6852037   1.0170937


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0266158   -0.2207555    0.1675239
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0703159   -0.1195042   -0.0211276
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0483060   -0.1650921    0.0684802
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0832633   -0.2204214    0.0538948
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0540959   -0.1823981    0.0742062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0124482   -0.0416828    0.0167864
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0039030   -0.0156271    0.0078211
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0028323   -0.0066675    0.0123322
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0560466   -0.1864942    0.0744011
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0598036   -0.1121306   -0.0074765
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0586820   -0.1093711   -0.0079928
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0403722   -0.0680466   -0.0126977
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0200803   -0.1814975    0.2216581
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0425641   -0.1066254    0.0214972
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0171914   -0.1472694    0.1128866
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0181818   -0.1399756    0.1036120
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0122093   -0.0497400    0.0253214
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0000497   -0.0131025    0.0132019
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0003189   -0.0081320    0.0087697
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0506197   -0.1155964    0.0143571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0107124   -0.0687208    0.0472959
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0175471   -0.0480703    0.0129761
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0368421   -0.3162378    0.3899220
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0567829   -0.1219797    0.0084138
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0099129   -0.1597741    0.1796000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0569106   -0.2862152    0.1723941
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0085236   -0.0506814    0.0336342
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0073089   -0.0227854    0.0081676
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0916708   -0.1690785   -0.0142630


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0438668   -0.4174891    0.2312760
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1829197   -0.3181389   -0.0615716
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0928621   -0.3418858    0.1099484
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1417347   -0.4014998    0.0698834
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0866095   -0.3127640    0.1005845
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0198103   -0.0674433    0.0256971
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0063433   -0.0255899    0.0125421
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0047523   -0.0113191    0.0205682
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1251818   -0.4585309    0.1319799
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2338687   -0.4568494   -0.0450167
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0966964   -0.1835705   -0.0161989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0955196   -0.1629890   -0.0319643
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0292398   -0.3137924    0.2827060
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0814038   -0.2116000    0.0348017
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0241112   -0.2238690    0.1430425
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0227273   -0.1868832    0.1187245
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0173094   -0.0719787    0.0345719
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0000639   -0.0169826    0.0168246
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0003717   -0.0095291    0.0101754
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1331948   -0.3179180    0.0256371
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0145411   -0.0964483    0.0612475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0259626   -0.0721429    0.0182285
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0686275   -0.8916940    0.5414402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1973883   -0.4459873    0.0084707
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0327127   -0.7271701    0.4582788
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.2058824   -1.3990080    0.3938527
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0152681   -0.0937453    0.0575784
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0144551   -0.0455662    0.0157303
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1823684   -0.3471050   -0.0377774
