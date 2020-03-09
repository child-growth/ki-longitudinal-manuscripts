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

* arm
* W_mage
* meducyrs
* feducyrs
* delta_W_mage
* delta_meducyrs
* delta_feducyrs

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
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   0     3880   26837
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   1      246   26837
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                    0    14933   26837
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                    1      983   26837
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               0     6387   26837
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               1      408   26837
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
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                   0     3933   26740
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                   1      179   26740
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                    0    15211   26740
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                    1      647   26740
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm               0     6490   26740
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm               1      280   26740
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
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   0     2648   17247
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   1       67   17247
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                    0     9763   17247
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                    1      347   17247
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               0     4286   17247
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               1      136   17247
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
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/02328361-0326-478e-a19c-bf228ad3f0e8/64018789-f208-4d78-8680-5fd334500c5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/02328361-0326-478e-a19c-bf228ad3f0e8/64018789-f208-4d78-8680-5fd334500c5e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/02328361-0326-478e-a19c-bf228ad3f0e8/64018789-f208-4d78-8680-5fd334500c5e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/02328361-0326-478e-a19c-bf228ad3f0e8/64018789-f208-4d78-8680-5fd334500c5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0949285    0.0494084   0.1404485
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0751410    0.0572178   0.0930642
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0645860    0.0352436   0.0939283
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.1000882    0.0756035   0.1245730
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.1043098    0.0834276   0.1251919
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.1056226    0.0789195   0.1323256
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1263226    0.1003493   0.1522959
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.1235648    0.1071502   0.1399793
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1236048    0.1016316   0.1455780
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0448276    0.0330790   0.0565762
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.0989011    0.0320763   0.1657259
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0663717   -0.0121057   0.1448490
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0597840    0.0519865   0.0675815
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.0612855    0.0569689   0.0656021
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0611017    0.0543374   0.0678661
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1892127    0.1721113   0.2063140
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1871078    0.1056445   0.2685711
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1912604    0.1480144   0.2345063
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1557412    0.0888084   0.2226740
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1709917    0.1318786   0.2101048
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1304998    0.0753621   0.1856375
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0694651    0.0265005   0.1124297
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0980478    0.0699377   0.1261579
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0699478    0.0317603   0.1081354
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0886383    0.0534346   0.1238420
0-24 months   PROBIT           BELARUS                        <151 cm              NA                0.0640000    0.0504110   0.0775890
0-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.0653266    0.0283038   0.1023494
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0507246    0.0140860   0.0873632
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.0616622    0.0372331   0.0860913
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0696203    0.0299064   0.1093341
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1262242    0.0793840   0.1730644
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1684388    0.1275204   0.2093571
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1439283    0.1134905   0.1743661
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1834396    0.0984353   0.2684438
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1618100    0.1132096   0.2104104
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1847562    0.1128008   0.2567117
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0587871    0.0468346   0.0707395
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0897583    0.0602333   0.1192833
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0707156    0.0485250   0.0929061
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0948359    0.0883377   0.1013341
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1288986    0.1017377   0.1560595
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0916958    0.0766392   0.1067525
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0978424    0.0476301   0.1480547
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.0596449    0.0416710   0.0776189
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.0547121    0.0247664   0.0846579
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0791065    0.0567237   0.1014893
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.0704805    0.0527886   0.0881724
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0721335    0.0495005   0.0947666
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0790013    0.0580464   0.0999562
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0631869    0.0510705   0.0753034
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0696412    0.0526857   0.0865968
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0438890    0.0366090   0.0511690
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.0407073    0.0371865   0.0442281
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0417734    0.0357551   0.0477917
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0892766    0.0760878   0.1024653
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.1555649    0.0741672   0.2369625
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.1293599    0.0901392   0.1685806
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
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0530338    0.0210892   0.0849785
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.0748458    0.0487613   0.1009302
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0654525    0.0386235   0.0922816
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0302503    0.0215788   0.0389217
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0384063    0.0184246   0.0583880
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0378257    0.0210442   0.0546071
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0659489    0.0604333   0.0714646
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0895939    0.0662788   0.1129090
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0718737    0.0584751   0.0852724
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0255838    0.0122110   0.0389565
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.0381259    0.0249175   0.0513344
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0340754    0.0180495   0.0501014
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0598659    0.0407042   0.0790276
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0710787    0.0576192   0.0845381
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0628760    0.0461546   0.0795975
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0448276    0.0330790   0.0565762
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.0989011    0.0320763   0.1657259
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.0663717   -0.0121057   0.1448490
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0249771    0.0190220   0.0309323
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.0335788    0.0296077   0.0375499
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0320139    0.0265264   0.0375014
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1248050    0.1100302   0.1395797
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.0777778    0.0224344   0.1331212
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0990415    0.0659414   0.1321417
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1062098    0.0443561   0.1680634
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.0803919    0.0503827   0.1104010
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0956868    0.0432729   0.1481008
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0824558    0.0446305   0.1202810
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1266866    0.0890243   0.1643489
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0912731    0.0688327   0.1137136
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1497252    0.0660425   0.2334080
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1139244    0.0711330   0.1567158
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1289442    0.0665601   0.1913283
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0358428    0.0254766   0.0462090
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0695191    0.0396744   0.0993638
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0385141    0.0202119   0.0568163
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0347506    0.0304043   0.0390970
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0483548    0.0302184   0.0664912
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0274333    0.0182718   0.0365947


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0760784   0.0615201   0.0906368
0-24 months   COHORTS          INDIA                          NA                   NA                0.1034121   0.0897349   0.1170893
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0609979   0.0575023   0.0644934
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
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0413613   0.0383739   0.0443486
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
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0318896   0.0289915   0.0347877
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
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7915540   0.4633212   1.352318
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6803648   0.3513394   1.317519
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.0421782   0.7596863   1.429716
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0552946   0.7423895   1.500084
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9781683   0.7657111   1.249575
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9784849   0.7456469   1.284029
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2062553   1.1131512   4.372777
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4805990   0.4280422   5.121396
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.0251159   0.8903489   1.180282
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.0220416   0.8647736   1.207911
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.9888757   0.6339022   1.542628
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0108223   0.7923295   1.289567
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0979221   0.6746567   1.786735
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8379273   0.4585509   1.531176
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.4114680   0.7138073   2.791008
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0069491   0.4412914   2.297680
0-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          0.7220359   0.4679692   1.114039
0-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.7370027   0.5240840   1.036423
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.2156262   0.5333591   2.770642
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.3725136   0.5467589   3.445383
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.3344409   0.9129249   1.950579
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.1402589   0.8363462   1.554608
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.8820887   0.5088038   1.529235
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.0071776   0.5494793   1.846124
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.5268372   1.0371263   2.247780
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2029099   0.8276500   1.748314
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3591756   1.0890411   1.696316
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9668898   0.8092952   1.155173
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.6096020   0.3362805   1.105073
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.5591864   0.2638863   1.184940
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          0.8909574   0.6104617   1.300336
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9118537   0.5976336   1.391283
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.7998213   0.5765242   1.109605
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8815202   0.6152180   1.263094
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          0.9275054   0.7766880   1.107608
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          0.9517974   0.7705191   1.175725
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          1.7425054   1.0116930   3.001232
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4489792   1.0341282   2.030252
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
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.4112834   0.7801866   2.552878
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.2341660   0.8847328   1.721611
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2696171   0.7010114   2.299431
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2504237   0.7373931   2.120388
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3585344   1.0335430   1.785717
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0898389   0.8884275   1.336912
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.4902393   0.7965456   2.788055
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.3319163   0.6595350   2.689776
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1872982   0.8186759   1.721899
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0502810   0.6929584   1.591856
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.2062553   1.1131512   4.372777
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4805990   0.4280422   5.121396
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.3443800   1.0300740   1.754590
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.2817279   0.9610903   1.709336
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.6231944   0.3029356   1.282026
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7935703   0.5566795   1.131268
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.7569159   0.3798602   1.508244
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9009233   0.4056582   2.000854
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.5364192   0.9251135   2.551670
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.1069346   0.7342182   1.668856
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.7608898   0.3882615   1.491143
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          0.8612056   0.4117608   1.801228
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9395553   1.1555840   3.255388
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0745274   0.6160592   1.874185
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3914785   0.9371042   2.066166
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.7894319   0.5526489   1.127665


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0188500   -0.0607127    0.0230126
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0033238   -0.0173183    0.0239659
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0008711   -0.0240211    0.0222789
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0030431   -0.0031079    0.0091941
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0012139   -0.0059058    0.0083336
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0005984   -0.0065663    0.0077630
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0029126   -0.0577108    0.0635360
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0179521   -0.0217087    0.0576130
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0008998   -0.0016588   -0.0001408
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0105609   -0.0228968    0.0440185
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0198189   -0.0059434    0.0455813
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0147354   -0.0907512    0.0612803
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0073426   -0.0005725    0.0152578
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0014001   -0.0016173    0.0044176
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0337276   -0.0794497    0.0119946
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0055692   -0.0240579    0.0129196
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0096846   -0.0280132    0.0086440
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0025277   -0.0090145    0.0039590
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0075275    0.0011655    0.0138896
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0124459   -0.0322217    0.0571136
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0019395   -0.0348689    0.0387478
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0009495   -0.0016958   -0.0002033
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0056216   -0.0227065    0.0339497
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0105960   -0.0043934    0.0255854
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0032385   -0.0023957    0.0088727
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021679   -0.0004697    0.0048054
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0080570   -0.0040097    0.0201237
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0070618   -0.0103741    0.0244978
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0030431   -0.0031079    0.0091941
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0069125    0.0012096    0.0126153
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0052865   -0.0108741    0.0003010
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0176489   -0.0729694    0.0376717
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0146468   -0.0070739    0.0363675
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0250370   -0.0988793    0.0488054
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0049632   -0.0020083    0.0119348
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001959   -0.0021646    0.0017727


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2477710   -0.9360087    0.1958030
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0321417   -0.1894725    0.2124663
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0069434   -0.2094688    0.1616691
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0635692   -0.0699048    0.1803918
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0199006   -0.1040058    0.1299005
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0031524   -0.0353167    0.0401920
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0183584   -0.4487850    0.3348770
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.2053614   -0.4038413    0.5501980
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0102554   -0.0173672   -0.0031934
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1723224   -0.5965976    0.5709312
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1357061   -0.0745365    0.3048128
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0873447   -0.6455813    0.2815192
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1110339   -0.0159658    0.2221581
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0145491   -0.0172995    0.0454007
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.5260493   -1.4216195    0.0383186
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0757327   -0.3586826    0.1482920
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1397155   -0.4366051    0.0958187
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0611135   -0.2299358    0.0845361
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0777603    0.0103269    0.1405991
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1382389   -0.5307819    0.5148674
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0292857   -0.7208215    0.4524207
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0109039   -0.0179334   -0.0039230
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1343168   -0.8884265    0.6031577
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1665252   -0.1460619    0.3938544
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0967038   -0.0869304    0.2493134
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0318261   -0.0076201    0.0697280
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.2395017   -0.2101042    0.5220596
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1055144   -0.1961073    0.3310763
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0635692   -0.0699048    0.1803918
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.2167623    0.0186063    0.3749080
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0442317   -0.0918533    0.0013129
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1992852   -1.0162912    0.2866681
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1508386   -0.1198073    0.3560721
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.2007964   -0.9611224    0.2647517
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1216302   -0.0649521    0.2755228
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0056696   -0.0642833    0.0497160
