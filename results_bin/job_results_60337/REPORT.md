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

agecat      studyid          country                        mhtcm           swasted   n_cell       n
----------  ---------------  -----------------------------  -------------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm              0       90     748
Birth       COHORTS          GUATEMALA                      >=155 cm              1       13     748
Birth       COHORTS          GUATEMALA                      <151 cm               0      447     748
Birth       COHORTS          GUATEMALA                      <151 cm               1       37     748
Birth       COHORTS          GUATEMALA                      [151-155) cm          0      151     748
Birth       COHORTS          GUATEMALA                      [151-155) cm          1       10     748
Birth       COHORTS          INDIA                          >=155 cm              0      480    1676
Birth       COHORTS          INDIA                          >=155 cm              1       28    1676
Birth       COHORTS          INDIA                          <151 cm               0      677    1676
Birth       COHORTS          INDIA                          <151 cm               1       35    1676
Birth       COHORTS          INDIA                          [151-155) cm          0      437    1676
Birth       COHORTS          INDIA                          [151-155) cm          1       19    1676
Birth       COHORTS          PHILIPPINES                    >=155 cm              0      592    2899
Birth       COHORTS          PHILIPPINES                    >=155 cm              1       24    2899
Birth       COHORTS          PHILIPPINES                    <151 cm               0     1383    2899
Birth       COHORTS          PHILIPPINES                    <151 cm               1       62    2899
Birth       COHORTS          PHILIPPINES                    [151-155) cm          0      803    2899
Birth       COHORTS          PHILIPPINES                    [151-155) cm          1       35    2899
Birth       JiVitA-3         BANGLADESH                     >=155 cm              0     2914   17936
Birth       JiVitA-3         BANGLADESH                     >=155 cm              1       52   17936
Birth       JiVitA-3         BANGLADESH                     <151 cm               0    10048   17936
Birth       JiVitA-3         BANGLADESH                     <151 cm               1      211   17936
Birth       JiVitA-3         BANGLADESH                     [151-155) cm          0     4627   17936
Birth       JiVitA-3         BANGLADESH                     [151-155) cm          1       84   17936
Birth       Keneba           GAMBIA                         >=155 cm              0     1061    1362
Birth       Keneba           GAMBIA                         >=155 cm              1       74    1362
Birth       Keneba           GAMBIA                         <151 cm               0       42    1362
Birth       Keneba           GAMBIA                         <151 cm               1        4    1362
Birth       Keneba           GAMBIA                         [151-155) cm          0      161    1362
Birth       Keneba           GAMBIA                         [151-155) cm          1       20    1362
Birth       MAL-ED           BANGLADESH                     >=155 cm              0       21     209
Birth       MAL-ED           BANGLADESH                     >=155 cm              1        0     209
Birth       MAL-ED           BANGLADESH                     <151 cm               0      129     209
Birth       MAL-ED           BANGLADESH                     <151 cm               1        5     209
Birth       MAL-ED           BANGLADESH                     [151-155) cm          0       51     209
Birth       MAL-ED           BANGLADESH                     [151-155) cm          1        3     209
Birth       MAL-ED           BRAZIL                         >=155 cm              0       32      61
Birth       MAL-ED           BRAZIL                         >=155 cm              1        0      61
Birth       MAL-ED           BRAZIL                         <151 cm               0       19      61
Birth       MAL-ED           BRAZIL                         <151 cm               1        0      61
Birth       MAL-ED           BRAZIL                         [151-155) cm          0       10      61
Birth       MAL-ED           BRAZIL                         [151-155) cm          1        0      61
Birth       MAL-ED           INDIA                          >=155 cm              0       11      41
Birth       MAL-ED           INDIA                          >=155 cm              1        0      41
Birth       MAL-ED           INDIA                          <151 cm               0       19      41
Birth       MAL-ED           INDIA                          <151 cm               1        0      41
Birth       MAL-ED           INDIA                          [151-155) cm          0       11      41
Birth       MAL-ED           INDIA                          [151-155) cm          1        0      41
Birth       MAL-ED           NEPAL                          >=155 cm              0        6      26
Birth       MAL-ED           NEPAL                          >=155 cm              1        0      26
Birth       MAL-ED           NEPAL                          <151 cm               0       12      26
Birth       MAL-ED           NEPAL                          <151 cm               1        1      26
Birth       MAL-ED           NEPAL                          [151-155) cm          0        7      26
Birth       MAL-ED           NEPAL                          [151-155) cm          1        0      26
Birth       MAL-ED           PERU                           >=155 cm              0       47     221
Birth       MAL-ED           PERU                           >=155 cm              1        0     221
Birth       MAL-ED           PERU                           <151 cm               0      127     221
Birth       MAL-ED           PERU                           <151 cm               1        0     221
Birth       MAL-ED           PERU                           [151-155) cm          0       47     221
Birth       MAL-ED           PERU                           [151-155) cm          1        0     221
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm              0       80     100
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm              1        0     100
Birth       MAL-ED           SOUTH AFRICA                   <151 cm               0        9     100
Birth       MAL-ED           SOUTH AFRICA                   <151 cm               1        0     100
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm          0       11     100
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm          1        0     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       67     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       21     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       25     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     113
Birth       NIH-Birth        BANGLADESH                     >=155 cm              0      101     575
Birth       NIH-Birth        BANGLADESH                     >=155 cm              1        6     575
Birth       NIH-Birth        BANGLADESH                     <151 cm               0      305     575
Birth       NIH-Birth        BANGLADESH                     <151 cm               1       28     575
Birth       NIH-Birth        BANGLADESH                     [151-155) cm          0      131     575
Birth       NIH-Birth        BANGLADESH                     [151-155) cm          1        4     575
Birth       NIH-Crypto       BANGLADESH                     >=155 cm              0      121     704
Birth       NIH-Crypto       BANGLADESH                     >=155 cm              1        8     704
Birth       NIH-Crypto       BANGLADESH                     <151 cm               0      377     704
Birth       NIH-Crypto       BANGLADESH                     <151 cm               1       27     704
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm          0      159     704
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm          1       12     704
Birth       PROBIT           BELARUS                        >=155 cm              0    12254   13657
Birth       PROBIT           BELARUS                        >=155 cm              1      882   13657
Birth       PROBIT           BELARUS                        <151 cm               0      118   13657
Birth       PROBIT           BELARUS                        <151 cm               1        6   13657
Birth       PROBIT           BELARUS                        [151-155) cm          0      379   13657
Birth       PROBIT           BELARUS                        [151-155) cm          1       18   13657
Birth       PROVIDE          BANGLADESH                     >=155 cm              0      106     510
Birth       PROVIDE          BANGLADESH                     >=155 cm              1        2     510
Birth       PROVIDE          BANGLADESH                     <151 cm               0      273     510
Birth       PROVIDE          BANGLADESH                     <151 cm               1        8     510
Birth       PROVIDE          BANGLADESH                     [151-155) cm          0      119     510
Birth       PROVIDE          BANGLADESH                     [151-155) cm          1        2     510
Birth       SAS-CompFeed     INDIA                          >=155 cm              0      424     992
Birth       SAS-CompFeed     INDIA                          >=155 cm              1        8     992
Birth       SAS-CompFeed     INDIA                          <151 cm               0      307     992
Birth       SAS-CompFeed     INDIA                          <151 cm               1       12     992
Birth       SAS-CompFeed     INDIA                          [151-155) cm          0      236     992
Birth       SAS-CompFeed     INDIA                          [151-155) cm          1        5     992
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm              0     6853    9060
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm              1      403    9060
Birth       ZVITAMBO         ZIMBABWE                       <151 cm               0      458    9060
Birth       ZVITAMBO         ZIMBABWE                       <151 cm               1       41    9060
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1221    9060
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm          1       84    9060
6 months    COHORTS          GUATEMALA                      >=155 cm              0      117     946
6 months    COHORTS          GUATEMALA                      >=155 cm              1        0     946
6 months    COHORTS          GUATEMALA                      <151 cm               0      628     946
6 months    COHORTS          GUATEMALA                      <151 cm               1        4     946
6 months    COHORTS          GUATEMALA                      [151-155) cm          0      195     946
6 months    COHORTS          GUATEMALA                      [151-155) cm          1        2     946
6 months    COHORTS          INDIA                          >=155 cm              0      529    1819
6 months    COHORTS          INDIA                          >=155 cm              1       12    1819
6 months    COHORTS          INDIA                          <151 cm               0      760    1819
6 months    COHORTS          INDIA                          <151 cm               1       31    1819
6 months    COHORTS          INDIA                          [151-155) cm          0      469    1819
6 months    COHORTS          INDIA                          [151-155) cm          1       18    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm              0      553    2706
6 months    COHORTS          PHILIPPINES                    >=155 cm              1        7    2706
6 months    COHORTS          PHILIPPINES                    <151 cm               0     1350    2706
6 months    COHORTS          PHILIPPINES                    <151 cm               1       18    2706
6 months    COHORTS          PHILIPPINES                    [151-155) cm          0      768    2706
6 months    COHORTS          PHILIPPINES                    [151-155) cm          1       10    2706
6 months    Guatemala BSC    GUATEMALA                      >=155 cm              0       36     231
6 months    Guatemala BSC    GUATEMALA                      >=155 cm              1        0     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm               0      141     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm               1        0     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          0       54     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          1        0     231
6 months    JiVitA-3         BANGLADESH                     >=155 cm              0     2619   16734
6 months    JiVitA-3         BANGLADESH                     >=155 cm              1       32   16734
6 months    JiVitA-3         BANGLADESH                     <151 cm               0     9644   16734
6 months    JiVitA-3         BANGLADESH                     <151 cm               1      143   16734
6 months    JiVitA-3         BANGLADESH                     [151-155) cm          0     4242   16734
6 months    JiVitA-3         BANGLADESH                     [151-155) cm          1       54   16734
6 months    Keneba           GAMBIA                         >=155 cm              0     1541    1877
6 months    Keneba           GAMBIA                         >=155 cm              1       27    1877
6 months    Keneba           GAMBIA                         <151 cm               0       64    1877
6 months    Keneba           GAMBIA                         <151 cm               1        3    1877
6 months    Keneba           GAMBIA                         [151-155) cm          0      242    1877
6 months    Keneba           GAMBIA                         [151-155) cm          1        0    1877
6 months    LCNI-5           MALAWI                         >=155 cm              0      513     836
6 months    LCNI-5           MALAWI                         >=155 cm              1        0     836
6 months    LCNI-5           MALAWI                         <151 cm               0      131     836
6 months    LCNI-5           MALAWI                         <151 cm               1        0     836
6 months    LCNI-5           MALAWI                         [151-155) cm          0      192     836
6 months    LCNI-5           MALAWI                         [151-155) cm          1        0     836
6 months    MAL-ED           BANGLADESH                     >=155 cm              0       23     241
6 months    MAL-ED           BANGLADESH                     >=155 cm              1        1     241
6 months    MAL-ED           BANGLADESH                     <151 cm               0      156     241
6 months    MAL-ED           BANGLADESH                     <151 cm               1        0     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm          0       60     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm          1        1     241
6 months    MAL-ED           BRAZIL                         >=155 cm              0      121     209
6 months    MAL-ED           BRAZIL                         >=155 cm              1        0     209
6 months    MAL-ED           BRAZIL                         <151 cm               0       51     209
6 months    MAL-ED           BRAZIL                         <151 cm               1        0     209
6 months    MAL-ED           BRAZIL                         [151-155) cm          0       37     209
6 months    MAL-ED           BRAZIL                         [151-155) cm          1        0     209
6 months    MAL-ED           INDIA                          >=155 cm              0       54     235
6 months    MAL-ED           INDIA                          >=155 cm              1        1     235
6 months    MAL-ED           INDIA                          <151 cm               0      107     235
6 months    MAL-ED           INDIA                          <151 cm               1        5     235
6 months    MAL-ED           INDIA                          [151-155) cm          0       68     235
6 months    MAL-ED           INDIA                          [151-155) cm          1        0     235
6 months    MAL-ED           NEPAL                          >=155 cm              0       41     236
6 months    MAL-ED           NEPAL                          >=155 cm              1        0     236
6 months    MAL-ED           NEPAL                          <151 cm               0      132     236
6 months    MAL-ED           NEPAL                          <151 cm               1        0     236
6 months    MAL-ED           NEPAL                          [151-155) cm          0       63     236
6 months    MAL-ED           NEPAL                          [151-155) cm          1        0     236
6 months    MAL-ED           PERU                           >=155 cm              0       58     272
6 months    MAL-ED           PERU                           >=155 cm              1        0     272
6 months    MAL-ED           PERU                           <151 cm               0      157     272
6 months    MAL-ED           PERU                           <151 cm               1        0     272
6 months    MAL-ED           PERU                           [151-155) cm          0       57     272
6 months    MAL-ED           PERU                           [151-155) cm          1        0     272
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              0      185     249
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              1        2     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm               0       31     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm               1        0     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          0       30     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          1        1     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      147     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       48     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       52     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     247
6 months    NIH-Birth        BANGLADESH                     >=155 cm              0       96     537
6 months    NIH-Birth        BANGLADESH                     >=155 cm              1        0     537
6 months    NIH-Birth        BANGLADESH                     <151 cm               0      307     537
6 months    NIH-Birth        BANGLADESH                     <151 cm               1        4     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm          0      128     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm          1        2     537
6 months    NIH-Crypto       BANGLADESH                     >=155 cm              0      134     715
6 months    NIH-Crypto       BANGLADESH                     >=155 cm              1        0     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm               0      411     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm               1        0     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          0      170     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          1        0     715
6 months    PROBIT           BELARUS                        >=155 cm              0    12525   13029
6 months    PROBIT           BELARUS                        >=155 cm              1        5   13029
6 months    PROBIT           BELARUS                        <151 cm               0      121   13029
6 months    PROBIT           BELARUS                        <151 cm               1        0   13029
6 months    PROBIT           BELARUS                        [151-155) cm          0      378   13029
6 months    PROBIT           BELARUS                        [151-155) cm          1        0   13029
6 months    PROVIDE          BANGLADESH                     >=155 cm              0      127     602
6 months    PROVIDE          BANGLADESH                     >=155 cm              1        1     602
6 months    PROVIDE          BANGLADESH                     <151 cm               0      326     602
6 months    PROVIDE          BANGLADESH                     <151 cm               1        3     602
6 months    PROVIDE          BANGLADESH                     [151-155) cm          0      144     602
6 months    PROVIDE          BANGLADESH                     [151-155) cm          1        1     602
6 months    SAS-CompFeed     INDIA                          >=155 cm              0      500    1226
6 months    SAS-CompFeed     INDIA                          >=155 cm              1        9    1226
6 months    SAS-CompFeed     INDIA                          <151 cm               0      400    1226
6 months    SAS-CompFeed     INDIA                          <151 cm               1       21    1226
6 months    SAS-CompFeed     INDIA                          [151-155) cm          0      286    1226
6 months    SAS-CompFeed     INDIA                          [151-155) cm          1       10    1226
6 months    SAS-FoodSuppl    INDIA                          >=155 cm              0       71     379
6 months    SAS-FoodSuppl    INDIA                          >=155 cm              1        4     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm               0      193     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm               1        9     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          0       97     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          1        5     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1240    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        5    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      307    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        2    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      436    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        5    1995
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              0     5729    7270
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              1       51    7270
6 months    ZVITAMBO         ZIMBABWE                       <151 cm               0      432    7270
6 months    ZVITAMBO         ZIMBABWE                       <151 cm               1        8    7270
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1041    7270
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          1        9    7270
24 months   COHORTS          GUATEMALA                      >=155 cm              0      128    1006
24 months   COHORTS          GUATEMALA                      >=155 cm              1        0    1006
24 months   COHORTS          GUATEMALA                      <151 cm               0      665    1006
24 months   COHORTS          GUATEMALA                      <151 cm               1        3    1006
24 months   COHORTS          GUATEMALA                      [151-155) cm          0      209    1006
24 months   COHORTS          GUATEMALA                      [151-155) cm          1        1    1006
24 months   COHORTS          INDIA                          >=155 cm              0      546    1803
24 months   COHORTS          INDIA                          >=155 cm              1        3    1803
24 months   COHORTS          INDIA                          <151 cm               0      768    1803
24 months   COHORTS          INDIA                          <151 cm               1        8    1803
24 months   COHORTS          INDIA                          [151-155) cm          0      475    1803
24 months   COHORTS          INDIA                          [151-155) cm          1        3    1803
24 months   COHORTS          PHILIPPINES                    >=155 cm              0      506    2449
24 months   COHORTS          PHILIPPINES                    >=155 cm              1        1    2449
24 months   COHORTS          PHILIPPINES                    <151 cm               0     1221    2449
24 months   COHORTS          PHILIPPINES                    <151 cm               1       18    2449
24 months   COHORTS          PHILIPPINES                    [151-155) cm          0      697    2449
24 months   COHORTS          PHILIPPINES                    [151-155) cm          1        6    2449
24 months   JiVitA-3         BANGLADESH                     >=155 cm              0     1266    8570
24 months   JiVitA-3         BANGLADESH                     >=155 cm              1       39    8570
24 months   JiVitA-3         BANGLADESH                     <151 cm               0     4839    8570
24 months   JiVitA-3         BANGLADESH                     <151 cm               1      213    8570
24 months   JiVitA-3         BANGLADESH                     [151-155) cm          0     2133    8570
24 months   JiVitA-3         BANGLADESH                     [151-155) cm          1       80    8570
24 months   Keneba           GAMBIA                         >=155 cm              0     1316    1603
24 months   Keneba           GAMBIA                         >=155 cm              1       23    1603
24 months   Keneba           GAMBIA                         <151 cm               0       59    1603
24 months   Keneba           GAMBIA                         <151 cm               1        1    1603
24 months   Keneba           GAMBIA                         [151-155) cm          0      201    1603
24 months   Keneba           GAMBIA                         [151-155) cm          1        3    1603
24 months   LCNI-5           MALAWI                         >=155 cm              0      345     561
24 months   LCNI-5           MALAWI                         >=155 cm              1        0     561
24 months   LCNI-5           MALAWI                         <151 cm               0       91     561
24 months   LCNI-5           MALAWI                         <151 cm               1        1     561
24 months   LCNI-5           MALAWI                         [151-155) cm          0      124     561
24 months   LCNI-5           MALAWI                         [151-155) cm          1        0     561
24 months   MAL-ED           BANGLADESH                     >=155 cm              0       22     212
24 months   MAL-ED           BANGLADESH                     >=155 cm              1        0     212
24 months   MAL-ED           BANGLADESH                     <151 cm               0      137     212
24 months   MAL-ED           BANGLADESH                     <151 cm               1        0     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm          0       53     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm          1        0     212
24 months   MAL-ED           BRAZIL                         >=155 cm              0       94     169
24 months   MAL-ED           BRAZIL                         >=155 cm              1        1     169
24 months   MAL-ED           BRAZIL                         <151 cm               0       43     169
24 months   MAL-ED           BRAZIL                         <151 cm               1        0     169
24 months   MAL-ED           BRAZIL                         [151-155) cm          0       31     169
24 months   MAL-ED           BRAZIL                         [151-155) cm          1        0     169
24 months   MAL-ED           INDIA                          >=155 cm              0       52     226
24 months   MAL-ED           INDIA                          >=155 cm              1        1     226
24 months   MAL-ED           INDIA                          <151 cm               0      109     226
24 months   MAL-ED           INDIA                          <151 cm               1        1     226
24 months   MAL-ED           INDIA                          [151-155) cm          0       63     226
24 months   MAL-ED           INDIA                          [151-155) cm          1        0     226
24 months   MAL-ED           NEPAL                          >=155 cm              0       38     228
24 months   MAL-ED           NEPAL                          >=155 cm              1        0     228
24 months   MAL-ED           NEPAL                          <151 cm               0      129     228
24 months   MAL-ED           NEPAL                          <151 cm               1        0     228
24 months   MAL-ED           NEPAL                          [151-155) cm          0       61     228
24 months   MAL-ED           NEPAL                          [151-155) cm          1        0     228
24 months   MAL-ED           PERU                           >=155 cm              0       46     201
24 months   MAL-ED           PERU                           >=155 cm              1        0     201
24 months   MAL-ED           PERU                           <151 cm               0      114     201
24 months   MAL-ED           PERU                           <151 cm               1        1     201
24 months   MAL-ED           PERU                           [151-155) cm          0       39     201
24 months   MAL-ED           PERU                           [151-155) cm          1        1     201
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              0      180     234
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              1        0     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm               0       27     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm               1        0     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          0       27     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          1        0     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      126     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       40     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       48     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0     214
24 months   NIH-Birth        BANGLADESH                     >=155 cm              0       75     428
24 months   NIH-Birth        BANGLADESH                     >=155 cm              1        1     428
24 months   NIH-Birth        BANGLADESH                     <151 cm               0      245     428
24 months   NIH-Birth        BANGLADESH                     <151 cm               1        7     428
24 months   NIH-Birth        BANGLADESH                     [151-155) cm          0       98     428
24 months   NIH-Birth        BANGLADESH                     [151-155) cm          1        2     428
24 months   NIH-Crypto       BANGLADESH                     >=155 cm              0      100     514
24 months   NIH-Crypto       BANGLADESH                     >=155 cm              1        0     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm               0      284     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm               1        3     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          0      126     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          1        1     514
24 months   PROBIT           BELARUS                        >=155 cm              0     3790    3940
24 months   PROBIT           BELARUS                        >=155 cm              1        6    3940
24 months   PROBIT           BELARUS                        <151 cm               0       34    3940
24 months   PROBIT           BELARUS                        <151 cm               1        0    3940
24 months   PROBIT           BELARUS                        [151-155) cm          0      109    3940
24 months   PROBIT           BELARUS                        [151-155) cm          1        1    3940
24 months   PROVIDE          BANGLADESH                     >=155 cm              0      118     578
24 months   PROVIDE          BANGLADESH                     >=155 cm              1        4     578
24 months   PROVIDE          BANGLADESH                     <151 cm               0      315     578
24 months   PROVIDE          BANGLADESH                     <151 cm               1        1     578
24 months   PROVIDE          BANGLADESH                     [151-155) cm          0      136     578
24 months   PROVIDE          BANGLADESH                     [151-155) cm          1        4     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              0      246     367
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              1       21     367
24 months   ZVITAMBO         ZIMBABWE                       <151 cm               0       29     367
24 months   ZVITAMBO         ZIMBABWE                       <151 cm               1        5     367
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          0       64     367
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          1        2     367


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/4981c618-b80c-4320-82ab-a80c895a4564/9fce287e-6a15-4d58-9e1e-b80a2c0f072b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4981c618-b80c-4320-82ab-a80c895a4564/9fce287e-6a15-4d58-9e1e-b80a2c0f072b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4981c618-b80c-4320-82ab-a80c895a4564/9fce287e-6a15-4d58-9e1e-b80a2c0f072b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4981c618-b80c-4320-82ab-a80c895a4564/9fce287e-6a15-4d58-9e1e-b80a2c0f072b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     >=155 cm             NA                0.1227285   0.0595825   0.1858746
Birth       COHORTS        GUATEMALA     <151 cm              NA                0.0771986   0.0532863   0.1011108
Birth       COHORTS        GUATEMALA     [151-155) cm         NA                0.0605921   0.0237416   0.0974426
Birth       COHORTS        INDIA         >=155 cm             NA                0.0554449   0.0356635   0.0752262
Birth       COHORTS        INDIA         <151 cm              NA                0.0494605   0.0335643   0.0653567
Birth       COHORTS        INDIA         [151-155) cm         NA                0.0424248   0.0240240   0.0608257
Birth       COHORTS        PHILIPPINES   >=155 cm             NA                0.0369837   0.0223019   0.0516654
Birth       COHORTS        PHILIPPINES   <151 cm              NA                0.0425596   0.0321563   0.0529628
Birth       COHORTS        PHILIPPINES   [151-155) cm         NA                0.0414739   0.0279243   0.0550235
Birth       JiVitA-3       BANGLADESH    >=155 cm             NA                0.0176119   0.0113306   0.0238933
Birth       JiVitA-3       BANGLADESH    <151 cm              NA                0.0204526   0.0174828   0.0234223
Birth       JiVitA-3       BANGLADESH    [151-155) cm         NA                0.0176485   0.0129752   0.0223217
Birth       NIH-Crypto     BANGLADESH    >=155 cm             NA                0.0620155   0.0203660   0.1036650
Birth       NIH-Crypto     BANGLADESH    <151 cm              NA                0.0668317   0.0424627   0.0912007
Birth       NIH-Crypto     BANGLADESH    [151-155) cm         NA                0.0701754   0.0318619   0.1084889
Birth       PROBIT         BELARUS       >=155 cm             NA                0.0671437   0.0337858   0.1005016
Birth       PROBIT         BELARUS       <151 cm              NA                0.0483871   0.0361204   0.0606538
Birth       PROBIT         BELARUS       [151-155) cm         NA                0.0453401   0.0149470   0.0757331
Birth       SAS-CompFeed   INDIA         >=155 cm             NA                0.0185185   0.0036666   0.0333705
Birth       SAS-CompFeed   INDIA         <151 cm              NA                0.0376176   0.0183457   0.0568894
Birth       SAS-CompFeed   INDIA         [151-155) cm         NA                0.0207469   0.0089754   0.0325184
Birth       ZVITAMBO       ZIMBABWE      >=155 cm             NA                0.0555208   0.0502496   0.0607920
Birth       ZVITAMBO       ZIMBABWE      <151 cm              NA                0.0830743   0.0589568   0.1071918
Birth       ZVITAMBO       ZIMBABWE      [151-155) cm         NA                0.0641886   0.0508472   0.0775300
6 months    COHORTS        INDIA         >=155 cm             NA                0.0220600   0.0096403   0.0344797
6 months    COHORTS        INDIA         <151 cm              NA                0.0388765   0.0253155   0.0524375
6 months    COHORTS        INDIA         [151-155) cm         NA                0.0366290   0.0198341   0.0534239
6 months    COHORTS        PHILIPPINES   >=155 cm             NA                0.0125000   0.0032964   0.0217036
6 months    COHORTS        PHILIPPINES   <151 cm              NA                0.0131579   0.0071184   0.0191974
6 months    COHORTS        PHILIPPINES   [151-155) cm         NA                0.0128535   0.0049369   0.0207701
6 months    JiVitA-3       BANGLADESH    >=155 cm             NA                0.0113113   0.0073632   0.0152594
6 months    JiVitA-3       BANGLADESH    <151 cm              NA                0.0146370   0.0117576   0.0175164
6 months    JiVitA-3       BANGLADESH    [151-155) cm         NA                0.0130763   0.0091054   0.0170472
6 months    SAS-CompFeed   INDIA         >=155 cm             NA                0.0176817   0.0055394   0.0298241
6 months    SAS-CompFeed   INDIA         <151 cm              NA                0.0498812   0.0325212   0.0672413
6 months    SAS-CompFeed   INDIA         [151-155) cm         NA                0.0337838   0.0116352   0.0559323
6 months    ZVITAMBO       ZIMBABWE      >=155 cm             NA                0.0088235   0.0064125   0.0112346
6 months    ZVITAMBO       ZIMBABWE      <151 cm              NA                0.0181818   0.0056969   0.0306667
6 months    ZVITAMBO       ZIMBABWE      [151-155) cm         NA                0.0085714   0.0029952   0.0141477
24 months   JiVitA-3       BANGLADESH    >=155 cm             NA                0.0290651   0.0182191   0.0399110
24 months   JiVitA-3       BANGLADESH    <151 cm              NA                0.0418188   0.0359700   0.0476675
24 months   JiVitA-3       BANGLADESH    [151-155) cm         NA                0.0361598   0.0269269   0.0453926


