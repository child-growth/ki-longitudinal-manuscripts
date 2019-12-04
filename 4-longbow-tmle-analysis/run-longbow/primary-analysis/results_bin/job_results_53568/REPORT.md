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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             0       19     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             1        2     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              0      111     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              1       23     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         0       44     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         1       10     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             0       31      61
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             1        1      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              0       18      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              1        1      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         0       10      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         1        0      61
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             0        9      41
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             1        2      41
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              0       16      41
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              1        3      41
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         0       11      41
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              0       11      26
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              1        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         0        7      26
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         1        0      26
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             0       46     221
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             1        1     221
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              0      123     221
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              1        4     221
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         0       47     221
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         1        0     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             0       73     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             1        7     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              0        6     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              1        3     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         0       11     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         1        0     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             0       66     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        1     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              0       21     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       25     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        0     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             0      386     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             1       46     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              0      278     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              1       41     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         0      221     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         1       20     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0       76     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1       31     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0      225     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1      108     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0      106     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1       29     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0       89     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1       19     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      215     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       66     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0       93     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1       28     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             0      102     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             1       27     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              0      299     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              1      105     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         0      132     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         1       39     704
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             0      855    1362
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             1      280    1362
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              0       32    1362
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              1       14    1362
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         0      135    1362
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         1       46    1362
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             0    10406   13670
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             1     2743   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              0       98   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              1       26   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         0      314   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         1       83   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0     6176    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1     1080    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0      394    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1      105    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0     1093    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1      212    9060
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             0     2656   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             1      310   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              0     9086   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              1     1173   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         0     4226   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         1      485   17936
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
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             0       50     235
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             1        5     235
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             0       91     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              0      289     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              1       22     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         0      122     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         1        8     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0      122     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1        6     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      315     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       14     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0      140     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1        5     602
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0     5606    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1      174    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0      424    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1       16    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0     1017    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1       33    7270
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
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              0      112     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              1        3     201
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             0      111     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             1       11     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              0      279     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              1       37     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         0      126     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         1       14     578
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
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             0     3758    3942
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             1       40    3942
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0       33    3942
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              1        1    3942
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         0      108    3942
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1        2    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             0      221     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             1       46     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              0       24     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              1       10     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         0       58     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         1        8     367
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/56eff374-abc3-44fc-abd1-3889371756c3/02a07963-3f63-4c15-92e0-09f2d6ad7a17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/56eff374-abc3-44fc-abd1-3889371756c3/02a07963-3f63-4c15-92e0-09f2d6ad7a17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/56eff374-abc3-44fc-abd1-3889371756c3/02a07963-3f63-4c15-92e0-09f2d6ad7a17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/56eff374-abc3-44fc-abd1-3889371756c3/02a07963-3f63-4c15-92e0-09f2d6ad7a17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1061621   0.0645096   0.1478146
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1259158   0.0929619   0.1588698
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0830402   0.0481955   0.1178848
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3004063   0.2134866   0.3873259
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3238903   0.2735939   0.3741868
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2254090   0.1557803   0.2950377
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1739224   0.1025464   0.2452983
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2334944   0.1839818   0.2830071
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2352943   0.1587020   0.3118866
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2209488   0.1499339   0.2919637
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2606497   0.2178739   0.3034255
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2304548   0.1676535   0.2932562
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2460965   0.2209975   0.2711954
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2978814   0.1606013   0.4351614
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.2523620   0.1880973   0.3166266
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2086351   0.1428954   0.2743749
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2097988   0.1806171   0.2389806
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2112924   0.1387168   0.2838680
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1488389   0.1406477   0.1570301
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2066248   0.1703720   0.2428776
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1631194   0.1430094   0.1832294
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3094321   0.2201532   0.3987109
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2551524   0.2162928   0.2940120
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2155206   0.1516660   0.2793751
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2003943   0.1654843   0.2353044
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1618655   0.1347262   0.1890047
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1616717   0.1277323   0.1956111
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1587825   0.1296588   0.1879063
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.1574452   0.1385070   0.1763834
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1524820   0.1276811   0.1772828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1042274   0.0916281   0.1168267
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1140201   0.1075542   0.1204861
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1032667   0.0938629   0.1126706
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.0909091   0.0147713   0.1670468
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.0803571   0.0299042   0.1308101
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.0735294   0.0113615   0.1356973
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1032014   0.0675901   0.1388127
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1446736   0.1121535   0.1771937
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1067327   0.0763024   0.1371629
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1431413   0.0598103   0.2264724
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1578764   0.1074371   0.2083156
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2321706   0.1472221   0.3171190
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0520833   0.0075944   0.0965722
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0707395   0.0422180   0.0992611
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0615385   0.0201897   0.1028872
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0468750   0.0102270   0.0835230
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0425532   0.0207242   0.0643822
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0344828   0.0047588   0.0642067
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0381324   0.0275037   0.0487611
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0364384   0.0153095   0.0575672
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0586761   0.0367060   0.0806461
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0586735   0.0470381   0.0703089
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1343284   0.0526538   0.2160029
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0247934   0.0051972   0.0443896
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0300960   0.0256865   0.0345055
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0361555   0.0189294   0.0533817
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0317704   0.0210011   0.0425397
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1177919   0.0905339   0.1450498
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1350339   0.1111567   0.1589112
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1020837   0.0749957   0.1291717
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0600478   0.0404503   0.0796453
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0614032   0.0486741   0.0741324
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0550875   0.0390959   0.0710791
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0675408   0.0568317   0.0782500
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0877056   0.0812834   0.0941279
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0876197   0.0781585   0.0970808
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0897261   0.0390071   0.1404452
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1163946   0.0810367   0.1517526
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1014187   0.0506930   0.1521445
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1106233   0.0938181   0.1274286
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1753161   0.0776815   0.2729506
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0980569   0.0572831   0.1388308
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1722846   0.1269272   0.2176421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407521   0.4474832
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1212121   0.0423654   0.2000588
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0624754   0.0421931   0.0827576
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1002507   0.0790824   0.1214191
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0711032   0.0479743   0.0942321
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0554355   0.0353596   0.0755113
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0765358   0.0617152   0.0913563
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0624571   0.0445162   0.0803980
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1841893   0.1606442   0.2077343
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2343610   0.2213607   0.2473613
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2003962   0.1826073   0.2181852


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1078629   0.0749278   0.1407980
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2215686   0.1854897   0.2576475
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2428977   0.2111977   0.2745977
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.2496329   0.2266393   0.2726265
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2086320   0.1431813   0.2740828
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1541943   0.1467576   0.1616309
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2526738   0.2215120   0.2838356
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1736277   0.1554877   0.1917677
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1097235   0.1045842   0.1148627
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0808511   0.0459229   0.1157792
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1190865   0.0945854   0.1435876
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1794195   0.1407385   0.2181005
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0415282   0.0255778   0.0574787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426065   0.0337417   0.0514713
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0570059   0.0465142   0.0674976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0306740   0.0267100   0.0346380
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1214953   0.1064776   0.1365130
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845584   0.0797428   0.0893740
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1110418   0.0956567   0.1264269
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1743869   0.1355135   0.2132603
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0457256   0.0328110   0.0586403
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0809762   0.0683807   0.0935716
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2179697   0.2080911   0.2278482


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.1860714   0.8633478   1.6294307
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.7822016   0.5669956   1.0790901
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0781744   0.7767713   1.4965280
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.7503472   0.4915229   1.1454624
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.3425207   0.8459388   2.1306056
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.3528695   0.8015946   2.2832687
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1796835   0.8221519   1.6926960
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0430236   0.6841096   1.5902395
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.2104251   0.7549919   1.9405890
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0254596   0.7795241   1.3489863
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          1.0055777   0.7603075   1.3299707
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.0127364   0.8529471   1.2024601
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3882445   1.1549905   1.6686049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0959458   0.9575245   1.2543774
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8245831   0.5952020   1.1423638
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965037   0.4605497   1.0533445
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8077349   0.6342078   1.0287411
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8067679   0.6141200   1.0598489
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9915775   0.7964613   1.2344930
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9603194   0.7516555   1.2269096
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0939553   0.9610020   1.2453025
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9907829   0.8512477   1.1531906
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.8839286   0.3103337   2.5177079
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          0.8088235   0.2460434   2.6588624
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4018576   0.9524414   2.0633339
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0342176   0.7366885   1.4519109
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1029406   0.5677090   2.1427844
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.6219674   0.8143521   3.2305168
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3581994   0.5281355   3.4928641
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1815385   0.3985306   3.5029505
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.9078014   0.3563570   2.3125779
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.7356322   0.2297507   2.3553998
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9555752   0.5021016   1.8186039
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5387464   0.9646270   2.4545658
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.2894225   1.2077457   4.3398665
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.4225656   0.1870667   0.9545346
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2013411   0.7297576   1.9776708
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0556344   0.7296693   1.5272180
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.1463774   0.8567617   1.5338936
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8666448   0.6094663   1.2323457
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0225717   0.6945750   1.5054571
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9173935   0.5927579   1.4198221
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2985572   1.0898208   1.5472735
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.2972846   1.0732056   1.5681499
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2972212   0.6826020   2.4652476
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.1303144   0.5311552   2.4053434
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.5848018   0.8897314   2.8228707
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8864035   0.5693419   1.3800339
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7071611   0.9518922   3.0616902
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.7035573   0.3487679   1.4192615
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.6046437   1.0891791   2.3640569
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1380994   0.7186541   1.8023554
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3806282   0.9156013   2.0818388
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1266629   0.7096119   1.7888218
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.2723923   1.1086978   1.4602556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0879908   0.9361686   1.2644347


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0017008   -0.0155515   0.0189531
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0082323   -0.0866951   0.0702304
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0476462   -0.0173954   0.1126879
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0219489   -0.0431517   0.0870495
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0035364   -0.0068971   0.0139700
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0000031   -0.0012159   0.0012097
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0053553    0.0014848   0.0092258
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0567583   -0.1389917   0.0254752
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0267666   -0.0552446   0.0017114
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0032117   -0.0290965   0.0226731
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0054960   -0.0057214   0.0167134
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0100580   -0.0756588   0.0555428
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0158851   -0.0062387   0.0380089
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0362782   -0.0398617   0.1124181
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0130936   -0.0282376   0.0544247
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0053468   -0.0373834   0.0266899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0044741   -0.0025800   0.0115283
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571   0.0027219
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005780   -0.0014907   0.0026468
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0037035   -0.0192563   0.0266632
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0005504   -0.0179689   0.0168680
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0170175    0.0069736   0.0270615
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227   0.0716442
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0175403   -0.0285387   0.0636193
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912   0.0636885
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0004184   -0.0064732   0.0073101
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021023   -0.0218766   0.0260812
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572   0.0274334
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0185008    0.0005735   0.0364280
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0127556   -0.0056222   0.0311334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0337804    0.0124276   0.0551332


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0157682   -0.1597432    0.1647183
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0281762   -0.3350781    0.2081765
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.2150405   -0.1392210    0.4591380
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0903628   -0.2209009    0.3222711
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0141664   -0.0285275    0.0550881
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0000148   -0.0058439    0.0057805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0347311    0.0093383    0.0594730
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2246306   -0.5972933    0.0610867
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1541610   -0.3299028   -0.0016429
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0206443   -0.2013591    0.1328864
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0500899   -0.0580248    0.1471570
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1244019   -1.3107895    0.4528798
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1333913   -0.0818036    0.3057792
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2021976   -0.3574279    0.5311068
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2008929   -0.7605959    0.6372977
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1287500   -1.2328788    0.4294018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1050103   -0.0753570    0.2551250
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0188439   -0.0509305    0.0839859
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0304823   -0.1781503    0.2021692
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0092513   -0.3488908    0.2448698
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2012520    0.0738344    0.3111401
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1635209   -0.3956092    0.4986439
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0037684   -0.0602668    0.0639361
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0120552   -0.1354601    0.1404058
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.2284717   -0.0245374    0.4190003
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1870570   -0.1308529    0.4155948
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1549775    0.0508127    0.2477112
