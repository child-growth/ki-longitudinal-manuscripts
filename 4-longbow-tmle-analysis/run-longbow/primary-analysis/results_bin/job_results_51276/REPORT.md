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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              0       24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm              1        0     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               0      140     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm               1        5     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          0       61     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm          1        3     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              0      105     176
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm              1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               0       46     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm               1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          0       25     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm          1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              0       45     195
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm              1        0     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               0       89     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm               1        5     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          0       54     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm          1        2     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              0       26     167
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm              1        1     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               0       91     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm               1        2     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          0       46     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm          1        1     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              0       56     269
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm              1        0     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               0      156     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm               1        0     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          0       57     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm          1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              0      172     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm              1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               0       28     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm               1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          0       25     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm          1        1     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       74     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               0       19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        1     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              0       51     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm              1        1     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               0       28     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm               1        0     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          0       29     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm          1        1     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               0       14      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm               1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm          1        0      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              0     1092    1323
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm              1        6    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               0       49    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm               1        2    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          0      172    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm          1        2    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              0    12273   13670
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm              1      876   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               0      119   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm               1        5   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          0      381   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm          1       16   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     6853    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1      403    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      458    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1       40    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1221    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1       84    9059
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              0     2550   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm              1       39   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               0     8793   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm               1      154   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          0     4052   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm          1       60   15648
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
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               0      108     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm               1        4     235
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              0       96     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               0      307     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm               1        3     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          0      128     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm          1        2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      125     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        1     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      312     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        3     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      139     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        1     581
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0     5599    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       51    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0      424    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        8    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1012    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1        9    7103
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
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               0      115     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm               1        0     201
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              0      118     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm              1        4     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               0      314     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm               1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          0      136     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm          1        4     577
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
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              0     3795    3941
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm              1        2    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               0       33    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm               1        1    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          0      109    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm          1        1    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              0      240     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm              1       21     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               0       29     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm               1        5     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          0       63     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm          1        2     360
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/df4f7b94-1e6e-4285-bace-692cac1b9520/ca520446-5eb6-46c0-aede-dcce9e849ee4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df4f7b94-1e6e-4285-bace-692cac1b9520/ca520446-5eb6-46c0-aede-dcce9e849ee4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/df4f7b94-1e6e-4285-bace-692cac1b9520/ca520446-5eb6-46c0-aede-dcce9e849ee4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/df4f7b94-1e6e-4285-bace-692cac1b9520/ca520446-5eb6-46c0-aede-dcce9e849ee4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                0.0666210   0.0333280   0.0999141
Birth       ki1119695-PROBIT          BELARUS       <151 cm              NA                0.0403226   0.0314227   0.0492225
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         NA                0.0403023   0.0103909   0.0702137
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0555572   0.0502858   0.0608287
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0789453   0.0549411   0.1029495
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0634984   0.0501554   0.0768414
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                0.1281937   0.0630216   0.1933657
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              NA                0.0763157   0.0526274   0.1000041
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         NA                0.0613598   0.0240492   0.0986704
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0550193   0.0350993   0.0749394
Birth       ki1135781-COHORTS         INDIA         <151 cm              NA                0.0494952   0.0335857   0.0654047
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0416095   0.0232649   0.0599542
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0390313   0.0237934   0.0542692
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0424981   0.0320653   0.0529310
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0427334   0.0288771   0.0565897
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0150455   0.0080602   0.0220308
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0172506   0.0142767   0.0202246
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0145230   0.0104558   0.0185901
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                0.0176817   0.0055394   0.0298241
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              NA                0.0498812   0.0325212   0.0672413
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         NA                0.0337838   0.0116352   0.0559323
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                0.0090265   0.0065602   0.0114929
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              NA                0.0185185   0.0058046   0.0312325
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         NA                0.0088149   0.0030810   0.0145488
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                0.0223914   0.0099049   0.0348778
6 months    ki1135781-COHORTS         INDIA         <151 cm              NA                0.0388640   0.0253130   0.0524151
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         NA                0.0367575   0.0199913   0.0535238
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                0.0125000   0.0032964   0.0217036
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              NA                0.0131579   0.0071184   0.0191974
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         NA                0.0128535   0.0049369   0.0207701
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0118224   0.0077218   0.0159231
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0145934   0.0117008   0.0174859
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0127487   0.0089259   0.0165715
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                0.0295613   0.0191824   0.0399401
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              NA                0.0421893   0.0363619   0.0480166
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         NA                0.0359561   0.0272810   0.0446312


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       NA                   NA                0.0656181   0.0328425   0.0983937
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0581742   0.0533538   0.0629946
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0802139   0.0607354   0.0996924
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0489260   0.0385956   0.0592564
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0161682   0.0137981   0.0185383
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0326264   0.0237765   0.0414763
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0095734   0.0073088   0.0118381
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0335349   0.0252594   0.0418104
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0136847   0.0116040   0.0157654
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0387398   0.0343960   0.0430836


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT          BELARUS       <151 cm              >=155 cm          0.6052531   0.3706026   0.9884746
Birth       ki1119695-PROBIT          BELARUS       [151-155) cm         >=155 cm          0.6049481   0.3856235   0.9490143
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          1.4209717   1.0332934   1.9541021
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          1.1429372   0.9075943   1.4393053
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     <151 cm              >=155 cm          0.5953160   0.3280697   1.0802616
Birth       ki1135781-COHORTS         GUATEMALA     [151-155) cm         >=155 cm          0.4786491   0.2166353   1.0575604
Birth       ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          0.8995957   0.5543507   1.4598564
Birth       ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          0.7562708   0.4274275   1.3381114
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.0888223   0.6866078   1.7266541
Birth       ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0948504   0.6590109   1.8189343
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.1465677   0.6973632   1.8851261
Birth       kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          0.9652713   0.5643863   1.6509059
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.8210609   1.4369308   5.5384603
6 months    ki1000304b-SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.9106606   0.9555150   3.8205826
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <151 cm              >=155 cm          2.0515614   0.9798815   4.2953193
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [151-155) cm         >=155 cm          0.9765512   0.4822644   1.9774471
6 months    ki1135781-COHORTS         INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         <151 cm              >=155 cm          1.7356700   0.8990409   3.3508489
6 months    ki1135781-COHORTS         INDIA         [151-155) cm         >=155 cm          1.6415932   0.7986255   3.3743330
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   <151 cm              >=155 cm          1.0526316   0.4420422   2.5066230
6 months    ki1135781-COHORTS         PHILIPPINES   [151-155) cm         >=155 cm          1.0282776   0.3937471   2.6853657
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.2343782   0.8236887   1.8498367
6 months    kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.0783479   0.6822462   1.7044204
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <151 cm              >=155 cm          1.4271811   0.9842457   2.0694486
24 months   kiGH5241-JiVitA-3         BANGLADESH    [151-155) cm         >=155 cm          1.2163257   0.7873954   1.8789140


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0010029   -0.0017368   -0.0002690
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0026170    0.0000624    0.0051715
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.0479798   -0.1069428    0.0109832
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.0060933   -0.0223378    0.0101511
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0027073   -0.0109438    0.0163583
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0011227   -0.0050528    0.0072983
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.0149447    0.0082992    0.0215902
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0005469   -0.0006919    0.0017857
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.0111435   -0.0003588    0.0226459
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0004342   -0.0077985    0.0086669
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0018623   -0.0021465    0.0058710
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0091785   -0.0004426    0.0187997


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS       >=155 cm             NA                -0.0152838   -0.0233119   -0.0073186
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0449847    0.0001949    0.0877681
Birth       ki1135781-COHORTS         GUATEMALA     >=155 cm             NA                -0.5981476   -1.5149332   -0.0155641
Birth       ki1135781-COHORTS         INDIA         >=155 cm             NA                -0.1245417   -0.5094176    0.1621973
Birth       ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0648621   -0.3263852    0.3407022
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.0694407   -0.4056714    0.3839665
6 months    ki1000304b-SAS-CompFeed   INDIA         >=155 cm             NA                 0.4580550    0.1241974    0.6646454
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=155 cm             NA                 0.0571239   -0.0807771    0.1774295
6 months    ki1135781-COHORTS         INDIA         >=155 cm             NA                 0.3322965   -0.1000010    0.5947022
6 months    ki1135781-COHORTS         PHILIPPINES   >=155 cm             NA                 0.0335714   -0.8670734    0.4997603
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.1360847   -0.2074019    0.3818549
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=155 cm             NA                 0.2369277   -0.0569395    0.4490892
