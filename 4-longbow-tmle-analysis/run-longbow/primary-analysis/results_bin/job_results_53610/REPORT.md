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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        mhtcm           swasted   n_cell       n
----------  -------------------------  -----------------------------  -------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       21     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        0     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      129     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        5     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       51     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        3     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       32      61
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        0      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       19      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       10      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0      61
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       11      41
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       19      41
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       11      41
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       12      26
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0        7      26
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0      26
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       47     221
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     221
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      127     221
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1        0     221
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       47     221
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        0     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0       80     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0        9     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       11     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        0     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       67     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       21     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       25     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      424     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1        8     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      307     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       12     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      236     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1        5     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0      101     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        6     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      305     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1       28     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      131     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        4     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      106     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        2     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      273     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        8     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      119     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        2     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      121     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        8     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      377     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1       27     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      159     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1       12     704
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1061    1362
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1       74    1362
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       42    1362
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        4    1362
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      161    1362
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1       20    1362
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    12278   13670
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1      871   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      119   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        5   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      381   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1       16   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6853    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      403    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      458    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       41    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1221    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       84    9060
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              0       90     748
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm              1       13     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               0      447     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm               1       37     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      151     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1       10     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              0      480    1676
Birth       ki1135781-COHORTS          INDIA                          >=155 cm              1       28    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm               0      677    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm               1       35    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          0      437    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm          1       19    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      592    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1       24    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1383    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       62    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      803    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       35    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2914   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       52   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0    10048   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      211   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4627   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1       84   17936
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      156     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       60     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              0       54     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm              1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0      107     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       68     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               0      132     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       63     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              0       58     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               0      157     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm               1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          0       57     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm          1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      185     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      147     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       52     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0      500    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1        9    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0      400    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1       21    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0      286    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1       10    1226
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              0       71     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm              1        4     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               0      193     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm               1        9     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          0       97     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm          1        5     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       96     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      307     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      128     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      127     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        1     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      326     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        3     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      144     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        1     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      411     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      170     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1240    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        5    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      307    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        2    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      436    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        5    1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              0     1541    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm              1       27    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               0       64    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm               1        3    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          0      242    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm          1        0    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              0       36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm              1        0     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               0      141     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm               1        0     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          0       54     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm          1        0     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              0    12520   13030
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm              1       11   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               0      121   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm               1        0   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          0      378   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm          1        0   13030
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     5729    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       51    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      432    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        8    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1041    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1        9    7270
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      117     946
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        0     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               0      628     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm               1        4     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      195     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1        2     946
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              0      529    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm              1       12    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               0      760    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm               1       31    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          0      469    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm          1       18    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      553    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1        7    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1350    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       18    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      768    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1       10    2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              0      513     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm              1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               0      131     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm               1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      192     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        0     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2619   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       32   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     9644   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      143   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4242   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1       54   16734
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      137     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       53     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0       94     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       31     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              0       52     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm              1        1     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               0      109     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm               1        1     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       63     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               0      129     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       61     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              0       46     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      114     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          0       39     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm          1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      180     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      126     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       40     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       75     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      245     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0       98     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        2     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      118     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      315     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        1     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      136     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        4     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0      100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0      284     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0      126     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              0     1316    1603
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm              1       23    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               0       59    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm               1        1    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          0      201    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm          1        3    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3796    3942
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1        2    3942
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       33    3942
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        1    3942
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      109    3942
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      246     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       21     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0       29     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        5     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0       64     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1        2     367
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              0      128    1006
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm              1        0    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               0      665    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm               1        3    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          0      209    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm          1        1    1006
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              0      546    1803
24 months   ki1135781-COHORTS          INDIA                          >=155 cm              1        3    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm               0      768    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm               1        8    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          0      475    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm          1        3    1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              0      506    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm              1        1    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               0     1221    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm               1       18    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          0      697    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm          1        6    2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              0      345     561
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm              1        0     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               0       91     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm               1        1     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          0      124     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm          1        0     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     1266    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       39    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     4839    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      213    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     2133    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1       80    8570


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/bfc999fd-40d4-438f-9082-3649437866e6/2d22317e-0af9-4a3f-b164-f96a2e4ccb4d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bfc999fd-40d4-438f-9082-3649437866e6/2d22317e-0af9-4a3f-b164-f96a2e4ccb4d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bfc999fd-40d4-438f-9082-3649437866e6/2d22317e-0af9-4a3f-b164-f96a2e4ccb4d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bfc999fd-40d4-438f-9082-3649437866e6/2d22317e-0af9-4a3f-b164-f96a2e4ccb4d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                0.0185185   0.0036666   0.0333705
Birth       ki1000304b-SAS-CompFeed   INDIA         <151 cm              NA                0.0376176   0.0183457   0.0568894
Birth       ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         NA                0.0207469   0.0089754   0.0325184
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=155 cm             NA                0.0620155   0.0203660   0.1036650
Birth       ki1017093c-NIH-Crypto     BANGLADESH    <151 cm              NA                0.0668317   0.0424627   0.0912007
Birth       ki1017093c-NIH-Crypto     BANGLADESH    [151-155) cm         NA                0.0701754   0.0318619   0.1084889
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                0.0662408   0.0329778   0.0995037
Birth       ki1119695-PROBIT          BELARUS       <151 cm              NA                0.0403226   0.0314227   0.0492225
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         NA                0.0403023   0.0103909   0.0702137
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0555701   0.0502984   0.0608418
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0833001   0.0590243   0.1075759
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0644244   0.0510857   0.0777630
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                0.1244567   0.0594468   0.1894667
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              NA                0.0765494   0.0528171   0.1002817
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         NA                0.0613896   0.0241264   0.0986529
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0541850   0.0342928   0.0740772
Birth       ki1135781-COHORTS         INDIA         <151 cm              NA                0.0494496   0.0335240   0.0653751
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0407505   0.0222390   0.0592621
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0386535   0.0235394   0.0537675
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0427637   0.0322991   0.0532283
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0425639   0.0286742   0.0564536
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0175104   0.0113798   0.0236410
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0205190   0.0175283   0.0235097
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0178826   0.0127750   0.0229902
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                0.0176817   0.0055394   0.0298241
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              NA                0.0498812   0.0325212   0.0672413
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         NA                0.0337838   0.0116352   0.0559323
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0088235   0.0064125   0.0112346
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0181818   0.0056969   0.0306667
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0085714   0.0029952   0.0141477
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0221626   0.0097575   0.0345676
6 months    ki1135781-COHORTS         INDIA         <151 cm              NA                0.0390033   0.0254447   0.0525619
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0368886   0.0200568   0.0537204
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0125000   0.0032964   0.0217036
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0131579   0.0071184   0.0191974
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0128535   0.0049369   0.0207701
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0119122   0.0077997   0.0160247
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0145666   0.0116821   0.0174511
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0127388   0.0089118   0.0165658
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0306052   0.0202052   0.0410051
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0422458   0.0364194   0.0480722
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0362636   0.0276220   0.0449053


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0252016   0.0126376   0.0377656
Birth       ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0667614   0.0483100   0.0852128
Birth       ki1119695-PROBIT          BELARUS       NA                   NA                0.0652524   0.0325055   0.0979992
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0582781   0.0534540   0.0631023
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0802139   0.0607354   0.0996924
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0489260   0.0385956   0.0592564
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0193466   0.0169070   0.0217861
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0326264   0.0237765   0.0414763
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0093535   0.0071406   0.0115664
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0335349   0.0252594   0.0418104
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0136847   0.0116040   0.0157654
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0387398   0.0343960   0.0430836


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.0313479   1.1392130   3.6221270
Birth       ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.1203319   0.4420816   2.8391675
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH    <151 cm              >=155 cm          1.0776609   0.5018738   2.3140340
Birth       ki1017093c-NIH-Crypto     BANGLADESH    [151-155) cm         >=155 cm          1.1315789   0.4762055   2.6889043
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT          BELARUS       <151 cm              >=155 cm          0.6087275   0.3716624   0.9970050
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         >=155 cm          0.6084209   0.3884693   0.9529092
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          1.4990091   1.1032628   2.0367119
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          1.1593355   0.9232348   1.4558146
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              >=155 cm          0.6150685   0.3350431   1.1291360
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         >=155 cm          0.4932608   0.2213855   1.0990159
Birth       ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          0.9126068   0.5599684   1.4873183
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          0.7520631   0.4192062   1.3492139
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.1063363   0.6975752   1.7546209
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.1011670   0.6617546   1.8323541
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.1718201   0.8045289   1.7067905
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.0212546   0.6523771   1.5987086
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.8210609   1.4369308   5.5384603
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.9106606   0.9555150   3.8205826
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          2.0606061   0.9840848   4.3147675
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          0.9714286   0.4796946   1.9672380
6 months    ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          1.7598730   0.9105350   3.4014649
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          1.6644562   0.8084367   3.4268790
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.0526316   0.4420422   2.5066230
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0282776   0.3937471   2.6853657
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.2228277   0.8174113   1.8293209
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.0693877   0.6767746   1.6897652
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.3803495   0.9619973   1.9806342
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.1848856   0.7753228   1.8107991


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.0066831    0.0006691    0.0126971
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=155 cm             NA                 0.0047459   -0.0331938    0.0426855
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0009884   -0.0017213   -0.0002555
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0027080    0.0001459    0.0052702
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.0442428   -0.1030524    0.0145667
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.0052590   -0.0214927    0.0109748
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0030851   -0.0104573    0.0166274
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0018362   -0.0036695    0.0073418
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.0149447    0.0082992    0.0215902
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0005300   -0.0006810    0.0017409
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.0113723   -0.0000663    0.0228110
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0004342   -0.0077985    0.0086669
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0017725   -0.0022481    0.0057931
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0081346   -0.0015092    0.0177785


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.2651852   -0.0939816    0.5064334
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=155 cm             NA                 0.0710869   -0.7120973    0.4960102
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0151474   -0.0232190   -0.0071394
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0464676    0.0016311    0.0892904
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.5515604   -1.4719226    0.0261266
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.1074879   -0.4930746    0.1785210
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0739140   -0.3142660    0.3474417
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0949096   -0.2406416    0.3397057
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.4580550    0.1241974    0.6646454
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0566609   -0.0813265    0.1770398
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.3391196   -0.0907456    0.5995740
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0335714   -0.8670734    0.4997603
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.1295236   -0.2149368    0.3763222
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.2099812   -0.0827401    0.4235647