### Parameter: E(Y)


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     NA                   NA                0.0802139   0.0607354   0.0996924
Birth       COHORTS        INDIA         NA                   NA                0.0489260   0.0385956   0.0592564
Birth       COHORTS        PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       JiVitA-3       BANGLADESH    NA                   NA                0.0193466   0.0169070   0.0217861
Birth       NIH-Crypto     BANGLADESH    NA                   NA                0.0667614   0.0483100   0.0852128
Birth       PROBIT         BELARUS       NA                   NA                0.0663396   0.0334725   0.0992067
Birth       SAS-CompFeed   INDIA         NA                   NA                0.0252016   0.0126376   0.0377656
Birth       ZVITAMBO       ZIMBABWE      NA                   NA                0.0582781   0.0534540   0.0631023
6 months    COHORTS        INDIA         NA                   NA                0.0335349   0.0252594   0.0418104
6 months    COHORTS        PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    JiVitA-3       BANGLADESH    NA                   NA                0.0136847   0.0116040   0.0157654
6 months    SAS-CompFeed   INDIA         NA                   NA                0.0326264   0.0237765   0.0414763
6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0093535   0.0071406   0.0115664
24 months   JiVitA-3       BANGLADESH    NA                   NA                0.0387398   0.0343960   0.0430836


