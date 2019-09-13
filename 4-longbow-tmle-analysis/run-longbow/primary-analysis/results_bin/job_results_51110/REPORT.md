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

agecat      studyid                    country                        mhtcm           sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       24     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      150     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        6     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       65     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0      104     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        3     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       46     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        3     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       26     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        2     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               0       45     198
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               1        1     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                0       91     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                1        4     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       55     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        2     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       27     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                0       93     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                1        3     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       46     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        3     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               0       57     276
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               1        1     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                0      155     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                1        6     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           0       57     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           1        0     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      173     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       28     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        1     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       26     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        0     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       73     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        3     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        2     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       23     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        1     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0       55     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1        4     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0       32     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1        1     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0       33     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1        5     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        1      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               0     1169    1429
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               1       17    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                0       48    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                1        3    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           0      186    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           1        6    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               0    13201   13729
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               1        5   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                0      125   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           0      398   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           1        0   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     7504    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      200    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      527    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       31    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1353    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       52    9667
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     2761   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1      139   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0    10249   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1486   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     4493   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      408   19536
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
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                0      147     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                1       10     272
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      125     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      304     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       12     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      139     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        1     582
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     5478    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      194    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      386    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       46    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0      977    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       45    7126
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      115     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1       22     212
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
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                0       88     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                1       22     226
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
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      163     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1       17     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       23     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        4     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       22     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        5     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       96     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1       18     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       71     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        6     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      179     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       73     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0       86     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1       14     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      118     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        4     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      277     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       37     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      132     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        8     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0       99     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      255     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       32     514
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
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           0      183    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           1       21    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               0     3801    4005
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               1       58    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                0       30    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                1        5    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           0      109    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           1        2    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0      210     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1       68     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0       41     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       25     378
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               0       93     997
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               1       34     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                0      349     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                1      312     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      123     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1       86     997
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               0      507    1819
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               1       45    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm                0      616    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm                1      169    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           0      409    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           1       73    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      429    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       81    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                0      781    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                1      453    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      546    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1      155    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               0      331     577
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               1       24     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                0       72     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                1       23     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      107     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       20     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     1252    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1       62    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0     3988    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1079    8599
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/7553d0f0-15a2-4a00-9a81-c3224c91f03a/0af900d6-f048-4312-8904-49be08abdb3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7553d0f0-15a2-4a00-9a81-c3224c91f03a/0af900d6-f048-4312-8904-49be08abdb3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7553d0f0-15a2-4a00-9a81-c3224c91f03a/0af900d6-f048-4312-8904-49be08abdb3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7553d0f0-15a2-4a00-9a81-c3224c91f03a/0af900d6-f048-4312-8904-49be08abdb3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0259301   0.0223790   0.0294812
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0538060   0.0344839   0.0731282
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0368017   0.0269204   0.0466831
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0150943   0.0047110   0.0254777
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0314548   0.0190665   0.0438431
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0228690   0.0095062   0.0362318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0495426   0.0402332   0.0588519
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1258157   0.1193095   0.1323220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0843651   0.0760284   0.0927018
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0342093   0.0294786   0.0389400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1061074   0.0768480   0.1353669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0440435   0.0314419   0.0566452
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0512821   0.0112934   0.0912707
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1573927   0.1289181   0.1858673
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0812183   0.0430521   0.1193844
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0185924   0.0071805   0.0300043
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0615474   0.0445439   0.0785509
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0221931   0.0089782   0.0354081
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0187190   0.0076202   0.0298178
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0665193   0.0533116   0.0797269
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0393443   0.0256508   0.0530377
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0503202   0.0312891   0.0693512
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1992989   0.1287675   0.2698304
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0954494   0.0532824   0.1376164
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0188424   0.0129481   0.0247366
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0809765   0.0752501   0.0867030
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0392462   0.0332110   0.0452815
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2428039   0.1684414   0.3171664
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5434976   0.3871999   0.6997952
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4441330   0.3004157   0.5878502
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0779221   0.0179811   0.1378630
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2896825   0.2336111   0.3457540
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719124   0.2080876
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0735026   0.0595319   0.0874734
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1615373   0.0657557   0.2573189
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1009832   0.0589736   0.1429928
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2463490   0.1957454   0.2969525
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5892689   0.4137207   0.7648172
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4071248   0.2901187   0.5241310
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2654864   0.1906081   0.3403648
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4706823   0.4326155   0.5087491
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4090461   0.3420084   0.4760839
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0835153   0.0608390   0.1061916
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2130172   0.1841941   0.2418404
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1516097   0.1194081   0.1838113
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1563702   0.1249654   0.1877749
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3677825   0.3408743   0.3946908
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2210267   0.1901727   0.2518806
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0670523   0.0408846   0.0932200
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2468459   0.1608557   0.3328362
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1678743   0.1030415   0.2327071
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0467600   0.0345583   0.0589617
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2127146   0.2002668   0.2251625
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0904895   0.0756039   0.1053751


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0292749   0.0259142   0.0326355
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0242390   0.0170805   0.0313975
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1040643   0.0993882   0.1087404
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0969055   0.0737418   0.1200693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0095190   0.0052582   0.0137799
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0314331   0.0235374   0.0393288
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0139646   0.0092016   0.0187275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0399944   0.0354446   0.0445442
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1283139   0.1069569   0.1496709
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0390324   0.0301298   0.0479351
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0849282   0.0660197   0.1038368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606766   0.0568171   0.0645361
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0805243   0.0671957   0.0938530
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2910053   0.2451542   0.3368563
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4332999   0.4025255   0.4640743
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1577790   0.1410223   0.1745357
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1161179   0.0899551   0.1422806
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1559484   0.1471934   0.1647033


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.075041   1.4129053   3.047476
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.419267   1.0498949   1.918591
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.083879   0.9432426   4.603856
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.515073   0.6144022   3.736063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.539548   2.0903243   3.085313
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.702881   1.3729388   2.112114
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          3.101714   2.2784015   4.222536
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.287473   0.9369052   1.769215
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          3.069157   1.3783850   6.833887
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.583756   0.6372270   3.936249
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          3.310354   1.6884094   6.490396
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.193667   0.5074675   2.807747
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.553567   1.9018607   6.639729
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          2.101834   1.0572808   4.178366
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          3.960618   2.3591846   6.649116
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.896842   1.0612856   3.390238
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.297580   3.1255038   5.909189
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          2.082873   1.4576474   2.976274
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.238422   1.4717090   3.404568
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.829184   1.1703971   2.858785
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          3.717593   1.6817843   8.217757
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.796667   0.7231383   4.463892
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.197708   1.1790800   4.096347
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.373873   0.8695362   2.170727
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.392009   1.6631439   3.440296
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.652635   1.1601716   2.354136
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.772905   1.3229058   2.375976
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.540742   1.1134633   2.131984
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.550637   1.8840029   3.453153
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.815352   1.2857084   2.563182
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.351999   1.8992936   2.912609
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.413484   1.1067625   1.805207
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          3.681395   2.1807994   6.214542
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.503633   1.4426678   4.344851
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.549071   3.4828680   5.941668
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.935189   1.4148261   2.646937


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0033448    0.0013935   0.0052960
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0091447   -0.0005835   0.0188728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0545217    0.0453464   0.0636970
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0504712    0.0216008   0.0793417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0039011    0.0001764   0.0076257
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0052852    0.0007603   0.0098101
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0005599   -0.0000136   0.0011335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0057851    0.0030537   0.0085165
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0770318    0.0363083   0.1177554
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0204400    0.0089331   0.0319470
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0300255    0.0183558   0.0416951
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0346081    0.0179892   0.0512270
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0418342    0.0356220   0.0480464
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0796260    0.0253328   0.1339192
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1388611    0.0769979   0.2007244
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0070217    0.0001682   0.0138752
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0446563    0.0146036   0.0747091
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1678135    0.0965165   0.2391104
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0742637    0.0523300   0.0961974
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1254294    0.0956021   0.1552567
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0490656    0.0260847   0.0720464
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1091883    0.0957997   0.1225770


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1142535    0.0463356   0.1773344
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3772707   -0.1575587   0.6649917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5239235    0.4297071   0.6025747
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5208290    0.2015670   0.7124307
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4098167   -0.0610110   0.6717128
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1681403    0.0180716   0.2952740
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0400972    0.0014302   0.0772670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1446479    0.0755783   0.2085570
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6003391    0.1466206   0.8128278
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5236681    0.1594533   0.7300660
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.6159767    0.3230482   0.7821501
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4074978    0.2017810   0.5601974
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6894624    0.5792597   0.7708001
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2469560    0.0616746   0.3956519
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.6405530    0.2465165   0.8285269
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0872000   -0.0007880   0.1674521
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1534554    0.0448361   0.2497227
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3872917    0.1990009   0.5313210
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4706817    0.3221424   0.5866716
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4451015    0.3310693   0.5396946
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4225497    0.2140425   0.5757419
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.7001571    0.6131611   0.7675886
