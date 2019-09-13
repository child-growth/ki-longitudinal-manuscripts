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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        mhtcm           wasted   n_cell       n
----------  -------------------------  -----------------------------  -------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       21     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        3     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      121     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1       24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       52     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1       12     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0      101     176
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        4     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       44     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        2     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       25     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             0       38     195
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             1        7     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              0       77     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              1       17     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       48     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        8     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             0       25     167
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        2     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              0       81     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              1       12     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0       41     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        6     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             0       55     269
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             1        1     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              0      152     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              1        4     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         0       56     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         1        1     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0      163     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        9     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0       25     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        3     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       25     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        1     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0       73     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       22     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        1     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             0       49     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             1        3     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              0       26     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              1        2     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         0       29     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         1        1     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1        1      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             0     1079    1323
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             1       19    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              0       49    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              1        2    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         0      169    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         1        5    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             0    10405   13670
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             1     2744   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              0       98   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              1       26   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         0      314   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         1       83   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0     6176    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1     1080    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0      394    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1      104    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0     1093    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1      212    9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             0       72     748
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             1       31     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              0      360     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              1      124     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         0      127     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         1       34     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             0      406    1676
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             1      102    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm              0      597    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm              1      115    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         0      382    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         1       74    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             0      520    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             1       96    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              0     1216    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              1      229    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         0      712    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         1      126    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     2347   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      242   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0     8052   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1      895   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     3746   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      366   15648
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      151     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       60     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0      120     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             0       51     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              0      103     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              1        9     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       63     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        5     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             0       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              0      130     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0       61     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        2     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             0       58     272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              0      157     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         0       57     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0      182     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0      147     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       51     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        1     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             0      455    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             1       54    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              0      360    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              1       61    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         0      265    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         1       31    1226
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             0       64     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             1       11     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              0      170     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              1       32     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         0       77     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         1       25     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0       91     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0      289     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1       21     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0      122     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1        8     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0      120     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1        6     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      302     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       13     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0      135     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1        5     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0      133     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0      397     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             0     1197    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1       48    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0      298    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       11    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0      415    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       26    1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             0     1476    1877
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             1       92    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              0       58    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              1        9    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         0      236    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         1        6    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             0       36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             1        0     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              0      140     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              1        1     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         0       53     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         1        1     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             0    12435   13030
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             1       96   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              0      120   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              1        1   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         0      372   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         1        6   13030
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0     5476    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1      174    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0      416    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1       16    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0      988    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1       33    7103
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             0      113     946
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             1        4     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              0      609     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              1       23     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         0      193     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         1        4     946
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             0      477    1819
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             1       64    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm              0      684    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm              1      107    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         0      437    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         1       50    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             0      526    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             1       34    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              0     1284    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              1       84    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         0      735    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         1       43    2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             0      506     836
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             1        7     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              0      129     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              1        2     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         0      187     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         1        5     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     2470   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      181   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0     8929   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1      858   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     3920   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      376   16734
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      124     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       48     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1        5     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0       92     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       31     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             0       50     226
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             1        3     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              0       91     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              1       19     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       58     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        5     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              0      125     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0       60     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        1     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             0       46     201
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              0      113     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              1        2     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         0       39     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0      180     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0       26     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0      126     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       39     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       45     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        3     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0       67     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        9     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0      222     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1       30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0       86     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1       14     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0      109     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1       13     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      277     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0      126     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1       14     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0      259     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0      117     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1       10     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        0       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             0     1191    1603
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             1      148    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              0       50    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              1       10    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         0      184    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         1       20    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             0     3757    3941
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             1       40    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0       33    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              1        1    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         0      108    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1        2    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0      215     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1       46     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0       24     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1       10     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0       57     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1        8     360
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             0      121    1006
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             1        7    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              0      637    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              1       31    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         0      202    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         1        8    1006
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             0      515    1803
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             1       34    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm              0      698    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm              1       78    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         0      444    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         1       34    1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             0      479    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             1       28    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              0     1144    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              1       95    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         0      659    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         1       44    2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             0      340     561
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             1        5     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              0       90     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              1        2     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         0      121     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         1        3     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     1065    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      240    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0     3867    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1     1185    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     1770    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      443    8570


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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/aaababc0-428f-4e9f-bbf5-af9cf253d8a9/96ed69f2-c211-482a-a2e9-a89b3914f7b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aaababc0-428f-4e9f-bbf5-af9cf253d8a9/96ed69f2-c211-482a-a2e9-a89b3914f7b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aaababc0-428f-4e9f-bbf5-af9cf253d8a9/96ed69f2-c211-482a-a2e9-a89b3914f7b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aaababc0-428f-4e9f-bbf5-af9cf253d8a9/96ed69f2-c211-482a-a2e9-a89b3914f7b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1555556   0.0493893   0.2617218
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1808511   0.1028424   0.2588597
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1428571   0.0509714   0.2347429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2087855   0.1429662   0.2746048
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2096472   0.1813280   0.2379663
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2052140   0.1319679   0.2784601
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1489090   0.1407180   0.1571000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2069253   0.1711020   0.2427486
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1627880   0.1427595   0.1828166
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2823337   0.1933475   0.3713200
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2535189   0.2146061   0.2924317
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2043439   0.1407803   0.2679074
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2005033   0.1656707   0.2353359
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1618809   0.1347783   0.1889834
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1625748   0.1286878   0.1964619
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1561903   0.1274538   0.1849268
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1579673   0.1391449   0.1767898
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1513132   0.1268530   0.1757735
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0928053   0.0796379   0.1059726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0997605   0.0930310   0.1064900
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0893690   0.0801180   0.0986201
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1032014   0.0675901   0.1388127
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1446736   0.1121535   0.1771937
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1067327   0.0763024   0.1371629
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1354457   0.0536666   0.2172249
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1602269   0.1096612   0.2107926
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2388115   0.1546457   0.3229772
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0520833   0.0075944   0.0965723
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0677419   0.0397412   0.0957427
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0615385   0.0201896   0.1028873
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0476190   0.0104028   0.0848353
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0412698   0.0192846   0.0632551
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0357143   0.0049475   0.0664811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0380267   0.0274317   0.0486218
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0369500   0.0152614   0.0586386
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0580388   0.0361191   0.0799584
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586735   0.0470381   0.0703089
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1343284   0.0526538   0.2160029
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0247934   0.0051972   0.0443896
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0308204   0.0263090   0.0353318
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0364114   0.0187340   0.0540887
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0325098   0.0214679   0.0435517
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1184938   0.0912565   0.1457312
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1351570   0.1112815   0.1590325
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1024422   0.0754155   0.1294690
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0604300   0.0407191   0.0801409
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0613547   0.0486244   0.0740849
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0551658   0.0390911   0.0712406
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0673368   0.0566399   0.0780338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0877553   0.0813198   0.0941908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0876778   0.0781561   0.0971995
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1071083   0.0513318   0.1628848
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1196710   0.0837426   0.1555993
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1014173   0.0502316   0.1526030
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1105471   0.0937417   0.1273526
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1641094   0.0686584   0.2595604
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0972054   0.0562601   0.1381507
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1762452   0.1299550   0.2225355
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407480   0.4474873
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1230769   0.0431000   0.2030538
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0630613   0.0428281   0.0832945
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1005621   0.0793821   0.1217421
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0720426   0.0489468   0.0951384
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0554406   0.0353806   0.0755006
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0765762   0.0617618   0.0913906
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0621605   0.0443321   0.0799890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1832496   0.1596634   0.2068358
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2344295   0.2214411   0.2474179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1999506   0.1821720   0.2177293


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1641026   0.1119853   0.2162198
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2087052   0.1431637   0.2742466
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1541009   0.1466657   0.1615361
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2526738   0.2215120   0.2838356
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1736277   0.1554877   0.1917677
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0960506   0.0908379   0.1012634
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1190865   0.0945854   0.1435876
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1794195   0.1407385   0.2181005
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413081   0.0251127   0.0575035
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426065   0.0337417   0.0514713
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0570059   0.0465142   0.0674976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0313952   0.0273395   0.0354509
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1214953   0.1064776   0.1365130
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845584   0.0797428   0.0893740
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1110418   0.0956567   0.1264269
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1777778   0.1382289   0.2173267
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0457256   0.0328110   0.0586403
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0809762   0.0683807   0.0935716
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2179697   0.2080911   0.2278482


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.1626140   0.5185563   2.6066046
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          0.9183673   0.3595222   2.3458874
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          1.0041268   0.7555328   1.3345160
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9828938   0.8256883   1.1700303
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3896093   1.1587646   1.6664418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0932049   0.9554007   1.2508856
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8979406   0.6319797   1.2758279
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.7237671   0.4651396   1.1261970
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8073725   0.6342400   1.0277661
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8108337   0.6181029   1.0636599
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0113772   0.8125106   1.2589175
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9687748   0.7584006   1.2375052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0749444   0.9177943   1.2590027
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9629738   0.8066109   1.1496479
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4018576   0.9524414   2.0633339
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0342176   0.7366885   1.4519109
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1829602   0.5980311   2.3400034
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.7631523   0.8773167   3.5434251
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3006452   0.5035452   3.3595353
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1815385   0.3985299   3.5029571
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.8666667   0.3365757   2.2316260
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7500000   0.2343733   2.4000175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9716847   0.5073532   1.8609744
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5262625   0.9544810   2.4405696
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.2894225   1.2077457   4.3398665
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.4225656   0.1870667   0.9545346
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1814054   0.7114802   1.9617111
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0548147   0.7286773   1.5269228
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1406246   0.8535204   1.5243039
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8645362   0.6092593   1.2267731
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0153019   0.6897422   1.4945265
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9128885   0.5894945   1.4136951
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.3032294   1.0932603   1.5535246
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3020782   1.0764080   1.5750604
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1172892   0.6122901   2.0387967
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9468666   0.4583760   1.9559411
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.4845195   0.8137631   2.7081567
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8793119   0.5618789   1.3760783
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6687980   0.9307512   2.9920849
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.6983278   0.3464727   1.4075040
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.5946725   1.0863978   2.3407452
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1424216   0.7259339   1.7978594
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3812297   0.9162610   2.0821528
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1212095   0.7065385   1.7792529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2792903   1.1138778   1.4692670
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0911379   0.9381968   1.2690108


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0085470   -0.0851832   0.1022772
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0000803   -0.0013039   0.0011432
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0051919    0.0013336   0.0090502
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0296599   -0.1119229   0.0526030
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0268756   -0.0553006   0.0015493
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0006194   -0.0261269   0.0248880
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0032454   -0.0088234   0.0153141
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0158851   -0.0062387   0.0380089
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0439738   -0.0308423   0.1187898
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0113495   -0.0298434   0.0525424
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0063110   -0.0386621   0.0260402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0045798   -0.0024596   0.0116192
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571   0.0027219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005748   -0.0015423   0.0026919
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0030015   -0.0199438   0.0259467
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0009326   -0.0184500   0.0165848
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0172216    0.0071813   0.0272618
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227   0.0716442
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0055433   -0.0443444   0.0554310
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912   0.0636885
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0004947   -0.0063958   0.0073851
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015326   -0.0229595   0.0260246
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572   0.0274334
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0179149    0.0000354   0.0357943
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0127505   -0.0056141   0.0311151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0347200    0.0133442   0.0560959


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0520833   -0.7313547    0.4810156
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003850   -0.0062394    0.0054355
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0336917    0.0083624    0.0583740
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1173843   -0.4950963    0.1649048
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1547888   -0.3302154   -0.0024971
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0039817   -0.1820893    0.1472902
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0337879   -0.1004227    0.1516299
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1333913   -0.0818036    0.3057792
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2450892   -0.3109345    0.5652793
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1789216   -0.8056720    0.6266377
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1527778   -1.2699462    0.4145691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1074903   -0.0724020    0.2572062
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0183085   -0.0514536    0.0834420
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0247045   -0.1836528    0.1963849
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0156743   -0.3572023    0.2399111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2036648    0.0762948    0.3134717
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0492077   -0.5147579    0.4032010
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0044548   -0.0595707    0.0646114
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0086207   -0.1391700    0.1372377
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2212363   -0.0305966    0.4115322
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1869818   -0.1306364    0.4153748
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1592884    0.0549390    0.2521160