### Parameter: RR


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS        GUATEMALA     <151 cm              >=155 cm          0.6290188   0.3451638   1.1463099
Birth       COHORTS        GUATEMALA     [151-155) cm         >=155 cm          0.4937084   0.2224670   1.0956591
Birth       COHORTS        INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS        INDIA         <151 cm              >=155 cm          0.8920665   0.5518137   1.4421220
Birth       COHORTS        INDIA         [151-155) cm         >=155 cm          0.7651718   0.4362681   1.3420369
Birth       COHORTS        PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS        PHILIPPINES   <151 cm              >=155 cm          1.1507666   0.7220052   1.8341473
Birth       COHORTS        PHILIPPINES   [151-155) cm         >=155 cm          1.1214108   0.6708670   1.8745329
Birth       JiVitA-3       BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH    <151 cm              >=155 cm          1.1612915   0.7937690   1.6989804
Birth       JiVitA-3       BANGLADESH    [151-155) cm         >=155 cm          1.0020748   0.6449986   1.5568311
Birth       NIH-Crypto     BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH    <151 cm              >=155 cm          1.0776609   0.5018738   2.3140340
Birth       NIH-Crypto     BANGLADESH    [151-155) cm         >=155 cm          1.1315789   0.4762055   2.6889043
Birth       PROBIT         BELARUS       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       PROBIT         BELARUS       <151 cm              >=155 cm          0.7206496   0.4227919   1.2283483
Birth       PROBIT         BELARUS       [151-155) cm         >=155 cm          0.6752686   0.4717891   0.9665074
Birth       SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.0313480   1.1392131   3.6221271
Birth       SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.1203320   0.4420816   2.8391675
Birth       ZVITAMBO       ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE      <151 cm              >=155 cm          1.4962738   1.1024359   2.0308075
Birth       ZVITAMBO       ZIMBABWE      [151-155) cm         >=155 cm          1.1561181   0.9199636   1.4528934
6 months    COHORTS        INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    COHORTS        INDIA         <151 cm              >=155 cm          1.7623056   0.9087310   3.4176462
6 months    COHORTS        INDIA         [151-155) cm         >=155 cm          1.6604265   0.8033911   3.4317234
6 months    COHORTS        PHILIPPINES   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    COHORTS        PHILIPPINES   <151 cm              >=155 cm          1.0526316   0.4420422   2.5066230
6 months    COHORTS        PHILIPPINES   [151-155) cm         >=155 cm          1.0282776   0.3937471   2.6853657
6 months    JiVitA-3       BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH    <151 cm              >=155 cm          1.2940097   0.8649549   1.9358941
6 months    JiVitA-3       BANGLADESH    [151-155) cm         >=155 cm          1.1560346   0.7303287   1.8298828
6 months    SAS-CompFeed   INDIA         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA         <151 cm              >=155 cm          2.8210610   1.4369308   5.5384607
6 months    SAS-CompFeed   INDIA         [151-155) cm         >=155 cm          1.9106607   0.9555150   3.8205828
6 months    ZVITAMBO       ZIMBABWE      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE      <151 cm              >=155 cm          2.0606061   0.9840848   4.3147675
6 months    ZVITAMBO       ZIMBABWE      [151-155) cm         >=155 cm          0.9714286   0.4796946   1.9672380
24 months   JiVitA-3       BANGLADESH    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH    <151 cm              >=155 cm          1.4387983   0.9716042   2.1306420
24 months   JiVitA-3       BANGLADESH    [151-155) cm         >=155 cm          1.2440970   0.7851291   1.9713666


