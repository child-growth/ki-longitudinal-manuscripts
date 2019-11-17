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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       21     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      139     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        6     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       55     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0       32      64
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       19      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        1      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       10      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        2      64
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               0       11      43
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               1        1      43
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                0       19      43
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                1        1      43
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       11      43
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        0      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               0        6      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                0       13      27
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0        7      27
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        1      27
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               0       48     226
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               1        0     226
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                0      127     226
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                1        4     226
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           0       47     226
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0       80     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        0     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0        9     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        1     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       11     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        0     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       67     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       21     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        0     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       25     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        4     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0      445    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1       22    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0      345    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1       40    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0      258    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1       25    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0      108     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        3     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      341     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       15     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0      140     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        1     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      109     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        1     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      284     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1        2     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      120     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        1     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0      132     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        2     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      414     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1        4     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      173     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        4     729
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               0     1170    1431
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               1       17    1431
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                0       48    1431
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                1        3    1431
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           0      187    1431
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           1        6    1431
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               0    13201   13729
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               1        5   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                0      125   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           0      398   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           1        0   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     7532    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      200    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      529    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       31    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1361    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       52    9705
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm               0      110     840
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm               1        0     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm                0      538     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm                1        7     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      181     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1        4     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm               0      522    1774
Birth       ki1135781-COHORTS          INDIA                          >=155 cm               1        8    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm                0      739    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm                1       24    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm           0      470    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm           1       11    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      628    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1        2    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm                0     1516    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm                1       29    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      860    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1       15    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     3153   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1      164   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0    11650   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1786   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     5117   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      486   22356
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      148     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       61     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm               0       55     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm               1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                0      104     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       67     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                0      131     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       63     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm               0       57     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm               1        1     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                0      149     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                1        8     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm           0       56     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm           1        1     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      184     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0      142     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       41     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       50     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        2     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0      486    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1       24    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0      356    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1       65    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0      267    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1       30    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm               0       72     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm               1        2     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                0      163     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                1       39     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm           0       91     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm           1       12     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       94     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      280     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       31     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0      128     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      127     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      318     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       12     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      144     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        1     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0      133     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      394     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      165     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        5     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0     1239    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        7    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0      304    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        5    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0      434    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        7    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm               0     1527    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm               1       41    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm                0       62    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm                1        5    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm           0      229    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm           1       13    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm               0       34     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm               1        2     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                0      125     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                1       16     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm           0       50     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm           1        4     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm               0    12365   13033
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm               1      168   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm                0      116   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm                1        5   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm           0      370   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm           1        9   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     5693    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      195    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      399    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       46    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1014    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       47    7394
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm               0      111     943
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm               1        6     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                0      530     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                1       99     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      181     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1       16     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm               0      531    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm               1       10    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm                0      740    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm                1       50    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm           0      477    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm           1       11    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      550    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       11    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                0     1277    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                1       91    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      749    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1       30    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm               0      487     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm               1       26     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                0      104     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                1       27     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      174     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       18     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     2610   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1       50   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0     8997   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1      800   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     4137   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      167   16761
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      113     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1       24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       50     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0       95     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm               0       50     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm               1        3     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                0       86     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                1       24     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       60     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        3     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       61     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm               0       44     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm               1        2     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm                0      103     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm                1       12     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm           0       39     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm           1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      162     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1       18     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       23     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        4     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       22     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        5     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       95     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1       31     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1       18     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       71     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        6     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      177     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       75     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0       86     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1       14     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      118     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        4     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      276     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       39     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      131     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        9     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0       99     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      254     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       33     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      125     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        2     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm               0     1240    1602
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm               1       98    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm                0       50    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm                1       10    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           0      180    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           1       24    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               0     3801    4005
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               1       58    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                0       30    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                1        5    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           0      109    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           1        2    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0      991    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1       93    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0       74    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       24    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0      159    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       33    1374
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               0       88     994
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               1       38     994
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                0      307     994
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                1      352     994
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      109     994
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1      100     994
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               0      497    1819
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               1       55    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm                0      563    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm                1      222    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           0      388    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           1       94    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      425    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       85    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                0      775    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                1      459    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      538    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1      163    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               0      330     577
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               1       25     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                0       71     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                1       24     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      106     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       21     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     1252    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1       62    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0     3987    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1080    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     2018    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      200    8599


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/c0095b3d-d513-4826-9779-949cea7d176e/b550e5e2-79c0-4b79-a3fa-b64ba72af2d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0095b3d-d513-4826-9779-949cea7d176e/b550e5e2-79c0-4b79-a3fa-b64ba72af2d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0095b3d-d513-4826-9779-949cea7d176e/b550e5e2-79c0-4b79-a3fa-b64ba72af2d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0095b3d-d513-4826-9779-949cea7d176e/b550e5e2-79c0-4b79-a3fa-b64ba72af2d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0450515   0.0237417   0.0663612
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1066569   0.0813841   0.1319298
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0898622   0.0444199   0.1353046
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0258416   0.0223037   0.0293795
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0550442   0.0360066   0.0740819
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0369417   0.0271090   0.0467744
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0150943   0.0047110   0.0254777
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0314548   0.0190665   0.0438431
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0228690   0.0095062   0.0362318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0506862   0.0419613   0.0594112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1320232   0.1257341   0.1383122
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0877630   0.0797346   0.0957915
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0464343   0.0225691   0.0702995
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1565884   0.1066132   0.2065635
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1036995   0.0647164   0.1426827
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0056180   0.0014669   0.0097691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0161812   0.0021097   0.0302527
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0158730   0.0042051   0.0275409
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0261480   0.0182474   0.0340485
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0746269   0.0116860   0.1375677
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0537190   0.0253052   0.0821329
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0134046   0.0088341   0.0179751
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0413223   0.0236142   0.0590305
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0237467   0.0061571   0.0413363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0331112   0.0285384   0.0376839
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0975682   0.0690897   0.1260468
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0441072   0.0316804   0.0565340
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0512821   0.0112934   0.0912707
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1573927   0.1289181   0.1858673
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0812183   0.0430521   0.1193844
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0180726   0.0066722   0.0294729
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0612048   0.0441675   0.0782420
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0221249   0.0088851   0.0353646
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0187240   0.0076491   0.0297988
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0666329   0.0534185   0.0798474
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0391416   0.0254768   0.0528064
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0504885   0.0315094   0.0694675
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2100786   0.1397040   0.2804531
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0972579   0.0557624   0.1387535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0191470   0.0132375   0.0250564
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0809296   0.0752039   0.0866554
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0393015   0.0332640   0.0453390
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2471677   0.1715895   0.3227459
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5305176   0.3723269   0.6887084
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3872831   0.2421034   0.5324627
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0779221   0.0179811   0.1378630
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2976190   0.2411031   0.3541350
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719124   0.2080876
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0736438   0.0596756   0.0876121
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1672091   0.0706199   0.2637983
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1149655   0.0706250   0.1593060
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0858551   0.0691722   0.1025380
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2420096   0.1557848   0.3282343
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1711997   0.1171631   0.2252362
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3128921   0.2330183   0.3927658
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.5336737   0.4955358   0.5718116
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4830006   0.4156837   0.5503174
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1016608   0.0767896   0.1265320
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2797243   0.2481699   0.3112787
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1933822   0.1576908   0.2290736
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1633292   0.1314204   0.1952379
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3723061   0.3452989   0.3993133
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2329976   0.2015319   0.2644634
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0707358   0.0440393   0.0974323
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2652329   0.1762423   0.3542235
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1723789   0.1074769   0.2372808
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0459319   0.0336292   0.0582346
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2128720   0.2004350   0.2253090
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0905066   0.0756176   0.1053956


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0766520   0.0591565   0.0941474
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0291602   0.0258126   0.0325079
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0242390   0.0170805   0.0313975
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1089640   0.1044122   0.1135158
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0969055   0.0737418   0.1200693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0095190   0.0052582   0.0137799
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0314331   0.0235374   0.0393288
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0139646   0.0092016   0.0187275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0389505   0.0345402   0.0433608
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1283139   0.1069569   0.1496709
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0390324   0.0301298   0.0479351
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0849282   0.0660197   0.1038368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606766   0.0568171   0.0645361
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0823970   0.0689280   0.0958660
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1091703   0.0926749   0.1256657
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4929577   0.4618620   0.5240535
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2039582   0.1854361   0.2224803
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1213172   0.0946538   0.1479805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1560647   0.1473093   0.1648200


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.367446   1.3403477   4.181603
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.994657   0.9030109   4.405991
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.130063   1.4683827   3.089907
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.429545   1.0597593   1.928362
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.083879   0.9432426   4.603856
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.515073   0.6144022   3.736063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.604714   2.1791351   3.113408
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.731497   1.4237814   2.105717
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          3.372255   1.7497676   6.499208
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.233252   0.9965231   5.004817
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.880259   0.9201086   9.016209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.825397   0.9963933   8.011763
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.854023   1.1651317   6.991008
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          2.054425   1.1172215   3.777819
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          3.082694   1.8352787   5.177961
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.771532   0.9357442   3.353829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.946686   2.1335205   4.069778
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.332094   0.9732945   1.823163
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          3.069157   1.3783850   6.833887
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.583756   0.6372270   3.936249
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          3.386606   1.6992915   6.749341
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.224222   0.5131467   2.920646
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.558693   1.9075387   6.639078
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          2.090451   1.0522478   4.153002
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          4.160922   2.5149426   6.884161
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.926340   1.0908107   3.401859
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.226757   3.0865302   5.788206
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          2.052621   1.4417170   2.922385
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.146387   1.4031366   3.283343
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.566884   0.9661733   2.541081
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          3.819444   1.7293940   8.435415
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.796667   0.7231383   4.463892
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.270510   1.2362678   4.169983
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.561101   1.0157344   2.399286
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.818815   1.8786799   4.229416
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.994055   1.3761571   2.889389
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.705616   1.3092459   2.221986
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.543665   1.1550579   2.063015
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.751544   2.1024893   3.600968
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.902229   1.4002356   2.584191
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.279483   1.8507233   2.807575
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.426553   1.1249812   1.808966
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          3.749626   2.2636742   6.211007
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.436939   1.4266695   4.162611
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.634514   3.5245911   6.093960
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.970452   1.4322918   2.710818


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0316005    0.0098621   0.0533389
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0033186    0.0013751   0.0052622
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0091447   -0.0005835   0.0188728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0582778    0.0496341   0.0669215
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0504712    0.0216008   0.0793417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0039011    0.0001764   0.0076257
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0052852    0.0007603   0.0098101
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0005599   -0.0000136   0.0011335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0058393    0.0031791   0.0084996
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0770318    0.0363083   0.1177554
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0209598    0.0094494   0.0324703
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0300205    0.0183694   0.0416715
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0344398    0.0178519   0.0510276
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0415296    0.0353071   0.0477521
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0799351    0.0254512   0.1344190
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1435231    0.0814702   0.2055761
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0087532    0.0016359   0.0158704
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0233152    0.0127601   0.0338704
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1800657    0.1044278   0.2557035
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1022974    0.0781381   0.1264566
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1258324    0.0956418   0.1560231
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0505813    0.0271313   0.0740313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1101328    0.0966927   0.1235729


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4122596    0.0885116   0.6210168
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1138064    0.0458857   0.1768921
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3772707   -0.1575587   0.6649917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5348352    0.4511486   0.6057616
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5208290    0.2015670   0.7124307
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4098167   -0.0610110   0.6717128
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1681403    0.0180716   0.2952740
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0400972    0.0014302   0.0772670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1499166    0.0809467   0.2137106
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6003391    0.1466206   0.8128278
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5369852    0.1696479   0.7418171
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6158745    0.3238116   0.7817881
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4055160    0.2006749   0.5578629
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6844420    0.5742189   0.7661314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2443731    0.0602202   0.3924406
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.6481203    0.2620127   0.8322203
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1062315    0.0173222   0.1870966
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2135675    0.1157234   0.3005854
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3652761    0.1914238   0.5017484
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5015605    0.3768421   0.6013178
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4351630    0.3227724   0.5289016
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4169347    0.2143545   0.5672792
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.7056868    0.6177980   0.7733652
