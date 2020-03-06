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

unadjusted

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
![](/tmp/78719723-3cb8-4df3-95fe-b9800541e6ef/a77ff161-ef30-4987-ad8a-502245beeddb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78719723-3cb8-4df3-95fe-b9800541e6ef/a77ff161-ef30-4987-ad8a-502245beeddb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78719723-3cb8-4df3-95fe-b9800541e6ef/a77ff161-ef30-4987-ad8a-502245beeddb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78719723-3cb8-4df3-95fe-b9800541e6ef/a77ff161-ef30-4987-ad8a-502245beeddb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                0.3009709   0.2123309   0.3896109
Birth       COHORTS          GUATEMALA                      <151 cm              NA                0.2561983   0.2172819   0.2951147
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                0.2111801   0.1480929   0.2742673
Birth       COHORTS          INDIA                          >=155 cm             NA                0.2007874   0.1659420   0.2356328
Birth       COHORTS          INDIA                          <151 cm              NA                0.1615169   0.1344777   0.1885561
Birth       COHORTS          INDIA                          [151-155) cm         NA                0.1622807   0.1284292   0.1961322
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                0.1558442   0.1271965   0.1844918
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                0.1584775   0.1396451   0.1773099
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1503580   0.1261543   0.1745617
Birth       Keneba           GAMBIA                         >=155 cm             NA                0.2466960   0.2216075   0.2717846
Birth       Keneba           GAMBIA                         <151 cm              NA                0.3043478   0.1713300   0.4373657
Birth       Keneba           GAMBIA                         [151-155) cm         NA                0.2541436   0.1906931   0.3175942
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2897196   0.2036920   0.3757473
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                0.3243243   0.2740017   0.3746469
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2148148   0.1454759   0.2841538
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2093023   0.1390511   0.2795536
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                0.2599010   0.2171038   0.3026982
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2280702   0.1651367   0.2910037
Birth       PROBIT           BELARUS                        >=155 cm             NA                0.2098051   0.1441614   0.2754489
Birth       PROBIT           BELARUS                        <151 cm              NA                0.2096774   0.1796151   0.2397397
Birth       PROBIT           BELARUS                        [151-155) cm         NA                0.2241814   0.1523477   0.2960151
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                0.1759259   0.1040455   0.2478063
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                0.2348754   0.1852612   0.2844896
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                0.2314050   0.1561878   0.3066221
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.1064815   0.0647800   0.1481829
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                0.1285266   0.0959775   0.1610758
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0829876   0.0497191   0.1162560
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1488423   0.1406522   0.1570325
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2104208   0.1746554   0.2461863
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1624521   0.1424381   0.1824661
6 months    COHORTS          INDIA                          >=155 cm             NA                0.1182994   0.0910774   0.1455215
6 months    COHORTS          INDIA                          <151 cm              NA                0.1352718   0.1114309   0.1591127
6 months    COHORTS          INDIA                          [151-155) cm         NA                0.1026694   0.0757044   0.1296344
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0607143   0.0409319   0.0804967
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0614035   0.0486796   0.0741274
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0552699   0.0392102   0.0713296
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
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.1060904   0.0713330   0.1408477
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.1448931   0.1174996   0.1722866
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1047297   0.0714672   0.1379923
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1466667   0.0664959   0.2268375
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1584158   0.1079968   0.2088348
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.2450980   0.1615114   0.3286847
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0385542   0.0278570   0.0492514
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0355987   0.0149343   0.0562631
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0589569   0.0369677   0.0809461
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0301038   0.0256984   0.0345092
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0363636   0.0188715   0.0538557
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0314286   0.0208747   0.0419824
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0546875   0.0152789   0.0940961
24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0464072   0.0304466   0.0623678
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0380952   0.0121919   0.0639986
24 months   COHORTS          INDIA                          >=155 cm             NA                0.0619308   0.0417632   0.0820983
24 months   COHORTS          INDIA                          <151 cm              NA                0.1005155   0.0793537   0.1216772
24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0711297   0.0480804   0.0941790
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0552268   0.0353397   0.0751139
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0766747   0.0618562   0.0914933
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0625889   0.0446798   0.0804980
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1105302   0.0937306   0.1273299
24 months   Keneba           GAMBIA                         <151 cm              NA                0.1666667   0.0723384   0.2609949
24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0980392   0.0572202   0.1388582
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1184211   0.0456943   0.1911478
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1190476   0.0790170   0.1590782
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719122   0.2080878
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0700000   0.0199434   0.1200566
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0975610   0.0631991   0.1319229
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0787402   0.0318525   0.1256278
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0901639   0.0392962   0.1410316
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1170886   0.0816076   0.1525697
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1000000   0.0502628   0.1497372
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1722846   0.1269272   0.2176421
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2941176   0.1407521   0.4474832
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1212121   0.0423654   0.2000588


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2526738   0.2215120   0.2838356
Birth       COHORTS          INDIA                          NA                   NA                0.1736277   0.1554877   0.1917677
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       Keneba           GAMBIA                         NA                   NA                0.2496329   0.2266393   0.2726265
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2428977   0.2111977   0.2745977
Birth       PROBIT           BELARUS                        NA                   NA                0.2102219   0.1448555   0.2755882
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2215686   0.1854897   0.2576475
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1078629   0.0749278   0.1407980
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1541943   0.1467576   0.1616309
6 months    COHORTS          INDIA                          NA                   NA                0.1214953   0.1064776   0.1365130
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
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
24 months   Keneba           GAMBIA                         NA                   NA                0.1110418   0.0956567   0.1264269
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1743869   0.1355135   0.2132603


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8512397   0.6111334   1.1856806
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.7016630   0.4612552   1.0673721
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          0.8044173   0.6320635   1.0237691
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8082215   0.6161475   1.0601715
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0168973   0.8169870   1.2657242
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9647971   0.7556476   1.2318354
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          1.2336957   0.7876351   1.9323731
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0301894   0.7867538   1.3489483
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1194420   0.8007557   1.5649597
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.7414576   0.4782002   1.1496428
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.2417492   0.8544127   1.8046795
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0896686   0.7056489   1.6826750
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          0.9993914   0.7605271   1.3132775
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.0685219   0.9165907   1.2456367
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.3350815   0.8428508   2.1147783
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.3153545   0.7803600   2.2171274
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.2070328   0.8977064   1.6229452
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7793614   0.5693443   1.0668485
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4137163   1.1824231   1.6902527
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0914375   0.9536736   1.2491022
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          1.1434695   0.8557444   1.5279357
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8678773   0.6120813   1.2305735
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0113519   0.6873920   1.4879905
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9103281   0.5882989   1.4086332
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
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.3657517   0.9794641   1.9043862
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.9871747   0.6859249   1.4207296
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.0801080   0.5738058   2.0331500
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.6711230   0.8774074   3.1828453
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9233414   0.4852258   1.7570365
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5291950   0.9606797   2.4341489
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2079415   0.7306048   1.9971435
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0440066   0.7237995   1.5058723
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8485885   0.3818756   1.8856992
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6965986   0.2586395   1.8761626
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.6230291   1.1013308   2.3918550
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1485356   0.7254844   1.8182802
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3883604   0.9225995   2.0892541
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1333062   0.7154797   1.7951356
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.5078829   0.8391916   2.7094059
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8869899   0.5694124   1.3816896
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0052910   0.4991295   2.0247450
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1822222   0.5401063   2.5877303
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.3937282   0.6280442   3.0929007
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.1248594   0.4435675   2.8525730
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.2986191   0.6844780   2.4637921
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.1090909   0.5227945   2.3528991
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7071611   0.9518922   3.0616902
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.7035573   0.3487679   1.4192615


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.0482971   -0.1299321   0.0333379
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.0271597   -0.0555711   0.0012517
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0002733   -0.0256909   0.0251443
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.0029369   -0.0075073   0.0133810
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0024543   -0.0752016   0.0801102
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0335954   -0.0306812   0.0978720
Birth       PROBIT           BELARUS                        >=155 cm             NA                 0.0004167   -0.0007370   0.0015705
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0456427   -0.0197805   0.1110659
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0013814   -0.0155828   0.0183456
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0053519    0.0014869   0.0092169
6 months    COHORTS          INDIA                          >=155 cm             NA                 0.0031959   -0.0197339   0.0261257
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0012169   -0.0187906   0.0163568
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0016676   -0.0060571   0.0027219
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0100580   -0.0756588   0.0555428
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0130936   -0.0282376   0.0544247
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0053468   -0.0373834   0.0266899
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0129961   -0.0089454   0.0349375
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0327529   -0.0405940   0.1060998
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0040523   -0.0030323   0.0111369
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005702   -0.0014939   0.0026343
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0089619   -0.0453572   0.0274334
24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0190454    0.0012217   0.0368690
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0129643   -0.0052416   0.0311701
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0005116   -0.0063758   0.0073989
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0054107   -0.0608227   0.0716442
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0175486   -0.0285912   0.0636885
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0171025   -0.0290792   0.0632842
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021023   -0.0218766   0.0260812


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.1911440   -0.5620710    0.0917033
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.1564250   -0.3317182   -0.0042056
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0017566   -0.1792176    0.1489983
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.0117647   -0.0309668    0.0527250
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0084001   -0.2964142    0.2415461
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1383109   -0.1710712    0.3659582
Birth       PROBIT           BELARUS                        >=155 cm             NA                 0.0019824   -0.0036970    0.0076297
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                 0.2059980   -0.1501501    0.4518636
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0128072   -0.1592448    0.1593237
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0347090    0.0093521    0.0594168
6 months    COHORTS          INDIA                          >=155 cm             NA                 0.0263046   -0.1819325    0.1978537
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0204525   -0.3629913    0.2360015
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0292533   -0.1090296    0.0447844
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.1244019   -1.3107895    0.4528798
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2008929   -0.7605959    0.6372977
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1287500   -1.2328788    0.4294018
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1091315   -0.1004391    0.2787910
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.1825490   -0.3458650    0.5034969
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0951099   -0.0861244    0.2461027
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0185889   -0.0510215    0.0835889
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.1959918   -1.3234737    0.3843715
24 months   COHORTS          INDIA                          >=155 cm             NA                 0.2351972   -0.0163338    0.4244772
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1901168   -0.1243523    0.4166323
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0046068   -0.0593883    0.0647362
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0436941   -0.6728694    0.4533220
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.2004444   -0.5407729    0.5850854
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1594395   -0.4006768    0.4955710
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0120552   -0.1354601    0.1404058