### Parameter: PAR


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     >=155 cm             NA                -0.0425146   -0.0995290    0.0144998
Birth       COHORTS        INDIA         >=155 cm             NA                -0.0065188   -0.0226503    0.0096126
Birth       COHORTS        PHILIPPINES   >=155 cm             NA                 0.0047549   -0.0084155    0.0179252
Birth       JiVitA-3       BANGLADESH    >=155 cm             NA                 0.0017346   -0.0039178    0.0073870
Birth       NIH-Crypto     BANGLADESH    >=155 cm             NA                 0.0047459   -0.0331938    0.0426855
Birth       PROBIT         BELARUS       >=155 cm             NA                -0.0008041   -0.0015093   -0.0000989
Birth       SAS-CompFeed   INDIA         >=155 cm             NA                 0.0066831    0.0006691    0.0126971
Birth       ZVITAMBO       ZIMBABWE      >=155 cm             NA                 0.0027573    0.0001958    0.0053189
6 months    COHORTS        INDIA         >=155 cm             NA                 0.0114749    0.0000223    0.0229275
6 months    COHORTS        PHILIPPINES   >=155 cm             NA                 0.0004342   -0.0077985    0.0086669
6 months    JiVitA-3       BANGLADESH    >=155 cm             NA                 0.0023734   -0.0014981    0.0062449
6 months    SAS-CompFeed   INDIA         >=155 cm             NA                 0.0149447    0.0082992    0.0215902
6 months    ZVITAMBO       ZIMBABWE      >=155 cm             NA                 0.0005300   -0.0006810    0.0017409
24 months   JiVitA-3       BANGLADESH    >=155 cm             NA                 0.0096747   -0.0003910    0.0197405


