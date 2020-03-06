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

**Outcome Variable:** ever_swasted

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

agecat        studyid          country                        mhtcm           ever_swasted   n_cell       n
------------  ---------------  -----------------------------  -------------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                   0      149    1275
0-24 months   COHORTS          GUATEMALA                      >=155 cm                   1       16    1275
0-24 months   COHORTS          GUATEMALA                      <151 cm                    0      772    1275
0-24 months   COHORTS          GUATEMALA                      <151 cm                    1       63    1275
0-24 months   COHORTS          GUATEMALA                      [151-155) cm               0      257    1275
0-24 months   COHORTS          GUATEMALA                      [151-155) cm               1       18    1275
0-24 months   COHORTS          INDIA                          >=155 cm                   0      514    1905
0-24 months   COHORTS          INDIA                          >=155 cm                   1       57    1905
0-24 months   COHORTS          INDIA                          <151 cm                    0      736    1905
0-24 months   COHORTS          INDIA                          <151 cm                    1       87    1905
0-24 months   COHORTS          INDIA                          [151-155) cm               0      458    1905
0-24 months   COHORTS          INDIA                          [151-155) cm               1       53    1905
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                   0      549    3045
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                   1       80    3045
0-24 months   COHORTS          PHILIPPINES                    <151 cm                    0     1346    3045
0-24 months   COHORTS          PHILIPPINES                    <151 cm                    1      194    3045
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm               0      768    3045
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm               1      108    3045
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     235
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    0      141     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    1        2     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               0       56     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     235
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     2770    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      130    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       82    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        9    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0      211    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1       15    3217
0-24 months   Keneba           GAMBIA                         >=155 cm                   0     1634    2434
0-24 months   Keneba           GAMBIA                         >=155 cm                   1      381    2434
0-24 months   Keneba           GAMBIA                         <151 cm                    0       75    2434
0-24 months   Keneba           GAMBIA                         <151 cm                    1       18    2434
0-24 months   Keneba           GAMBIA                         [151-155) cm               0      263    2434
0-24 months   Keneba           GAMBIA                         [151-155) cm               1       63    2434
0-24 months   LCNI-5           MALAWI                         >=155 cm                   0      511     837
0-24 months   LCNI-5           MALAWI                         >=155 cm                   1        3     837
0-24 months   LCNI-5           MALAWI                         <151 cm                    0      129     837
0-24 months   LCNI-5           MALAWI                         <151 cm                    1        2     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm               0      189     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm               1        3     837
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                   0       23     254
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                   1        2     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                    0      149     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                    1       14     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm               0       61     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm               1        5     254
0-24 months   MAL-ED           BRAZIL                         >=155 cm                   0      126     222
0-24 months   MAL-ED           BRAZIL                         >=155 cm                   1        4     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                    0       53     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                    1        0     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm               0       39     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm               1        0     222
0-24 months   MAL-ED           INDIA                          >=155 cm                   0       51     242
0-24 months   MAL-ED           INDIA                          >=155 cm                   1        4     242
0-24 months   MAL-ED           INDIA                          <151 cm                    0       99     242
0-24 months   MAL-ED           INDIA                          <151 cm                    1       16     242
0-24 months   MAL-ED           INDIA                          [151-155) cm               0       66     242
0-24 months   MAL-ED           INDIA                          [151-155) cm               1        6     242
0-24 months   MAL-ED           NEPAL                          >=155 cm                   0       40     238
0-24 months   MAL-ED           NEPAL                          >=155 cm                   1        1     238
0-24 months   MAL-ED           NEPAL                          <151 cm                    0      127     238
0-24 months   MAL-ED           NEPAL                          <151 cm                    1        6     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm               0       62     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm               1        2     238
0-24 months   MAL-ED           PERU                           >=155 cm                   0       60     290
0-24 months   MAL-ED           PERU                           >=155 cm                   1        0     290
0-24 months   MAL-ED           PERU                           <151 cm                    0      166     290
0-24 months   MAL-ED           PERU                           <151 cm                    1        3     290
0-24 months   MAL-ED           PERU                           [151-155) cm               0       60     290
0-24 months   MAL-ED           PERU                           [151-155) cm               1        1     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   0      195     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   1        9     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    0       30     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    1        3     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               0       30     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               1        3     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      151     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        2     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       49     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       47     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        5     256
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   0       98     624
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   1       18     624
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                    0      300     624
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                    1       62     624
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               0      127     624
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               1       19     624
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   0      130     755
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   1       10     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    0      392     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    1       43     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               0      167     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               1       13     755
0-24 months   PROBIT           BELARUS                        >=155 cm                   0    12040   13734
0-24 months   PROBIT           BELARUS                        >=155 cm                   1     1171   13734
0-24 months   PROBIT           BELARUS                        <151 cm                    0      117   13734
0-24 months   PROBIT           BELARUS                        <151 cm                    1        8   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm               0      372   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm               1       26   13734
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                   0      131     669
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                   1        7     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                    0      350     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                    1       23     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm               0      147     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm               1       11     669
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                   0      499    1390
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                   1       69    1390
0-24 months   SAS-CompFeed     INDIA                          <151 cm                    0      400    1390
0-24 months   SAS-CompFeed     INDIA                          <151 cm                    1       87    1390
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm               0      288    1390
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm               1       47    1390
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   0       64     409
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   1       14     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    0      185     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    1       35     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               0       91     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               1       20     409
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1402    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       88    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      326    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       32    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      475    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       36    2359
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7078    9830
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   1      741    9830
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    0      501    9830
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    1       73    9830
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1305    9830
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               1      132    9830
0-6 months    COHORTS          GUATEMALA                      >=155 cm                   0      122    1045
0-6 months    COHORTS          GUATEMALA                      >=155 cm                   1       14    1045
0-6 months    COHORTS          GUATEMALA                      <151 cm                    0      646    1045
0-6 months    COHORTS          GUATEMALA                      <151 cm                    1       40    1045
0-6 months    COHORTS          GUATEMALA                      [151-155) cm               0      210    1045
0-6 months    COHORTS          GUATEMALA                      [151-155) cm               1       13    1045
0-6 months    COHORTS          INDIA                          >=155 cm                   0      511    1863
0-6 months    COHORTS          INDIA                          >=155 cm                   1       44    1863
0-6 months    COHORTS          INDIA                          <151 cm                    0      750    1863
0-6 months    COHORTS          INDIA                          <151 cm                    1       57    1863
0-6 months    COHORTS          INDIA                          [151-155) cm               0      465    1863
0-6 months    COHORTS          INDIA                          [151-155) cm               1       36    1863
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                   0      577    3044
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                   1       52    3044
0-6 months    COHORTS          PHILIPPINES                    <151 cm                    0     1441    3044
0-6 months    COHORTS          PHILIPPINES                    <151 cm                    1       98    3044
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm               0      815    3044
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm               1       61    3044
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                   0       34     219
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                    0      131     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                    1        1     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm               0       53     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     219
0-6 months    Keneba           GAMBIA                         >=155 cm                   0     1636    2159
0-6 months    Keneba           GAMBIA                         >=155 cm                   1      160    2159
0-6 months    Keneba           GAMBIA                         <151 cm                    0       64    2159
0-6 months    Keneba           GAMBIA                         <151 cm                    1       12    2159
0-6 months    Keneba           GAMBIA                         [151-155) cm               0      250    2159
0-6 months    Keneba           GAMBIA                         [151-155) cm               1       37    2159
0-6 months    LCNI-5           MALAWI                         >=155 cm                   0      161     271
0-6 months    LCNI-5           MALAWI                         >=155 cm                   1        0     271
0-6 months    LCNI-5           MALAWI                         <151 cm                    0       38     271
0-6 months    LCNI-5           MALAWI                         <151 cm                    1        0     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm               0       72     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm               1        0     271
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                   0       23     254
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                   1        2     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                    0      153     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                    1       10     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm               0       62     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm               1        4     254
0-6 months    MAL-ED           BRAZIL                         >=155 cm                   0      127     222
0-6 months    MAL-ED           BRAZIL                         >=155 cm                   1        3     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                    0       53     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                    1        0     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm               0       39     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm               1        0     222
0-6 months    MAL-ED           INDIA                          >=155 cm                   0       52     242
0-6 months    MAL-ED           INDIA                          >=155 cm                   1        3     242
0-6 months    MAL-ED           INDIA                          <151 cm                    0      102     242
0-6 months    MAL-ED           INDIA                          <151 cm                    1       13     242
0-6 months    MAL-ED           INDIA                          [151-155) cm               0       67     242
0-6 months    MAL-ED           INDIA                          [151-155) cm               1        5     242
0-6 months    MAL-ED           NEPAL                          >=155 cm                   0       40     238
0-6 months    MAL-ED           NEPAL                          >=155 cm                   1        1     238
0-6 months    MAL-ED           NEPAL                          <151 cm                    0      129     238
0-6 months    MAL-ED           NEPAL                          <151 cm                    1        4     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm               0       62     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm               1        2     238
0-6 months    MAL-ED           PERU                           >=155 cm                   0       60     290
0-6 months    MAL-ED           PERU                           >=155 cm                   1        0     290
0-6 months    MAL-ED           PERU                           <151 cm                    0      168     290
0-6 months    MAL-ED           PERU                           <151 cm                    1        1     290
0-6 months    MAL-ED           PERU                           [151-155) cm               0       61     290
0-6 months    MAL-ED           PERU                           [151-155) cm               1        0     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                   0      201     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                   1        3     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                    0       33     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                    1        0     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm               0       31     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm               1        2     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      152     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       51     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        0     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       49     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        3     256
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                   0      107     622
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                   1        9     622
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                    0      320     622
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                    1       40     622
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm               0      139     622
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm               1        7     622
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                   0      131     755
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                   1        9     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                    0      406     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                    1       29     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm               0      168     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm               1       12     755
0-6 months    PROBIT           BELARUS                        >=155 cm                   0    12048   13734
0-6 months    PROBIT           BELARUS                        >=155 cm                   1     1163   13734
0-6 months    PROBIT           BELARUS                        <151 cm                    0      117   13734
0-6 months    PROBIT           BELARUS                        <151 cm                    1        8   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm               0      373   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm               1       25   13734
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                   0      133     669
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                   1        5     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                    0      356     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                    1       17     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm               0      152     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm               1        6     669
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                   0      536    1383
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                   1       29    1383
0-6 months    SAS-CompFeed     INDIA                          <151 cm                    0      447    1383
0-6 months    SAS-CompFeed     INDIA                          <151 cm                    1       37    1383
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm               0      312    1383
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm               1       22    1383
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                   0       76     409
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                   1        2     409
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                    0      210     409
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                    1       10     409
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm               0      104     409
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm               1        7     409
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1444    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       46    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      344    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      492    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       19    2359
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                   0     7274    9792
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                   1      514    9792
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                    0      520    9792
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                    1       50    9792
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1331    9792
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm               1      103    9792
6-24 months   COHORTS          GUATEMALA                      >=155 cm                   0      144    1156
6-24 months   COHORTS          GUATEMALA                      >=155 cm                   1        2    1156
6-24 months   COHORTS          GUATEMALA                      <151 cm                    0      739    1156
6-24 months   COHORTS          GUATEMALA                      <151 cm                    1       23    1156
6-24 months   COHORTS          GUATEMALA                      [151-155) cm               0      243    1156
6-24 months   COHORTS          GUATEMALA                      [151-155) cm               1        5    1156
6-24 months   COHORTS          INDIA                          >=155 cm                   0      535    1843
6-24 months   COHORTS          INDIA                          >=155 cm                   1       13    1843
6-24 months   COHORTS          INDIA                          <151 cm                    0      767    1843
6-24 months   COHORTS          INDIA                          <151 cm                    1       32    1843
6-24 months   COHORTS          INDIA                          [151-155) cm               0      479    1843
6-24 months   COHORTS          INDIA                          [151-155) cm               1       17    1843
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                   0      548    2809
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                   1       33    2809
6-24 months   COHORTS          PHILIPPINES                    <151 cm                    0     1317    2809
6-24 months   COHORTS          PHILIPPINES                    <151 cm                    1      105    2809
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm               0      756    2809
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm               1       50    2809
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   0       36     225
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   1        0     225
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    0      135     225
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    1        1     225
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               0       53     225
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               1        0     225
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     2770    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      130    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       82    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    1        9    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0      211    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1       15    3217
6-24 months   Keneba           GAMBIA                         >=155 cm                   0     1683    2326
6-24 months   Keneba           GAMBIA                         >=155 cm                   1      240    2326
6-24 months   Keneba           GAMBIA                         <151 cm                    0       83    2326
6-24 months   Keneba           GAMBIA                         <151 cm                    1        7    2326
6-24 months   Keneba           GAMBIA                         [151-155) cm               0      282    2326
6-24 months   Keneba           GAMBIA                         [151-155) cm               1       31    2326
6-24 months   LCNI-5           MALAWI                         >=155 cm                   0      503     823
6-24 months   LCNI-5           MALAWI                         >=155 cm                   1        3     823
6-24 months   LCNI-5           MALAWI                         <151 cm                    0      128     823
6-24 months   LCNI-5           MALAWI                         <151 cm                    1        2     823
6-24 months   LCNI-5           MALAWI                         [151-155) cm               0      184     823
6-24 months   LCNI-5           MALAWI                         [151-155) cm               1        3     823
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                   0       24     240
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                   1        0     240
6-24 months   MAL-ED           BANGLADESH                     <151 cm                    0      153     240
6-24 months   MAL-ED           BANGLADESH                     <151 cm                    1        4     240
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm               0       58     240
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm               1        1     240
6-24 months   MAL-ED           BRAZIL                         >=155 cm                   0      119     207
6-24 months   MAL-ED           BRAZIL                         >=155 cm                   1        1     207
6-24 months   MAL-ED           BRAZIL                         <151 cm                    0       50     207
6-24 months   MAL-ED           BRAZIL                         <151 cm                    1        0     207
6-24 months   MAL-ED           BRAZIL                         [151-155) cm               0       37     207
6-24 months   MAL-ED           BRAZIL                         [151-155) cm               1        0     207
6-24 months   MAL-ED           INDIA                          >=155 cm                   0       54     234
6-24 months   MAL-ED           INDIA                          >=155 cm                   1        1     234
6-24 months   MAL-ED           INDIA                          <151 cm                    0      107     234
6-24 months   MAL-ED           INDIA                          <151 cm                    1        4     234
6-24 months   MAL-ED           INDIA                          [151-155) cm               0       67     234
6-24 months   MAL-ED           INDIA                          [151-155) cm               1        1     234
6-24 months   MAL-ED           NEPAL                          >=155 cm                   0       41     235
6-24 months   MAL-ED           NEPAL                          >=155 cm                   1        0     235
6-24 months   MAL-ED           NEPAL                          <151 cm                    0      129     235
6-24 months   MAL-ED           NEPAL                          <151 cm                    1        2     235
6-24 months   MAL-ED           NEPAL                          [151-155) cm               0       63     235
6-24 months   MAL-ED           NEPAL                          [151-155) cm               1        0     235
6-24 months   MAL-ED           PERU                           >=155 cm                   0       58     269
6-24 months   MAL-ED           PERU                           >=155 cm                   1        0     269
6-24 months   MAL-ED           PERU                           <151 cm                    0      153     269
6-24 months   MAL-ED           PERU                           <151 cm                    1        2     269
6-24 months   MAL-ED           PERU                           [151-155) cm               0       55     269
6-24 months   MAL-ED           PERU                           [151-155) cm               1        1     269
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   0      185     254
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   1        6     254
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    0       29     254
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    1        3     254
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               0       30     254
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               1        1     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      146     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       44     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       50     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1        2     245
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   0       88     542
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   1       10     542
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                    0      291     542
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                    1       26     542
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               0      115     542
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               1       12     542
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   0      136     730
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    0      403     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    1       16     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               0      171     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               1        2     730
6-24 months   PROBIT           BELARUS                        >=155 cm                   0    13195   13726
6-24 months   PROBIT           BELARUS                        >=155 cm                   1        8   13726
6-24 months   PROBIT           BELARUS                        <151 cm                    0      125   13726
6-24 months   PROBIT           BELARUS                        <151 cm                    1        0   13726
6-24 months   PROBIT           BELARUS                        [151-155) cm               0      397   13726
6-24 months   PROBIT           BELARUS                        [151-155) cm               1        1   13726
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                   0      127     614
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                   1        2     614
6-24 months   PROVIDE          BANGLADESH                     <151 cm                    0      330     614
6-24 months   PROVIDE          BANGLADESH                     <151 cm                    1        6     614
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm               0      144     614
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm               1        5     614
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                   0      496    1277
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                   1       43    1277
6-24 months   SAS-CompFeed     INDIA                          <151 cm                    0      378    1277
6-24 months   SAS-CompFeed     INDIA                          <151 cm                    1       54    1277
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm               0      279    1277
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm               1       27    1277
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   0       64     401
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   1       12     401
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    0      190     401
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    1       25     401
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               0       97     401
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               1       13     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1201    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       45    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      284    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       19    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      419    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       17    1985
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   0     6606    8624
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   1      237    8624
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    0      493    8624
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    1       26    8624
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               0     1227    8624
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               1       35    8624


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/ee762dfc-ef19-48ac-8e0f-b4dd8e27f9fe/c370e7a5-beaa-4a9c-b6ae-7538234f1099/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee762dfc-ef19-48ac-8e0f-b4dd8e27f9fe/c370e7a5-beaa-4a9c-b6ae-7538234f1099/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee762dfc-ef19-48ac-8e0f-b4dd8e27f9fe/c370e7a5-beaa-4a9c-b6ae-7538234f1099/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee762dfc-ef19-48ac-8e0f-b4dd8e27f9fe/c370e7a5-beaa-4a9c-b6ae-7538234f1099/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0969697    0.0518002   0.1421392
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0754491    0.0575279   0.0933703
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0654545    0.0362115   0.0946976
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0998249    0.0752310   0.1244187
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.1057108    0.0846991   0.1267225
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.1037182    0.0772758   0.1301606
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1271860    0.1011440   0.1532280
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.1259740    0.1093987   0.1425493
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1232877    0.1015128   0.1450625
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0448276    0.0330790   0.0565762
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.0989011    0.0320763   0.1657259
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0663717   -0.0121057   0.1448490
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1890819    0.1719812   0.2061826
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1935484    0.1132365   0.2738603
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1932515    0.1503810   0.2361221
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1551724    0.0892309   0.2211139
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1712707    0.1324298   0.2101117
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1301370    0.0755177   0.1847562
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0714286    0.0287396   0.1141175
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0988506    0.0707847   0.1269165
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0722222    0.0343817   0.1100627
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0886383    0.0534346   0.1238420
0-24 months   PROBIT           BELARUS                        <151 cm              NA                0.0640000    0.0504110   0.0775890
0-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.0653266    0.0283038   0.1023494
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0507246    0.0140860   0.0873632
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.0616622    0.0372331   0.0860913
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0696203    0.0299064   0.1093341
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1214789    0.0761790   0.1667787
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1786448    0.1403009   0.2169886
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1402985    0.1066336   0.1739634
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1794872    0.0942181   0.2647563
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1590909    0.1106998   0.2074820
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1801802    0.1085937   0.2517666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0590604    0.0470881   0.0710327
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0893855    0.0598258   0.1189451
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0704501    0.0482576   0.0926426
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0947692    0.0882767   0.1012616
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1271777    0.0999204   0.1544350
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0918580    0.0769240   0.1067921
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.1029412    0.0518446   0.1540377
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.0583090    0.0407655   0.0758525
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.0582960    0.0275293   0.0890626
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0792793    0.0567959   0.1017627
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.0706320    0.0529503   0.0883136
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0718563    0.0492366   0.0944759
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0826709    0.0611464   0.1041954
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0636777    0.0514764   0.0758790
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0696347    0.0527767   0.0864927
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0890869    0.0759091   0.1022646
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.1578947    0.0758957   0.2398938
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.1289199    0.0901409   0.1676989
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0775862    0.0288644   0.1263080
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.1111111    0.0786212   0.1436010
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0479452    0.0132616   0.0826288
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0642857    0.0236320   0.1049395
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0666667    0.0432101   0.0901232
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0666667    0.0302020   0.1031313
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0880327    0.0528461   0.1232193
0-6 months    PROBIT           BELARUS                        <151 cm              NA                0.0640000    0.0504110   0.0775890
0-6 months    PROBIT           BELARUS                        [151-155) cm         NA                0.0628141    0.0257741   0.0998540
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.0362319    0.0050311   0.0674326
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.0455764    0.0243948   0.0667580
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0379747    0.0081494   0.0678000
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0513274    0.0211679   0.0814870
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.0764463    0.0509592   0.1019333
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0658683    0.0386006   0.0931359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0308725    0.0220879   0.0396571
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0391061    0.0190217   0.0591905
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0371820    0.0207735   0.0535905
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0659990    0.0604846   0.0715134
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0877193    0.0644949   0.1109437
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0718271    0.0584625   0.0851916
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0237226    0.0109775   0.0364677
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.0400501    0.0264507   0.0536494
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0342742    0.0182589   0.0502895
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0567986    0.0379748   0.0756225
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0738397    0.0602452   0.0874342
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0620347    0.0453788   0.0786907
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0448276    0.0330790   0.0565762
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.0989011    0.0320763   0.1657259
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0663717   -0.0121057   0.1448490
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1248050    0.1100302   0.1395797
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.0777778    0.0224344   0.1331212
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0990415    0.0659414   0.1321417
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1020408    0.0420546   0.1620270
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.0820189    0.0517851   0.1122528
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0944882    0.0435688   0.1454076
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0797774    0.0424651   0.1170896
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1250000    0.0859778   0.1640222
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0882353    0.0622995   0.1141710
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1578947    0.0758123   0.2399772
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1162791    0.0733769   0.1591813
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1181818    0.0577788   0.1785849
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0361156    0.0257532   0.0464779
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0627063    0.0354021   0.0900105
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0389908    0.0208165   0.0571652
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0346339    0.0303013   0.0389665
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0500963    0.0313277   0.0688650
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0277338    0.0186735   0.0367940


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0760784   0.0615201   0.0906368
0-24 months   COHORTS          INDIA                          NA                   NA                0.1034121   0.0897349   0.1170893
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1898110   0.1742287   0.2053933
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0877385   0.0529840   0.1224929
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1460432   0.1145875   0.1774988
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1687042   0.1323664   0.2050420
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0661297   0.0560993   0.0761601
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0962360   0.0904057   0.1020663
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0641148   0.0492559   0.0789738
0-6 months    COHORTS          INDIA                          NA                   NA                0.0735373   0.0616816   0.0853930
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0968041   0.0843285   0.1092796
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0870832   0.0523350   0.1218313
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0636298   0.0408673   0.0863923
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0334888   0.0262272   0.0407503
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0681168   0.0631263   0.0731073
6-24 months   COHORTS          INDIA                          NA                   NA                0.0336408   0.0254069   0.0418747
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1195185   0.1063325   0.1327045
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0971026   0.0697212   0.1244840
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1246883   0.0923131   0.1570635
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408060   0.0321006   0.0495115
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0345547   0.0306996   0.0384098


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7780689   0.4612496   1.312502
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6750000   0.3539944   1.287097
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.0589627   0.7716196   1.453309
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0390016   0.7288590   1.481115
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9904708   0.7764973   1.263407
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9693493   0.7396818   1.270328
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2062553   1.1131512   4.372777
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4805990   0.4280422   5.121396
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.0236220   0.6694230   1.565232
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0220521   0.8043240   1.298718
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1037446   0.6818311   1.786736
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8386606   0.4615213   1.523985
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.3839080   0.7140894   2.682019
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0111111   0.4566925   2.238587
0-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          0.7220359   0.4679692   1.114039
0-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7370027   0.5240840   1.036423
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.2156262   0.5333591   2.770642
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.3725136   0.5467589   3.445383
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.4705830   1.0145558   2.131587
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.1549210   0.8492969   1.570526
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.8863636   0.5042254   1.558114
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.0038610   0.5403948   1.864816
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.5134586   1.0268684   2.230624
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1928482   0.8201612   1.734887
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3419736   1.0715798   1.680596
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9692820   0.8125144   1.156297
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.5664307   0.3170062   1.012106
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.5663037   0.2744088   1.168694
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          0.8909260   0.6103194   1.300547
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9063691   0.5933285   1.384570
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.7702554   0.5574940   1.064215
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8423121   0.5902969   1.201920
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          1.7723684   1.0328625   3.041344
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4471254   1.0349745   2.023404
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4320988   0.7163610   2.862951
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.6179604   0.2370996   1.610610
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.0370370   0.5029246   2.138384
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0370370   0.4494405   2.392855
0-6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          0.7270026   0.4699225   1.124723
0-6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7135311   0.5026594   1.012866
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.2579088   0.4727932   3.346779
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.0481013   0.3267595   3.361849
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.4893844   0.8619528   2.573535
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.2832955   0.9327740   1.765537
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2666991   0.7041744   2.278592
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2043734   0.7123937   2.036115
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3291010   1.0068971   1.754409
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0883057   0.8875038   1.334540
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.6882642   0.8941651   3.187595
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4447891   0.7088824   2.944657
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3000256   0.8898211   1.899333
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0921874   0.7129508   1.673150
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2062553   1.1131512   4.372777
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4805990   0.4280422   5.121396
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.6231944   0.3029356   1.282026
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7935703   0.5566795   1.131268
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8037855   0.4015994   1.608745
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9259843   0.4171161   2.055655
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.5668605   0.9558612   2.568419
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.1060192   0.7320601   1.671008
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.7364341   0.3892960   1.393118
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          0.7484848   0.3610538   1.551651
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7362670   1.0307373   2.924725
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0796126   0.6245356   1.866288
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4464525   0.9744620   2.147056
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8007683   0.5643939   1.136139


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0208913   -0.0624142    0.0206317
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0035872   -0.0171330    0.0243074
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0017344   -0.0248960    0.0214271
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0030431   -0.0031079    0.0091941
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0007291   -0.0064162    0.0078745
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0034814   -0.0561397    0.0631025
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0159886   -0.0234188    0.0553961
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0008998   -0.0016588   -0.0001408
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0105609   -0.0228968    0.0440185
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0245643   -0.0003205    0.0494491
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0107830   -0.0870591    0.0654930
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0070693   -0.0008601    0.0149988
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0014669   -0.0015476    0.0044813
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0388263   -0.0852168    0.0075641
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0057420   -0.0243128    0.0128288
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0133542   -0.0321498    0.0054413
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0077172    0.0013626    0.0140718
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0124459   -0.0322217    0.0571136
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0019395   -0.0348689    0.0387478
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0009495   -0.0016958   -0.0002033
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0056216   -0.0227065    0.0339497
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0123024   -0.0009380    0.0255427
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0026163   -0.0030772    0.0083097
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021179   -0.0005171    0.0047528
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0099182   -0.0016419    0.0214783
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0101291   -0.0069937    0.0272519
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0030431   -0.0031079    0.0091941
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0052865   -0.0108741    0.0003010
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0134799   -0.0670546    0.0400948
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0173252   -0.0032618    0.0379123
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0332065   -0.1055377    0.0391248
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0046905   -0.0022636    0.0116446
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0000792   -0.0020397    0.0018813


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2746017   -0.9528085    0.1680651
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0346885   -0.1879377    0.2155932
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0138257   -0.2163271    0.1549621
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0635692   -0.0699048    0.1803918
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0038413   -0.0345227    0.0407827
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0219436   -0.4362325    0.3339558
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1829004   -0.4157638    0.5284159
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0102554   -0.0173672   -0.0031934
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1723224   -0.5965976    0.5709312
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1681988   -0.0376944    0.3332400
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0639168   -0.6271203    0.3043422
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1069007   -0.0203298    0.2182662
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0152423   -0.0165739    0.0460628
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.6055751   -1.5029506   -0.0299330
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0780825   -0.3623184    0.1468501
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1926552   -0.4959099    0.0491230
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0797200    0.0123747    0.1424730
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1382389   -0.5307819    0.5148674
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0292857   -0.7208215    0.4524207
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0109039   -0.0179334   -0.0039230
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1343168   -0.8884265    0.6031577
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1933427   -0.0884344    0.4021725
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0781242   -0.1076211    0.2327205
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0310915   -0.0083136    0.0689567
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.2948258   -0.1361737    0.5623286
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1513440   -0.1462308    0.3716649
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0635692   -0.0699048    0.1803918
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0442317   -0.0918533    0.0013129
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1522109   -0.9459907    0.3177820
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1784218   -0.0832963    0.3769103
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.2663158   -0.9979556    0.1974017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1149456   -0.0709997    0.2686073
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0022921   -0.0606655    0.0528688
