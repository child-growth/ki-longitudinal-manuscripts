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

agecat      studyid          country                        mhtcm           wasted   n_cell       n
----------  ---------------  -----------------------------  -------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm             0       72     748
Birth       COHORTS          GUATEMALA                      >=155 cm             1       31     748
Birth       COHORTS          GUATEMALA                      <151 cm              0      360     748
Birth       COHORTS          GUATEMALA                      <151 cm              1      124     748
Birth       COHORTS          GUATEMALA                      [151-155) cm         0      127     748
Birth       COHORTS          GUATEMALA                      [151-155) cm         1       34     748
Birth       COHORTS          INDIA                          >=155 cm             0      406    1676
Birth       COHORTS          INDIA                          >=155 cm             1      102    1676
Birth       COHORTS          INDIA                          <151 cm              0      597    1676
Birth       COHORTS          INDIA                          <151 cm              1      115    1676
Birth       COHORTS          INDIA                          [151-155) cm         0      382    1676
Birth       COHORTS          INDIA                          [151-155) cm         1       74    1676
Birth       COHORTS          PHILIPPINES                    >=155 cm             0      520    2899
Birth       COHORTS          PHILIPPINES                    >=155 cm             1       96    2899
Birth       COHORTS          PHILIPPINES                    <151 cm              0     1216    2899
Birth       COHORTS          PHILIPPINES                    <151 cm              1      229    2899
Birth       COHORTS          PHILIPPINES                    [151-155) cm         0      712    2899
Birth       COHORTS          PHILIPPINES                    [151-155) cm         1      126    2899
Birth       JiVitA-3         BANGLADESH                     >=155 cm             0     2656   17936
Birth       JiVitA-3         BANGLADESH                     >=155 cm             1      310   17936
Birth       JiVitA-3         BANGLADESH                     <151 cm              0     9086   17936
Birth       JiVitA-3         BANGLADESH                     <151 cm              1     1173   17936
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         0     4226   17936
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         1      485   17936
Birth       Keneba           GAMBIA                         >=155 cm             0      855    1362
Birth       Keneba           GAMBIA                         >=155 cm             1      280    1362
Birth       Keneba           GAMBIA                         <151 cm              0       32    1362
Birth       Keneba           GAMBIA                         <151 cm              1       14    1362
Birth       Keneba           GAMBIA                         [151-155) cm         0      135    1362
Birth       Keneba           GAMBIA                         [151-155) cm         1       46    1362
Birth       MAL-ED           BANGLADESH                     >=155 cm             0       19     209
Birth       MAL-ED           BANGLADESH                     >=155 cm             1        2     209
Birth       MAL-ED           BANGLADESH                     <151 cm              0      111     209
Birth       MAL-ED           BANGLADESH                     <151 cm              1       23     209
Birth       MAL-ED           BANGLADESH                     [151-155) cm         0       44     209
Birth       MAL-ED           BANGLADESH                     [151-155) cm         1       10     209
Birth       MAL-ED           BRAZIL                         >=155 cm             0       31      61
Birth       MAL-ED           BRAZIL                         >=155 cm             1        1      61
Birth       MAL-ED           BRAZIL                         <151 cm              0       18      61
Birth       MAL-ED           BRAZIL                         <151 cm              1        1      61
Birth       MAL-ED           BRAZIL                         [151-155) cm         0       10      61
Birth       MAL-ED           BRAZIL                         [151-155) cm         1        0      61
Birth       MAL-ED           INDIA                          >=155 cm             0        9      41
Birth       MAL-ED           INDIA                          >=155 cm             1        2      41
Birth       MAL-ED           INDIA                          <151 cm              0       16      41
Birth       MAL-ED           INDIA                          <151 cm              1        3      41
Birth       MAL-ED           INDIA                          [151-155) cm         0       11      41
Birth       MAL-ED           INDIA                          [151-155) cm         1        0      41
Birth       MAL-ED           NEPAL                          >=155 cm             0        6      26
Birth       MAL-ED           NEPAL                          >=155 cm             1        0      26
Birth       MAL-ED           NEPAL                          <151 cm              0       11      26
Birth       MAL-ED           NEPAL                          <151 cm              1        2      26
Birth       MAL-ED           NEPAL                          [151-155) cm         0        7      26
Birth       MAL-ED           NEPAL                          [151-155) cm         1        0      26
Birth       MAL-ED           PERU                           >=155 cm             0       46     221
Birth       MAL-ED           PERU                           >=155 cm             1        1     221
Birth       MAL-ED           PERU                           <151 cm              0      123     221
Birth       MAL-ED           PERU                           <151 cm              1        4     221
Birth       MAL-ED           PERU                           [151-155) cm         0       47     221
Birth       MAL-ED           PERU                           [151-155) cm         1        0     221
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             0       73     100
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             1        7     100
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              0        6     100
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              1        3     100
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         0       11     100
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         1        0     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             0       66     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        1     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              0       21     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       25     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        0     113
Birth       NIH-Birth        BANGLADESH                     >=155 cm             0       76     575
Birth       NIH-Birth        BANGLADESH                     >=155 cm             1       31     575
Birth       NIH-Birth        BANGLADESH                     <151 cm              0      225     575
Birth       NIH-Birth        BANGLADESH                     <151 cm              1      108     575
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         0      106     575
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         1       29     575
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             0      102     704
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             1       27     704
Birth       NIH-Crypto       BANGLADESH                     <151 cm              0      299     704
Birth       NIH-Crypto       BANGLADESH                     <151 cm              1      105     704
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         0      132     704
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         1       39     704
Birth       PROBIT           BELARUS                        >=155 cm             0    10380   13657
Birth       PROBIT           BELARUS                        >=155 cm             1     2756   13657
Birth       PROBIT           BELARUS                        <151 cm              0       98   13657
Birth       PROBIT           BELARUS                        <151 cm              1       26   13657
Birth       PROBIT           BELARUS                        [151-155) cm         0      308   13657
Birth       PROBIT           BELARUS                        [151-155) cm         1       89   13657
Birth       PROVIDE          BANGLADESH                     >=155 cm             0       89     510
Birth       PROVIDE          BANGLADESH                     >=155 cm             1       19     510
Birth       PROVIDE          BANGLADESH                     <151 cm              0      215     510
Birth       PROVIDE          BANGLADESH                     <151 cm              1       66     510
Birth       PROVIDE          BANGLADESH                     [151-155) cm         0       93     510
Birth       PROVIDE          BANGLADESH                     [151-155) cm         1       28     510
Birth       SAS-CompFeed     INDIA                          >=155 cm             0      386     992
Birth       SAS-CompFeed     INDIA                          >=155 cm             1       46     992
Birth       SAS-CompFeed     INDIA                          <151 cm              0      278     992
Birth       SAS-CompFeed     INDIA                          <151 cm              1       41     992
Birth       SAS-CompFeed     INDIA                          [151-155) cm         0      221     992
Birth       SAS-CompFeed     INDIA                          [151-155) cm         1       20     992
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             0     6176    9060
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             1     1080    9060
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              0      394    9060
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              1      105    9060
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         0     1093    9060
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         1      212    9060
6 months    COHORTS          GUATEMALA                      >=155 cm             0      113     946
6 months    COHORTS          GUATEMALA                      >=155 cm             1        4     946
6 months    COHORTS          GUATEMALA                      <151 cm              0      609     946
6 months    COHORTS          GUATEMALA                      <151 cm              1       23     946
6 months    COHORTS          GUATEMALA                      [151-155) cm         0      193     946
6 months    COHORTS          GUATEMALA                      [151-155) cm         1        4     946
6 months    COHORTS          INDIA                          >=155 cm             0      477    1819
6 months    COHORTS          INDIA                          >=155 cm             1       64    1819
6 months    COHORTS          INDIA                          <151 cm              0      684    1819
6 months    COHORTS          INDIA                          <151 cm              1      107    1819
6 months    COHORTS          INDIA                          [151-155) cm         0      437    1819
6 months    COHORTS          INDIA                          [151-155) cm         1       50    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm             0      526    2706
6 months    COHORTS          PHILIPPINES                    >=155 cm             1       34    2706
6 months    COHORTS          PHILIPPINES                    <151 cm              0     1284    2706
6 months    COHORTS          PHILIPPINES                    <151 cm              1       84    2706
6 months    COHORTS          PHILIPPINES                    [151-155) cm         0      735    2706
6 months    COHORTS          PHILIPPINES                    [151-155) cm         1       43    2706
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             0       36     231
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             1        0     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm              0      140     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm              1        1     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         0       53     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         1        1     231
6 months    JiVitA-3         BANGLADESH                     >=155 cm             0     2470   16734
6 months    JiVitA-3         BANGLADESH                     >=155 cm             1      181   16734
6 months    JiVitA-3         BANGLADESH                     <151 cm              0     8929   16734
6 months    JiVitA-3         BANGLADESH                     <151 cm              1      858   16734
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         0     3920   16734
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         1      376   16734
6 months    Keneba           GAMBIA                         >=155 cm             0     1476    1877
6 months    Keneba           GAMBIA                         >=155 cm             1       92    1877
6 months    Keneba           GAMBIA                         <151 cm              0       58    1877
6 months    Keneba           GAMBIA                         <151 cm              1        9    1877
6 months    Keneba           GAMBIA                         [151-155) cm         0      236    1877
6 months    Keneba           GAMBIA                         [151-155) cm         1        6    1877
6 months    LCNI-5           MALAWI                         >=155 cm             0      506     836
6 months    LCNI-5           MALAWI                         >=155 cm             1        7     836
6 months    LCNI-5           MALAWI                         <151 cm              0      129     836
6 months    LCNI-5           MALAWI                         <151 cm              1        2     836
6 months    LCNI-5           MALAWI                         [151-155) cm         0      187     836
6 months    LCNI-5           MALAWI                         [151-155) cm         1        5     836
6 months    MAL-ED           BANGLADESH                     >=155 cm             0       22     241
6 months    MAL-ED           BANGLADESH                     >=155 cm             1        2     241
6 months    MAL-ED           BANGLADESH                     <151 cm              0      151     241
6 months    MAL-ED           BANGLADESH                     <151 cm              1        5     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm         0       60     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm         1        1     241
6 months    MAL-ED           BRAZIL                         >=155 cm             0      120     209
6 months    MAL-ED           BRAZIL                         >=155 cm             1        1     209
6 months    MAL-ED           BRAZIL                         <151 cm              0       51     209
6 months    MAL-ED           BRAZIL                         <151 cm              1        0     209
6 months    MAL-ED           BRAZIL                         [151-155) cm         0       37     209
6 months    MAL-ED           BRAZIL                         [151-155) cm         1        0     209
6 months    MAL-ED           INDIA                          >=155 cm             0       50     235
6 months    MAL-ED           INDIA                          >=155 cm             1        5     235
6 months    MAL-ED           INDIA                          <151 cm              0      103     235
6 months    MAL-ED           INDIA                          <151 cm              1        9     235
6 months    MAL-ED           INDIA                          [151-155) cm         0       63     235
6 months    MAL-ED           INDIA                          [151-155) cm         1        5     235
6 months    MAL-ED           NEPAL                          >=155 cm             0       41     236
6 months    MAL-ED           NEPAL                          >=155 cm             1        0     236
6 months    MAL-ED           NEPAL                          <151 cm              0      130     236
6 months    MAL-ED           NEPAL                          <151 cm              1        2     236
6 months    MAL-ED           NEPAL                          [151-155) cm         0       61     236
6 months    MAL-ED           NEPAL                          [151-155) cm         1        2     236
6 months    MAL-ED           PERU                           >=155 cm             0       58     272
6 months    MAL-ED           PERU                           >=155 cm             1        0     272
6 months    MAL-ED           PERU                           <151 cm              0      157     272
6 months    MAL-ED           PERU                           <151 cm              1        0     272
6 months    MAL-ED           PERU                           [151-155) cm         0       57     272
6 months    MAL-ED           PERU                           [151-155) cm         1        0     272
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             0      182     249
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             1        5     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              0       30     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              1        1     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         0       30     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         1        1     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             0      147     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              0       48     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       51     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        1     247
6 months    NIH-Birth        BANGLADESH                     >=155 cm             0       91     537
6 months    NIH-Birth        BANGLADESH                     >=155 cm             1        5     537
6 months    NIH-Birth        BANGLADESH                     <151 cm              0      289     537
6 months    NIH-Birth        BANGLADESH                     <151 cm              1       22     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         0      122     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         1        8     537
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             0      133     715
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             1        1     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm              0      397     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm              1       14     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         0      164     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         1        6     715
6 months    PROBIT           BELARUS                        >=155 cm             0    12447   13029
6 months    PROBIT           BELARUS                        >=155 cm             1       83   13029
6 months    PROBIT           BELARUS                        <151 cm              0      120   13029
6 months    PROBIT           BELARUS                        <151 cm              1        1   13029
6 months    PROBIT           BELARUS                        [151-155) cm         0      375   13029
6 months    PROBIT           BELARUS                        [151-155) cm         1        3   13029
6 months    PROVIDE          BANGLADESH                     >=155 cm             0      122     602
6 months    PROVIDE          BANGLADESH                     >=155 cm             1        6     602
6 months    PROVIDE          BANGLADESH                     <151 cm              0      315     602
6 months    PROVIDE          BANGLADESH                     <151 cm              1       14     602
6 months    PROVIDE          BANGLADESH                     [151-155) cm         0      140     602
6 months    PROVIDE          BANGLADESH                     [151-155) cm         1        5     602
6 months    SAS-CompFeed     INDIA                          >=155 cm             0      455    1226
6 months    SAS-CompFeed     INDIA                          >=155 cm             1       54    1226
6 months    SAS-CompFeed     INDIA                          <151 cm              0      360    1226
6 months    SAS-CompFeed     INDIA                          <151 cm              1       61    1226
6 months    SAS-CompFeed     INDIA                          [151-155) cm         0      265    1226
6 months    SAS-CompFeed     INDIA                          [151-155) cm         1       31    1226
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             0       64     379
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             1       11     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm              0      170     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm              1       32     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         0       77     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         1       25     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             0     1197    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1       48    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0      298    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       11    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0      415    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       26    1995
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             0     5606    7270
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             1      174    7270
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              0      424    7270
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              1       16    7270
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         0     1017    7270
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         1       33    7270
24 months   COHORTS          GUATEMALA                      >=155 cm             0      121    1006
24 months   COHORTS          GUATEMALA                      >=155 cm             1        7    1006
24 months   COHORTS          GUATEMALA                      <151 cm              0      637    1006
24 months   COHORTS          GUATEMALA                      <151 cm              1       31    1006
24 months   COHORTS          GUATEMALA                      [151-155) cm         0      202    1006
24 months   COHORTS          GUATEMALA                      [151-155) cm         1        8    1006
24 months   COHORTS          INDIA                          >=155 cm             0      515    1803
24 months   COHORTS          INDIA                          >=155 cm             1       34    1803
24 months   COHORTS          INDIA                          <151 cm              0      698    1803
24 months   COHORTS          INDIA                          <151 cm              1       78    1803
24 months   COHORTS          INDIA                          [151-155) cm         0      444    1803
24 months   COHORTS          INDIA                          [151-155) cm         1       34    1803
24 months   COHORTS          PHILIPPINES                    >=155 cm             0      479    2449
24 months   COHORTS          PHILIPPINES                    >=155 cm             1       28    2449
24 months   COHORTS          PHILIPPINES                    <151 cm              0     1144    2449
24 months   COHORTS          PHILIPPINES                    <151 cm              1       95    2449
24 months   COHORTS          PHILIPPINES                    [151-155) cm         0      659    2449
24 months   COHORTS          PHILIPPINES                    [151-155) cm         1       44    2449
24 months   JiVitA-3         BANGLADESH                     >=155 cm             0     1065    8570
24 months   JiVitA-3         BANGLADESH                     >=155 cm             1      240    8570
24 months   JiVitA-3         BANGLADESH                     <151 cm              0     3867    8570
24 months   JiVitA-3         BANGLADESH                     <151 cm              1     1185    8570
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         0     1770    8570
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         1      443    8570
24 months   Keneba           GAMBIA                         >=155 cm             0     1191    1603
24 months   Keneba           GAMBIA                         >=155 cm             1      148    1603
24 months   Keneba           GAMBIA                         <151 cm              0       50    1603
24 months   Keneba           GAMBIA                         <151 cm              1       10    1603
24 months   Keneba           GAMBIA                         [151-155) cm         0      184    1603
24 months   Keneba           GAMBIA                         [151-155) cm         1       20    1603
24 months   LCNI-5           MALAWI                         >=155 cm             0      340     561
24 months   LCNI-5           MALAWI                         >=155 cm             1        5     561
24 months   LCNI-5           MALAWI                         <151 cm              0       90     561
24 months   LCNI-5           MALAWI                         <151 cm              1        2     561
24 months   LCNI-5           MALAWI                         [151-155) cm         0      121     561
24 months   LCNI-5           MALAWI                         [151-155) cm         1        3     561
24 months   MAL-ED           BANGLADESH                     >=155 cm             0       19     212
24 months   MAL-ED           BANGLADESH                     >=155 cm             1        3     212
24 months   MAL-ED           BANGLADESH                     <151 cm              0      124     212
24 months   MAL-ED           BANGLADESH                     <151 cm              1       13     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm         0       48     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm         1        5     212
24 months   MAL-ED           BRAZIL                         >=155 cm             0       92     169
24 months   MAL-ED           BRAZIL                         >=155 cm             1        3     169
24 months   MAL-ED           BRAZIL                         <151 cm              0       43     169
24 months   MAL-ED           BRAZIL                         <151 cm              1        0     169
24 months   MAL-ED           BRAZIL                         [151-155) cm         0       31     169
24 months   MAL-ED           BRAZIL                         [151-155) cm         1        0     169
24 months   MAL-ED           INDIA                          >=155 cm             0       50     226
24 months   MAL-ED           INDIA                          >=155 cm             1        3     226
24 months   MAL-ED           INDIA                          <151 cm              0       91     226
24 months   MAL-ED           INDIA                          <151 cm              1       19     226
24 months   MAL-ED           INDIA                          [151-155) cm         0       58     226
24 months   MAL-ED           INDIA                          [151-155) cm         1        5     226
24 months   MAL-ED           NEPAL                          >=155 cm             0       38     228
24 months   MAL-ED           NEPAL                          >=155 cm             1        0     228
24 months   MAL-ED           NEPAL                          <151 cm              0      125     228
24 months   MAL-ED           NEPAL                          <151 cm              1        4     228
24 months   MAL-ED           NEPAL                          [151-155) cm         0       60     228
24 months   MAL-ED           NEPAL                          [151-155) cm         1        1     228
24 months   MAL-ED           PERU                           >=155 cm             0       46     201
24 months   MAL-ED           PERU                           >=155 cm             1        0     201
24 months   MAL-ED           PERU                           <151 cm              0      112     201
24 months   MAL-ED           PERU                           <151 cm              1        3     201
24 months   MAL-ED           PERU                           [151-155) cm         0       39     201
24 months   MAL-ED           PERU                           [151-155) cm         1        1     201
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             0      180     234
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             1        0     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              0       26     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              1        1     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         0       27     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         1        0     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             0      126     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              0       39     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0       45     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        3     214
24 months   NIH-Birth        BANGLADESH                     >=155 cm             0       67     428
24 months   NIH-Birth        BANGLADESH                     >=155 cm             1        9     428
24 months   NIH-Birth        BANGLADESH                     <151 cm              0      222     428
24 months   NIH-Birth        BANGLADESH                     <151 cm              1       30     428
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         0       86     428
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         1       14     428
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             0       93     514
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             1        7     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm              0      259     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm              1       28     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         0      117     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         1       10     514
24 months   PROBIT           BELARUS                        >=155 cm             0     3767    3940
24 months   PROBIT           BELARUS                        >=155 cm             1       29    3940
24 months   PROBIT           BELARUS                        <151 cm              0       33    3940
24 months   PROBIT           BELARUS                        <151 cm              1        1    3940
24 months   PROBIT           BELARUS                        [151-155) cm         0      108    3940
24 months   PROBIT           BELARUS                        [151-155) cm         1        2    3940
24 months   PROVIDE          BANGLADESH                     >=155 cm             0      111     578
24 months   PROVIDE          BANGLADESH                     >=155 cm             1       11     578
24 months   PROVIDE          BANGLADESH                     <151 cm              0      279     578
24 months   PROVIDE          BANGLADESH                     <151 cm              1       37     578
24 months   PROVIDE          BANGLADESH                     [151-155) cm         0      126     578
24 months   PROVIDE          BANGLADESH                     [151-155) cm         1       14     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             0      221     367
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             1       46     367
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              0       24     367
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              1       10     367
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         0       58     367
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         1        8     367


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

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/2bf005ec-b41a-490a-b4a2-912fa38c09bf/3bbaafaf-6524-4f66-86a4-93ef24926335/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2bf005ec-b41a-490a-b4a2-912fa38c09bf/3bbaafaf-6524-4f66-86a4-93ef24926335/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2bf005ec-b41a-490a-b4a2-912fa38c09bf/3bbaafaf-6524-4f66-86a4-93ef24926335/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2bf005ec-b41a-490a-b4a2-912fa38c09bf/3bbaafaf-6524-4f66-86a4-93ef24926335/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                0.3046950   0.2161615   0.3932286
Birth       COHORTS          GUATEMALA                      <151 cm              NA                0.2534626   0.2145324   0.2923927
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                0.2191410   0.1533437   0.2849382
Birth       COHORTS          INDIA                          >=155 cm             NA                0.2006075   0.1658805   0.2353346
Birth       COHORTS          INDIA                          <151 cm              NA                0.1604638   0.1334158   0.1875118
Birth       COHORTS          INDIA                          [151-155) cm         NA                0.1612915   0.1273035   0.1952794
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                0.1541105   0.1253018   0.1829193
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                0.1599927   0.1410964   0.1788889
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1496983   0.1251512   0.1742453
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1059383   0.0930348   0.1188417
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                0.1142698   0.1077528   0.1207868
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1035386   0.0940058   0.1130713
Birth       Keneba           GAMBIA                         >=155 cm             NA                0.2462676   0.2211729   0.2713623
Birth       Keneba           GAMBIA                         <151 cm              NA                0.2982296   0.1598053   0.4366539
Birth       Keneba           GAMBIA                         [151-155) cm         NA                0.2546283   0.1908735   0.3183831
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2969005   0.2104082   0.3833928
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                0.3197919   0.2694178   0.3701661
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2219016   0.1524328   0.2913704
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2117597   0.1409585   0.2825609
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                0.2600953   0.2172476   0.3029430
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2302991   0.1670327   0.2935655
Birth       PROBIT           BELARUS                        >=155 cm             NA                0.2098084   0.1441063   0.2755105
Birth       PROBIT           BELARUS                        <151 cm              NA                0.2122528   0.1845712   0.2399343
Birth       PROBIT           BELARUS                        [151-155) cm         NA                0.2217523   0.1493625   0.2941422
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                0.1750931   0.1030157   0.2471706
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                0.2328426   0.1833942   0.2822911
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                0.2369611   0.1602179   0.3137043
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.1070039   0.0648961   0.1491116
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                0.1265614   0.0941088   0.1590140
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0847809   0.0507819   0.1187798
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1486831   0.1404938   0.1568723
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2119815   0.1762849   0.2476781
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1629021   0.1428333   0.1829709
6 months    COHORTS          INDIA                          >=155 cm             NA                0.1190986   0.0919292   0.1462681
6 months    COHORTS          INDIA                          <151 cm              NA                0.1340709   0.1102423   0.1578995
6 months    COHORTS          INDIA                          [151-155) cm         NA                0.1036080   0.0764513   0.1307647
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0608825   0.0408991   0.0808660
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0613403   0.0486374   0.0740432
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0549552   0.0389131   0.0709973
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0675828   0.0570851   0.0780806
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.0873388   0.0808998   0.0937778
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0902500   0.0803925   0.1001075
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0586735   0.0470381   0.0703089
6 months    Keneba           GAMBIA                         <151 cm              NA                0.1343284   0.0526538   0.2160029
6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.0247934   0.0051972   0.0443896
6 months    MAL-ED           INDIA                          >=155 cm             NA                0.0909091   0.0147713   0.1670468
6 months    MAL-ED           INDIA                          <151 cm              NA                0.0803571   0.0299042   0.1308101
6 months    MAL-ED           INDIA                          [151-155) cm         NA                0.0735294   0.0113615   0.1356973
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0520833   0.0075944   0.0965722
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.0707395   0.0422180   0.0992611
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0615385   0.0201897   0.1028872
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.0468750   0.0102270   0.0835230
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.0425532   0.0207242   0.0643822
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0344828   0.0047588   0.0642067
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.1047839   0.0677658   0.1418020
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.1442166   0.1123381   0.1760951
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1055291   0.0728560   0.1382022
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1567096   0.0749092   0.2385100
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1616836   0.1113551   0.2120120
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.2560738   0.1731616   0.3389861
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0380545   0.0274475   0.0486616
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0377877   0.0155879   0.0599876
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0587645   0.0365612   0.0809677
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0302161   0.0257977   0.0346344
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0337317   0.0175216   0.0499418
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0315044   0.0208284   0.0421803
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   COHORTS          INDIA                          >=155 cm             NA                0.0669810   0.0467838   0.0871783
24 months   COHORTS          INDIA                          <151 cm              NA                0.0960939   0.0751152   0.1170727
24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0705751   0.0474953   0.0936550
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0577565   0.0373345   0.0781784
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0754644   0.0607088   0.0902199
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0632702   0.0452303   0.0813101
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1850280   0.1613911   0.2086648
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.2338660   0.2208621   0.2468700
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.2009092   0.1829820   0.2188365
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1105703   0.0937646   0.1273761
24 months   Keneba           GAMBIA                         <151 cm              NA                0.1591855   0.0622367   0.2561342
24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0976138   0.0563896   0.1388381
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0920107   0.0386938   0.1453275
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1149914   0.0795709   0.1504120
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1013062   0.0503630   0.1522494
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1722846   0.1269272   0.2176421
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407521   0.4474832
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1212121   0.0423654   0.2000588


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2526738   0.2215120   0.2838356
Birth       COHORTS          INDIA                          NA                   NA                0.1736277   0.1554877   0.1917677
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1097235   0.1045842   0.1148627
Birth       Keneba           GAMBIA                         NA                   NA                0.2496329   0.2266393   0.2726265
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2428977   0.2111977   0.2745977
Birth       PROBIT           BELARUS                        NA                   NA                0.2102219   0.1448555   0.2755882
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2215686   0.1854897   0.2576475
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1078629   0.0749278   0.1407980
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1541943   0.1467576   0.1616309
6 months    COHORTS          INDIA                          NA                   NA                0.1214953   0.1064776   0.1365130
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0845584   0.0797428   0.0893740
6 months    Keneba           GAMBIA                         NA                   NA                0.0570059   0.0465142   0.0674976
6 months    MAL-ED           INDIA                          NA                   NA                0.0808511   0.0459229   0.1157792
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0415282   0.0255778   0.0574787
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1190865   0.0945854   0.1435876
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1794195   0.1407385   0.2181005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426065   0.0337417   0.0514713
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0306740   0.0267100   0.0346380
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0457256   0.0328110   0.0586403
24 months   COHORTS          INDIA                          NA                   NA                0.0809762   0.0683807   0.0935716
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2179697   0.2080911   0.2278482
24 months   Keneba           GAMBIA                         NA                   NA                0.1110418   0.0956567   0.1264269
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1743869   0.1355135   0.2132603


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8318566   0.5987983   1.1556235
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.7192141   0.4736467   1.0920988
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          0.7998892   0.6281604   1.0185659
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8040150   0.6120817   1.0561337
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0381685   0.8323234   1.2949220
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9713696   0.7576458   1.2453826
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.0786451   0.9465015   1.2292376
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          0.9773482   0.8376936   1.1402852
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          1.2109984   0.7529542   1.9476843
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0339499   0.7891594   1.3546724
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0771013   0.7736927   1.4994934
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.7473938   0.4879764   1.1447224
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.2282567   0.8460115   1.7832082
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0875491   0.7053891   1.6767525
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          1.0116504   0.7618066   1.3434335
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.0569277   0.9050885   1.2342398
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.3298215   0.8367466   2.1134539
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.3533432   0.8012440   2.2858677
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.1827742   0.8525998   1.6408105
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7923158   0.5776713   1.0867156
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4257268   1.1942343   1.7020923
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0956327   0.9573637   1.2538716
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          1.1257132   0.8428442   1.5035165
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8699345   0.6144768   1.2315941
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0075187   0.6834242   1.4853059
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9026429   0.5817023   1.4006549
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.2923222   1.0873455   1.5359393
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.3353987   1.1054519   1.6131772
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          2.2894225   1.2077457   4.3398665
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.4225656   0.1870667   0.9545346
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          0.8839286   0.3103337   2.5177079
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          0.8088235   0.2460434   2.6588624
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3581994   0.5281355   3.4928641
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1815385   0.3985306   3.5029505
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.9078014   0.3563570   2.3125779
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.7356322   0.2297507   2.3553998
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.3763237   0.9223500   2.0537400
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.0071120   0.6988553   1.4513372
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.0317399   0.5628229   1.8913358
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.6340660   0.8852386   3.0163302
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9929888   0.5181709   1.9028987
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5442170   0.9654658   2.4699021
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1163502   0.6756349   1.8445435
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0426371   0.7208211   1.5081303
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.4346439   0.9901521   2.0786736
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0536587   0.6760882   1.6420885
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3065962   0.8726442   1.9563454
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0954654   0.6958125   1.7246665
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.2639498   1.1012759   1.4506529
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.0858318   0.9350290   1.2609562
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.4396761   0.7684624   2.6971615
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8828212   0.5635319   1.3830156
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.2497617   0.6478238   2.4110019
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.1010266   0.5110382   2.3721507
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7071611   0.9518922   3.0616902
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.7035573   0.3487679   1.4192615


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.0520213   -0.1336919   0.0296494
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.0269799   -0.0553802   0.0014205
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0014604   -0.0241415   0.0270622
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0037852   -0.0077844   0.0153548
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.0033653   -0.0070501   0.0137808
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047266   -0.0827893   0.0733361
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0311380   -0.0336459   0.0959219
Birth       PROBIT           BELARUS                        >=155 cm             NA                 0.0004134   -0.0007504   0.0015772
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0464755   -0.0191790   0.1121300
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0008590   -0.0178330   0.0195510
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0055112    0.0016495   0.0093729
6 months    COHORTS          INDIA                          >=155 cm             NA                 0.0023967   -0.0205155   0.0253089
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0013851   -0.0191542   0.0163840
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0169756    0.0070559   0.0268952
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571   0.0027219
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0100580   -0.0756588   0.0555428
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0130936   -0.0282376   0.0544247
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0053468   -0.0373834   0.0266899
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0143026   -0.0096445   0.0382496
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0227099   -0.0519897   0.0974095
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0045520   -0.0024942   0.0115982
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0004580   -0.0016124   0.0025283
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572   0.0274334
24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0139951   -0.0038052   0.0317954
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0104346   -0.0082356   0.0291049
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0329417    0.0114856   0.0543978
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0004715   -0.0064238   0.0073667
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227   0.0716442
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912   0.0636885
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0152557   -0.0331177   0.0636292
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021023   -0.0218766   0.0260812


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.2058830   -0.5765907    0.0776592
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.1553891   -0.3307553   -0.0031326
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0093872   -0.1696415    0.1610133
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0344977   -0.0770267    0.1344739
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.0134811   -0.0291361    0.0543334
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0161774   -0.3217810    0.2187689
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1281938   -0.1834827    0.3577887
Birth       PROBIT           BELARUS                        >=155 cm             NA                 0.0019667   -0.0037874    0.0076878
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                 0.2097566   -0.1482495    0.4561421
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0079639   -0.1822033    0.1675411
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0357417    0.0104054    0.0604293
6 months    COHORTS          INDIA                          >=155 cm             NA                 0.0197266   -0.1881862    0.1912581
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0232802   -0.3700501    0.2357197
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.2007556    0.0753337    0.3091653
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.1244019   -1.3107895    0.4528798
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2008929   -0.7605959    0.6372977
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1287500   -1.2328788    0.4294018
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1201023   -0.1128561    0.3042946
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.1265744   -0.4053472    0.4571646
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1068375   -0.0732682    0.2567195
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0149296   -0.0549006    0.0801374
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   COHORTS          INDIA                          >=155 cm             NA                 0.1728302   -0.0758167    0.3640089
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1530206   -0.1688778    0.3862710
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.1511298    0.0464780    0.2442957
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0042458   -0.0598249    0.0644433
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1422229   -0.4500818    0.4925931
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0120552   -0.1354601    0.1404058