### Parameter: PAF


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     >=155 cm             NA                -0.5300157   -1.4202672    0.0327729
Birth       COHORTS        INDIA         >=155 cm             NA                -0.1332387   -0.5147785    0.1521995
Birth       COHORTS        PHILIPPINES   >=155 cm             NA                 0.1139205   -0.2643938    0.3790408
Birth       JiVitA-3       BANGLADESH    >=155 cm             NA                 0.0896611   -0.2560122    0.3402000
Birth       NIH-Crypto     BANGLADESH    >=155 cm             NA                 0.0710869   -0.7120973    0.4960102
Birth       PROBIT         BELARUS       >=155 cm             NA                -0.0121213   -0.0199560   -0.0043467
Birth       SAS-CompFeed   INDIA         >=155 cm             NA                 0.2651852   -0.0939816    0.5064334
Birth       ZVITAMBO       ZIMBABWE      >=155 cm             NA                 0.0473135    0.0024871    0.0901255
6 months    COHORTS        INDIA         >=155 cm             NA                 0.3421779   -0.0889815    0.6026287
6 months    COHORTS        PHILIPPINES   >=155 cm             NA                 0.0335714   -0.8670734    0.4997603
6 months    JiVitA-3       BANGLADESH    >=155 cm             NA                 0.1734333   -0.1570139    0.4095036
6 months    SAS-CompFeed   INDIA         >=155 cm             NA                 0.4580550    0.1241974    0.6646455
6 months    ZVITAMBO       ZIMBABWE      >=155 cm             NA                 0.0566609   -0.0813265    0.1770398
24 months   JiVitA-3       BANGLADESH    >=155 cm             NA                 0.2497360   -0.0617389    0.4698357
