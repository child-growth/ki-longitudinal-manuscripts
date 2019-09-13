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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        mhtcm           stunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       22     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      125     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       31     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       57     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        8     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       99     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        8     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       40     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        9     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       26     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       43     198
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       76     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1       19     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       47     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       10     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       25     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        2     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       87     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        9     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       42     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        7     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       54     276
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        4     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      137     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1       24     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       52     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        5     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      156     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       17     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       25     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        4     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       24     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        2     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       68     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        8     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       13     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        8     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        2     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0       48     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1       11     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0       20     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       13     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0       27     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       11     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        2      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1130    1429
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1       56    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       46    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        5    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      181    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1       11    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    13174   13729
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1       32   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      125   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      397   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6977    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      727    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      480    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       78    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1252    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      153    9667
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      104     840
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        6     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               0      513     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               1       32     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      174     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       11     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              0      497    1774
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              1       33    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm               0      657    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm               1      106    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          0      436    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          1       45    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      614    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       16    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1413    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      132    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      836    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       39    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2345   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      555   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     7289   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     4446   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     3590   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1     1311   19536
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      118     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       38     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       57     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        4     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      118     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        3     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       49     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        7     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0       82     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1       30     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       60     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      122     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1       10     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        2     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       51     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        7     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      116     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1       41     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       45     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      156     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       10     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        9     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      123     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       24     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       13     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      408    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1      102    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      251    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1      170    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      215    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       82    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       54     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1       20     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0       96     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1      106     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       67     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1       36     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       80     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       16     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      208     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      103     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      105     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       25     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      115     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      252     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1       64     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      122     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       18     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1       18     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      310     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1      101     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      139     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       31     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1160    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       86    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      263    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       46    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      383    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       58    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1375    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1      193    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       47    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1       20    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      187    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1       55    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       28     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        8     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0       94     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1       47     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       39     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1       15     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    11811   13033
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1      722   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      102   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1       19   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      340   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1       39   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     4843    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      829    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      284    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1      148    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0      819    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1      203    7126
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       93     943
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       24     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      331     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1      298     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      133     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       64     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      491    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       50    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      614    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               1      176    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      411    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1       77    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      493    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       68    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      992    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      376    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      651    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      128    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      358     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1      155     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0       58     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1       73     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      113     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       79     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2389   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      271   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     6637   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     3160   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     3519   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      785   16761
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0       57     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1       80     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       39     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1       14     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       92     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       42     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       39     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1       14     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0       52     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1       58     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       41     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1       22     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0       91     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       50     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1       11     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       37     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        9     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0       62     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1       53     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       28     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1       12     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      122     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1       58     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       16     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1       11     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       14     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1       13     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       46     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       80     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1       36     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       37     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       51     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1       26     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       89     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1      163     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0       51     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1       49     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      102     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1       20     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      193     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1      121     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0       92     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1       48     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0       91     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        9     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      194     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       30     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0      924    1602
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1      414    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       21    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1       39    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      113    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1       91    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3544    4005
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1      315    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       22    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1       13    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0       97    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1       14    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      109     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      169     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0        3     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       31     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0       17     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       49     378
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       56     997
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       71     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      101     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1      560     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0       49     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1      160     997
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      406    1819
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1      146    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      333    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm               1      452    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      257    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1      225    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      284    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1      226    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0      343    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1      891    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1      391    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      228     577
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1      127     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0       36     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1       59     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0       59     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1       68     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0      969    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1      345    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     2061    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1     3006    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     1346    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1      872    8599


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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/88c74cd3-6156-4700-b651-18ec00e4523f/11102104-8872-4e42-8587-79525ce3d059/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/88c74cd3-6156-4700-b651-18ec00e4523f/11102104-8872-4e42-8587-79525ce3d059/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/88c74cd3-6156-4700-b651-18ec00e4523f/11102104-8872-4e42-8587-79525ce3d059/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/88c74cd3-6156-4700-b651-18ec00e4523f/11102104-8872-4e42-8587-79525ce3d059/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1911981   0.0794579   0.3029383
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4380976   0.2604791   0.6157161
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3019921   0.1607768   0.4432074
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0472175   0.0351420   0.0592931
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0980392   0.0163981   0.1796803
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0572917   0.0244077   0.0901756
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0943349   0.0878053   0.1008646
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1388306   0.1101340   0.1675272
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1092578   0.0929482   0.1255675
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0545455   0.0120825   0.0970084
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0587156   0.0389666   0.0784646
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0594595   0.0253621   0.0935568
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0617231   0.0410517   0.0823944
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1413535   0.1167111   0.1659959
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0931476   0.0669362   0.1193590
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0246096   0.0126625   0.0365567
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0850350   0.0710936   0.0989764
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0450341   0.0310545   0.0590137
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1948554   0.1784352   0.2112757
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3772100   0.3672678   0.3871522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2689499   0.2551351   0.2827647
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1272727   0.0390055   0.2155400
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2678571   0.1856680   0.3500463
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1176471   0.0409054   0.1943887
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1206897   0.0366973   0.2046821
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2611465   0.1923099   0.3299831
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2105263   0.1044954   0.3165572
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1657754   0.1123679   0.2191830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.3225806   0.1576927   0.4874686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2903226   0.1302150   0.4504302
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1590311   0.0988630   0.2191992
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4045908   0.2613590   0.5478227
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2380296   0.1176740   0.3583851
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2021492   0.1807605   0.2235379
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4064662   0.3428371   0.4700953
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2818209   0.2371970   0.3264449
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2573952   0.1525307   0.3622597
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.5240769   0.4548592   0.5932947
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3345357   0.2407910   0.4282804
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1700960   0.0933237   0.2468684
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3316420   0.2789292   0.3843548
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1897804   0.1211134   0.2584473
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0839889   0.0360573   0.1319205
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2008909   0.1565259   0.2452560
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1332220   0.0766370   0.1898071
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1347356   0.0763978   0.1930733
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2456211   0.2038808   0.2873613
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1826295   0.1240578   0.2412011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0689195   0.0548207   0.0830183
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1490003   0.1089531   0.1890476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1302863   0.0986394   0.1619332
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1236830   0.1074185   0.1399475
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2817259   0.1703948   0.3930570
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2215555   0.1686891   0.2744219
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2222222   0.0861215   0.3583229
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3333333   0.2553549   0.4113117
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2777778   0.1580548   0.3975007
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0575995   0.0452553   0.0699436
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1569069   0.1314713   0.1823424
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1031407   0.0671162   0.1391652
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1460907   0.1368971   0.1552842
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3457057   0.3008200   0.3905914
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1970038   0.1725964   0.2214112
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2063347   0.1336643   0.2790052
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4727621   0.4336617   0.5118626
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.3310096   0.2649898   0.3970294
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0931775   0.0687190   0.1176359
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2209532   0.1919238   0.2499826
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1564735   0.1239717   0.1889753
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1194011   0.0926226   0.1461796
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2750895   0.2513882   0.2987908
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1642149   0.1380434   0.1903865
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3014430   0.2617175   0.3411685
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5242903   0.4383520   0.6102286
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4091882   0.3387246   0.4796518
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1029156   0.0902148   0.1156165
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.3215553   0.3104012   0.3327095
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1832029   0.1711488   0.1952570
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2594763   0.1448069   0.3741457
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5167418   0.4216475   0.6118361
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3480079   0.2246455   0.4713704
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1956522   0.0807267   0.3105777
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4608696   0.3695386   0.5522006
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3000000   0.1576325   0.4423675
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3233861   0.2548128   0.3919594
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.4003312   0.2055849   0.5950776
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4893126   0.2797434   0.6988818
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3328153   0.2247810   0.4408496
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6455604   0.5861173   0.7050036
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5109705   0.4123669   0.6095741
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1698885   0.1031510   0.2366261
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3871997   0.3331074   0.4412920
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3488880   0.2695365   0.4282395
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0900000   0.0338548   0.1461452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3240418   0.2698429   0.3782407
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2362205   0.1622750   0.3101660
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3097835   0.2849997   0.3345674
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.6706128   0.5450794   0.7961462
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4468664   0.3783585   0.5153743
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0816355   0.0502506   0.1130205
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3740328   0.3212313   0.4268342
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1378460   0.0794957   0.1961963
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.5596238   0.4739533   0.6452944
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8468169   0.8193996   0.8742341
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7579792   0.7006252   0.8153333
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2695757   0.2329294   0.3062219
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.5713020   0.5367018   0.6059022
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.4661478   0.4218960   0.5103996
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4436940   0.4003504   0.4870377
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7210929   0.6960190   0.7461668
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5578392   0.5209302   0.5947481
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3582367   0.3082542   0.4082193
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.6235383   0.5238860   0.7231906
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5467864   0.4585072   0.6350657
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2646312   0.2369168   0.2923456
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5925453   0.5775081   0.6075825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3938333   0.3700742   0.4175924


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2692308   0.1695525   0.3689090
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0503849   0.0390398   0.0617300
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0991000   0.0931434   0.1050567
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0583333   0.0424744   0.0741923
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1037204   0.0895283   0.1179125
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3230958   0.3154261   0.3307655
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1914894   0.1410749   0.2419038
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4274406   0.3775694   0.4773119
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0951904   0.0823123   0.1080685
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1427810   0.1269499   0.1586122
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3030303   0.2436375   0.3624232
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0598481   0.0470397   0.0726565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1655908   0.1569598   0.1742218
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4093319   0.3779317   0.4407321
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1665750   0.1494477   0.1837024
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3672249   0.3345288   0.3999210
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515363   0.2434210   0.2596516
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3395755   0.3163785   0.3627726
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7933801   0.7682355   0.8185248
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4524464   0.4295668   0.4753260
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4402080   0.3996684   0.4807475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4911036   0.4779420   0.5042652


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.2913283   1.4056682   3.735010
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.5794722   0.7402214   3.370252
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0763305   0.8689039   4.961594
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2133556   0.6472765   2.274502
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4716775   1.1834193   1.830150
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1581907   0.9824727   1.365336
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0764526   0.4609940   2.513591
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0900901   0.4145183   2.866692
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2901245   1.5696980   3.341197
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5091212   0.9747871   2.336353
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.4553558   2.0702454   5.767183
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.8299399   1.0282850   3.256568
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9358455   1.7727495   2.113947
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3802534   1.2523430   1.521228
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.1045918   0.9858478   4.492891
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          0.9243697   0.3567439   2.395162
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.1637853   1.0280615   4.554170
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.7443609   0.7388397   4.118343
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.9458897   1.0634406   3.560600
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.7513007   0.9246585   3.316959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.5440984   1.5168772   4.266949
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4967483   0.7936854   2.822599
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.0107237   1.6562507   2.441061
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3941233   1.1043636   1.759909
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          2.0360789   1.3263043   3.125691
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2996969   0.7926263   2.131158
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9497340   1.2090080   3.144283
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1157248   0.6258015   1.989196
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.3918756   1.2967894   4.411718
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5861870   0.7780216   3.233830
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.8229861   1.1448412   2.902829
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.3554660   0.7907283   2.323539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1619482   1.5416261   3.031877
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8904134   1.3758095   2.597498
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.2778058   1.5021888   3.453893
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.7913170   1.3644153   2.351789
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.5000000   0.7786878   2.889476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2500000   0.5911037   2.643360
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.7241030   2.2009952   3.371537
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7906540   1.3425706   2.388285
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.3663773   2.0484215   2.733686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3485034   1.1735102   1.549592
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          2.2912388   1.5962815   3.288753
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.6042359   1.0707111   2.403611
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.3713160   1.7681050   3.180320
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6793063   1.2016187   2.346892
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.3039104   1.8115157   2.930145
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3753215   1.0444820   1.810954
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7392688   1.4094884   2.146208
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.3574315   1.0926668   1.686352
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          3.1244555   2.7559228   3.542270
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.7801268   1.5498734   2.044587
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9914802   1.2320681   3.218973
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3411938   0.7601255   2.366452
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          2.3555556   1.2672529   4.378480
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.5333333   0.7205799   3.262804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.2379360   0.7281317   2.104682
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.5130912   0.9383443   2.439877
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9396957   1.3833512   2.719786
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.5352975   1.0514254   2.241850
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.2791395   1.5013217   3.459936
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.0536288   1.3031335   3.236346
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          3.6004642   1.8873878   6.868404
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          2.6246716   1.3060213   5.274724
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.1647786   1.7659327   2.653706
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4425117   1.2135429   1.714682
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          4.5817396   2.9697419   7.068741
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.6885540   0.9185990   3.103873
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5131894   1.2942595   1.769152
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3544442   1.1422860   1.606007
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.1192640   1.8268929   2.458425
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7291907   1.4655447   2.040266
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6252031   1.4651432   1.802749
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2572609   1.1173558   1.414683
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7405760   1.4071134   2.153064
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.5263270   1.2323699   1.890402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.2391363   2.0164223   2.486449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4882347   1.3206444   1.677092


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0780327    0.0212258   0.1348396
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0031673   -0.0025322   0.0088669
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0047651    0.0015763   0.0079539
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0037879   -0.0359911   0.0435668
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0419973    0.0226414   0.0613533
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0367019    0.0242621   0.0491416
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1282404    0.1126715   0.1438093
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0642166   -0.0175503   0.1459836
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0998986    0.0193802   0.1804169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0350278    0.0025639   0.0674917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0757867    0.0290142   0.1225592
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0861244    0.0589634   0.1132854
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1700454    0.0731421   0.2669487
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0980604    0.0254958   0.1706250
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0758049    0.0292075   0.1224024
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0750546    0.0199634   0.1301459
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0262709    0.0154500   0.0370918
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0190980    0.0105916   0.0276044
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0808081   -0.0467748   0.2083909
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0022486    0.0012147   0.0032825
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0195001    0.0145527   0.0244475
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2029972    0.1326746   0.2733198
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0733976    0.0502456   0.0965496
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0918249    0.0662265   0.1174233
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0657819    0.0390394   0.0925244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1486207    0.1359769   0.1612644
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1564529    0.0509335   0.2619724
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1725070    0.0646625   0.2803516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0270413   -0.0081025   0.0621851
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2219632    0.1224731   0.3214534
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1582365    0.0942503   0.2222226
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1668093    0.1088878   0.2247309
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0297920    0.0185553   0.0410286
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0037577    0.0004712   0.0070442
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2337563    0.1557500   0.3117626
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1828707    0.1505639   0.2151775
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1730749    0.1347047   0.2114450
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0819712    0.0491752   0.1147673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2264724    0.2013906   0.2515542


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2898356    0.0169378   0.4869771
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0628630   -0.0564656   0.1687134
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0480838    0.0154591   0.0796274
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0649351   -0.9385216   0.5489623
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4049092    0.1951119   0.5600220
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5986133    0.3619177   0.7475071
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3969113    0.3471007   0.4429218
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3353535   -0.2516652   0.6470662
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4528736   -0.0471592   0.7141339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1744385    0.0000171   0.3184365
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3227468    0.1005116   0.4900747
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2987592    0.2154938   0.3731870
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3978223    0.1217824   0.5870979
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3656835    0.0320003   0.5843414
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4743923    0.1036538   0.6917893
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3577605    0.0381242   0.5711800
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2759827    0.1590336   0.3766683
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1337573    0.0735707   0.1900339
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2666667   -0.2999982   0.5863242
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0375721    0.0223058   0.0526000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1177609    0.0877968   0.1467407
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4959232    0.2931776   0.6405130
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4406278    0.2904337   0.5590302
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4347234    0.3031753   0.5414376
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1791325    0.1031268   0.2486971
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5908518    0.5401039   0.6359998
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3761528    0.0668043   0.5829543
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.4685664    0.0859712   0.6910145
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0771666   -0.0287878   0.1722088
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4000934    0.1889136   0.5562890
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4822444    0.2522313   0.6415057
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.6495454    0.3626160   0.8073086
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0877330    0.0540700   0.1201980
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0440049   -0.0037695   0.0895054
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2946334    0.1869356   0.3880657
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4041820    0.3285203   0.4713183
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2806154    0.2147405   0.3409641
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1862102    0.1075918   0.2579026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4611500    0.4066466   0.5106469
