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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mhtcm           ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -------------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                    0      115    1292
0-24 months   COHORTS          GUATEMALA                      >=155 cm                    1       51    1292
0-24 months   COHORTS          GUATEMALA                      <151 cm                     0      412    1292
0-24 months   COHORTS          GUATEMALA                      <151 cm                     1      433    1292
0-24 months   COHORTS          GUATEMALA                      [151-155) cm                0      160    1292
0-24 months   COHORTS          GUATEMALA                      [151-155) cm                1      121    1292
0-24 months   COHORTS          INDIA                          >=155 cm                    0      540    1906
0-24 months   COHORTS          INDIA                          >=155 cm                    1       31    1906
0-24 months   COHORTS          INDIA                          <151 cm                     0      687    1906
0-24 months   COHORTS          INDIA                          <151 cm                     1      137    1906
0-24 months   COHORTS          INDIA                          [151-155) cm                0      458    1906
0-24 months   COHORTS          INDIA                          [151-155) cm                1       53    1906
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                    0      490    3058
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                    1      142    3058
0-24 months   COHORTS          PHILIPPINES                    <151 cm                     0      855    3058
0-24 months   COHORTS          PHILIPPINES                    <151 cm                     1      694    3058
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm                0      624    3058
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm                1      253    3058
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                    0       32     235
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                    1        4     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                     0      108     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                     1       35     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm                0       47     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm                1        9     235
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                    0     2628    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                    1      271    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                     0       69    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                     1       22    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm                0      181    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm                1       45    3216
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                    0     3819   27106
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                    1      336   27106
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                     0    12348   27106
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                     1     3747   27106
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm                0     5940   27106
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm                1      916   27106
0-24 months   Keneba           GAMBIA                         >=155 cm                    0     1602    2430
0-24 months   Keneba           GAMBIA                         >=155 cm                    1      409    2430
0-24 months   Keneba           GAMBIA                         <151 cm                     0       53    2430
0-24 months   Keneba           GAMBIA                         <151 cm                     1       40    2430
0-24 months   Keneba           GAMBIA                         [151-155) cm                0      226    2430
0-24 months   Keneba           GAMBIA                         [151-155) cm                1      100    2430
0-24 months   LCNI-5           MALAWI                         >=155 cm                    0      443     837
0-24 months   LCNI-5           MALAWI                         >=155 cm                    1       71     837
0-24 months   LCNI-5           MALAWI                         <151 cm                     0       76     837
0-24 months   LCNI-5           MALAWI                         <151 cm                     1       55     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm                0      141     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm                1       51     837
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                    0       22     254
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                    1        3     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                     0      114     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                     1       49     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm                0       62     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm                1        4     254
0-24 months   MAL-ED           BRAZIL                         >=155 cm                    0      119     222
0-24 months   MAL-ED           BRAZIL                         >=155 cm                    1       11     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                     0       47     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                     1        6     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm                0       34     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm                1        5     222
0-24 months   MAL-ED           INDIA                          >=155 cm                    0       46     242
0-24 months   MAL-ED           INDIA                          >=155 cm                    1        9     242
0-24 months   MAL-ED           INDIA                          <151 cm                     0       79     242
0-24 months   MAL-ED           INDIA                          <151 cm                     1       36     242
0-24 months   MAL-ED           INDIA                          [151-155) cm                0       59     242
0-24 months   MAL-ED           INDIA                          [151-155) cm                1       13     242
0-24 months   MAL-ED           NEPAL                          >=155 cm                    0       41     238
0-24 months   MAL-ED           NEPAL                          >=155 cm                    1        0     238
0-24 months   MAL-ED           NEPAL                          <151 cm                     0      117     238
0-24 months   MAL-ED           NEPAL                          <151 cm                     1       16     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm                0       59     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm                1        5     238
0-24 months   MAL-ED           PERU                           >=155 cm                    0       49     290
0-24 months   MAL-ED           PERU                           >=155 cm                    1       11     290
0-24 months   MAL-ED           PERU                           <151 cm                     0      124     290
0-24 months   MAL-ED           PERU                           <151 cm                     1       45     290
0-24 months   MAL-ED           PERU                           [151-155) cm                0       54     290
0-24 months   MAL-ED           PERU                           [151-155) cm                1        7     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                    0      159     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                    1       45     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                     0       19     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                     1       14     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm                0       22     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm                1       11     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0       88     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       65     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       15     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       36     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       17     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       35     256
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                    0       99     629
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                    1       18     629
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                     0      224     629
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                     1      142     629
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm                0      110     629
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm                1       36     629
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                    0      132     755
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                    1        8     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                     0      362     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                     1       73     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm                0      162     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm                1       18     755
0-24 months   PROBIT           BELARUS                        >=155 cm                    0    12874   13734
0-24 months   PROBIT           BELARUS                        >=155 cm                    1      337   13734
0-24 months   PROBIT           BELARUS                        <151 cm                     0      113   13734
0-24 months   PROBIT           BELARUS                        <151 cm                     1       12   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm                0      375   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm                1       23   13734
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                    0      129     669
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                    1        9     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                     0      306     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                     1       67     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm                0      140     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm                1       18     669
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                    0      449    1407
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                    1      123    1407
0-24 months   SAS-CompFeed     INDIA                          <151 cm                     0      275    1407
0-24 months   SAS-CompFeed     INDIA                          <151 cm                     1      219    1407
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm                0      219    1407
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm                1      122    1407
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                    0       50     409
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                    1       28     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                     0      102     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                     1      118     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm                0       57     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm                1       54     409
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0     1371    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1      119    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     0      301    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       57    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0      451    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       60    2359
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                    0     6539    9852
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                    1     1300    9852
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                     0      394    9852
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                     1      180    9852
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1119    9852
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm                1      320    9852
0-6 months    COHORTS          GUATEMALA                      >=155 cm                    0      127    1070
0-6 months    COHORTS          GUATEMALA                      >=155 cm                    1       11    1070
0-6 months    COHORTS          GUATEMALA                      <151 cm                     0      620    1070
0-6 months    COHORTS          GUATEMALA                      <151 cm                     1       83    1070
0-6 months    COHORTS          GUATEMALA                      [151-155) cm                0      214    1070
0-6 months    COHORTS          GUATEMALA                      [151-155) cm                1       15    1070
0-6 months    COHORTS          INDIA                          >=155 cm                    0      546    1872
0-6 months    COHORTS          INDIA                          >=155 cm                    1       13    1872
0-6 months    COHORTS          INDIA                          <151 cm                     0      758    1872
0-6 months    COHORTS          INDIA                          <151 cm                     1       52    1872
0-6 months    COHORTS          INDIA                          [151-155) cm                0      485    1872
0-6 months    COHORTS          INDIA                          [151-155) cm                1       18    1872
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                    0      614    3058
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                    1       18    3058
0-6 months    COHORTS          PHILIPPINES                    <151 cm                     0     1421    3058
0-6 months    COHORTS          PHILIPPINES                    <151 cm                     1      128    3058
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm                0      832    3058
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm                1       45    3058
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                    0       31     219
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                    1        3     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                     0      118     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                     1       14     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm                0       49     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm                1        4     219
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                    0     3866   27040
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                    1      279   27040
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                     0    13117   27040
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                     1     2940   27040
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm                0     6075   27040
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm                1      763   27040
0-6 months    Keneba           GAMBIA                         >=155 cm                    0     1599    2158
0-6 months    Keneba           GAMBIA                         >=155 cm                    1      196    2158
0-6 months    Keneba           GAMBIA                         <151 cm                     0       58    2158
0-6 months    Keneba           GAMBIA                         <151 cm                     1       18    2158
0-6 months    Keneba           GAMBIA                         [151-155) cm                0      250    2158
0-6 months    Keneba           GAMBIA                         [151-155) cm                1       37    2158
0-6 months    LCNI-5           MALAWI                         >=155 cm                    0      156     271
0-6 months    LCNI-5           MALAWI                         >=155 cm                    1        5     271
0-6 months    LCNI-5           MALAWI                         <151 cm                     0       30     271
0-6 months    LCNI-5           MALAWI                         <151 cm                     1        8     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm                0       65     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm                1        7     271
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                    0       24     254
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                    1        1     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                     0      145     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                     1       18     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm                0       66     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm                1        0     254
0-6 months    MAL-ED           BRAZIL                         >=155 cm                    0      122     222
0-6 months    MAL-ED           BRAZIL                         >=155 cm                    1        8     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                     0       47     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                     1        6     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm                0       36     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm                1        3     222
0-6 months    MAL-ED           INDIA                          >=155 cm                    0       54     242
0-6 months    MAL-ED           INDIA                          >=155 cm                    1        1     242
0-6 months    MAL-ED           INDIA                          <151 cm                     0      100     242
0-6 months    MAL-ED           INDIA                          <151 cm                     1       15     242
0-6 months    MAL-ED           INDIA                          [151-155) cm                0       68     242
0-6 months    MAL-ED           INDIA                          [151-155) cm                1        4     242
0-6 months    MAL-ED           NEPAL                          >=155 cm                    0       41     238
0-6 months    MAL-ED           NEPAL                          >=155 cm                    1        0     238
0-6 months    MAL-ED           NEPAL                          <151 cm                     0      127     238
0-6 months    MAL-ED           NEPAL                          <151 cm                     1        6     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm                0       60     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm                1        4     238
0-6 months    MAL-ED           PERU                           >=155 cm                    0       54     290
0-6 months    MAL-ED           PERU                           >=155 cm                    1        6     290
0-6 months    MAL-ED           PERU                           <151 cm                     0      144     290
0-6 months    MAL-ED           PERU                           <151 cm                     1       25     290
0-6 months    MAL-ED           PERU                           [151-155) cm                0       55     290
0-6 months    MAL-ED           PERU                           [151-155) cm                1        6     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                    0      185     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                    1       19     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                     0       26     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                     1        7     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm                0       32     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm                1        1     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0      136     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       17     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       38     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       13     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       45     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1        7     256
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                    0      110     629
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                    1        7     629
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                     0      324     629
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                     1       42     629
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm                0      136     629
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm                1       10     629
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                    0      134     755
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                    1        6     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                     0      400     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                     1       35     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm                0      174     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm                1        6     755
0-6 months    PROBIT           BELARUS                        >=155 cm                    0    13089   13734
0-6 months    PROBIT           BELARUS                        >=155 cm                    1      122   13734
0-6 months    PROBIT           BELARUS                        <151 cm                     0      120   13734
0-6 months    PROBIT           BELARUS                        <151 cm                     1        5   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm                0      392   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm                1        6   13734
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                    0      136     669
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                    1        2     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                     0      350     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                     1       23     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm                0      152     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm                1        6     669
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                    0      517    1404
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                    1       54    1404
0-6 months    SAS-CompFeed     INDIA                          <151 cm                     0      387    1404
0-6 months    SAS-CompFeed     INDIA                          <151 cm                     1      105    1404
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm                0      284    1404
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm                1       57    1404
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                    0       74     407
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                    1        4     407
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                     0      188     407
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                     1       32     407
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm                0       96     407
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm                1       13     407
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0     1442    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       48    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     0      334    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       24    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0      481    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       30    2359
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                    0     7105    9841
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                    1      727    9841
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                     0      486    9841
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                     1       86    9841
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1260    9841
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm                1      177    9841


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d0e2b8cd-2a7a-4717-9f57-9aabef668d66/78acd18b-47fa-4cff-9ef4-cc8fa3a7551f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0e2b8cd-2a7a-4717-9f57-9aabef668d66/78acd18b-47fa-4cff-9ef4-cc8fa3a7551f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0e2b8cd-2a7a-4717-9f57-9aabef668d66/78acd18b-47fa-4cff-9ef4-cc8fa3a7551f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0e2b8cd-2a7a-4717-9f57-9aabef668d66/78acd18b-47fa-4cff-9ef4-cc8fa3a7551f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.2814497   0.2167063   0.3461931
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.5105376   0.4763855   0.5446897
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.4184786   0.3574456   0.4795116
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0600707   0.0415784   0.0785631
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.1593240   0.1340263   0.1846217
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.1024427   0.0760579   0.1288275
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.2440456   0.2112403   0.2768510
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.4297377   0.4053650   0.4541103
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2986551   0.2686754   0.3286347
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0934164   0.0741479   0.1126849
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2319365   0.1099152   0.3539579
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2022704   0.1245579   0.2799829
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0890058   0.0794370   0.0985746
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.2258184   0.2180696   0.2335671
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1384503   0.1290715   0.1478291
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.2036586   0.1860646   0.2212525
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.4131565   0.3117684   0.5145446
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.3048690   0.2545503   0.3551877
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1385844   0.1087894   0.1683793
0-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.4196094   0.3332662   0.5059527
0-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.2643074   0.2011927   0.3274221
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.0846154   0.0366660   0.1325648
0-24 months   MAL-ED           BRAZIL                         <151 cm              NA                0.1132075   0.0277128   0.1987022
0-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.1282051   0.0230438   0.2333664
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1636364   0.0656640   0.2616087
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.3130435   0.2281127   0.3979743
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1805556   0.0915235   0.2695876
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1833333   0.0852567   0.2814100
0-24 months   MAL-ED           PERU                           <151 cm              NA                0.2662722   0.1995170   0.3330274
0-24 months   MAL-ED           PERU                           [151-155) cm         NA                0.1147541   0.0346326   0.1948756
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.2190823   0.1619829   0.2761816
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.4091445   0.2312741   0.5870149
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.3321826   0.1650565   0.4993087
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4220250   0.3423796   0.5016703
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7065993   0.5771373   0.8360612
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6827243   0.5573100   0.8081386
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1510234   0.0849223   0.2171245
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.3880452   0.3378719   0.4382185
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2458768   0.1748762   0.3168774
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0571429   0.0186681   0.0956176
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1678161   0.1326748   0.2029574
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1000000   0.0561448   0.1438552
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0255535   0.0187767   0.0323303
0-24 months   PROBIT           BELARUS                        <151 cm              NA                0.0895282   0.0663285   0.1127278
0-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.0569091   0.0322454   0.0815728
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0652174   0.0239915   0.1064433
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1796247   0.1406387   0.2186106
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1139241   0.0643462   0.1635019
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.2207169   0.1900133   0.2514206
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.4326470   0.3741283   0.4911657
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.3578692   0.3226391   0.3930994
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3388719   0.2297264   0.4480174
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.5330482   0.4667066   0.5993899
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.4767638   0.3823275   0.5712001
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0803337   0.0665333   0.0941341
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1581342   0.1201562   0.1961122
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1161369   0.0881146   0.1441592
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1663791   0.1581387   0.1746195
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3185368   0.2809704   0.3561032
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2199339   0.1983370   0.2415308
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0840870   0.0399306   0.1282434
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.1186309   0.0947458   0.1425161
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.0688589   0.0369168   0.1008010
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0278984   0.0127924   0.0430044
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.0636042   0.0466897   0.0805188
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0355234   0.0192155   0.0518312
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0272694   0.0145642   0.0399745
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0831263   0.0692821   0.0969706
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0518892   0.0369887   0.0667898
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0746106   0.0653874   0.0838338
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.1769881   0.1701065   0.1838698
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1164368   0.1077858   0.1250878
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.1088281   0.0944076   0.1232486
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.2381984   0.1401523   0.3362445
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.1318576   0.0927998   0.1709153
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.0310559   0.0042112   0.0579006
0-6 months    LCNI-5           MALAWI                         <151 cm              NA                0.2105263   0.0806646   0.3403880
0-6 months    LCNI-5           MALAWI                         [151-155) cm         NA                0.0972222   0.0286643   0.1657802
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.1000000   0.0239597   0.1760403
0-6 months    MAL-ED           PERU                           <151 cm              NA                0.1479290   0.0943099   0.2015481
0-6 months    MAL-ED           PERU                           [151-155) cm         NA                0.0983607   0.0234988   0.1732225
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1111111   0.0612164   0.1610058
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2549020   0.1350607   0.3747432
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416656   0.2275651
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0598291   0.0168200   0.1028381
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.1147541   0.0820751   0.1474331
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0684932   0.0274884   0.1094979
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0428571   0.0092856   0.0764287
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0804598   0.0548818   0.1060377
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0333333   0.0070925   0.0595742
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0092347   0.0059772   0.0124923
0-6 months    PROBIT           BELARUS                        <151 cm              NA                0.0400000   0.0272492   0.0527508
0-6 months    PROBIT           BELARUS                        [151-155) cm         NA                0.0150754   0.0012610   0.0288898
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0944185   0.0666781   0.1221589
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.2102629   0.1728790   0.2476467
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1688002   0.1304300   0.2071704
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0327453   0.0236692   0.0418215
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0667247   0.0405993   0.0928502
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0574513   0.0368916   0.0780109
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0929761   0.0865458   0.0994064
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1509884   0.1217271   0.1802498
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1223012   0.1052568   0.1393456


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4682663   0.4410469   0.4954857
0-24 months   COHORTS          INDIA                          NA                   NA                0.1159496   0.1015724   0.1303268
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1844241   0.1788262   0.1900221
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2259259   0.2092953   0.2425566
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.0990991   0.0597055   0.1384927
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   MAL-ED           PERU                           NA                   NA                0.2172414   0.1696986   0.2647841
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2592593   0.2068905   0.3116280
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0270861   0.0199367   0.0342354
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3297797   0.2987556   0.3608038
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4889976   0.4404930   0.5375021
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1000424   0.0879314   0.1121534
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1827040   0.1750732   0.1903348
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1018692   0.0837370   0.1200014
0-6 months    COHORTS          INDIA                          NA                   NA                0.0443376   0.0350104   0.0536648
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1472633   0.1422106   0.1523160
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1163114   0.1027818   0.1298410
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.0738007   0.0426155   0.1049860
0-6 months    MAL-ED           PERU                           NA                   NA                0.1275862   0.0891215   0.1660509
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1445312   0.1013733   0.1876892
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0096840   0.0063336   0.0130344
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1538462   0.1345929   0.1730994
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432387   0.0350292   0.0514481
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1005995   0.0946563   0.1065428


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.8139566   1.4282792    2.303778
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.4868680   1.1325713    1.951998
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          2.6522734   1.8786442    3.744484
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7053673   1.1437708    2.542710
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.7608909   1.5230525    2.035870
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2237674   1.0356461    1.446060
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.4828251   1.4144083    4.358303
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          2.1652567   1.4874270    3.151978
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.5371205   2.2735020    2.831306
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.5555205   1.3691623    1.767244
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.0286725   1.5639879    2.631422
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4969613   1.2428720    1.802996
0-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          3.0278269   2.2499700    4.074604
0-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.9071954   1.3836262    2.628885
0-24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          1.3379074   0.5204504    3.439321
0-24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          1.5151515   0.5590860    4.106137
0-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          1.9130435   0.9914102    3.691444
0-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.1033951   0.5080144    2.396548
0-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           PERU                           <151 cm              >=155 cm          1.4523938   0.8044622    2.622184
0-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          0.6259314   0.2597331    1.508434
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.8675383   1.1244111    3.101801
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          1.5162460   0.8593631    2.675239
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.6743067   1.2880213    2.176442
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.6177343   1.2430715    2.105321
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.5694386   1.6283301    4.054469
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.6280715   0.9631343    2.752074
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          2.9367816   1.4509154    5.944307
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.7500000   0.7835495    3.908496
0-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          3.5035588   2.6453816    4.640134
0-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          2.2270578   1.4916007    3.325144
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.7542449   1.4116934    5.373592
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.7468354   0.8108757    3.763134
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.9601893   1.7550523    2.189303
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.6213945   1.3162252    1.997318
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.5730080   1.1136162    2.221909
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.4069145   0.9638414    2.053666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9684670   1.4652049    2.644587
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4456818   1.0749169    1.944333
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.9145240   1.6845665    2.175873
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3218840   1.1842360    1.475531
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4108116   0.8051132    2.472186
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8189004   0.4076547    1.645014
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          2.2798518   1.2474058    4.166827
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          1.2733117   0.6261675    2.589280
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.0483387   1.8586137    4.999623
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.9028383   1.1010966    3.288352
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.3721581   2.0903858    2.691912
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.5605931   1.3504901    1.803383
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          2.1887579   1.4200699    3.373539
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2116131   0.8760203    1.675768
0-6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          6.7789474   2.3440894   19.604255
0-6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          3.1305556   1.0259933    9.552087
0-6 months    MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    MAL-ED           PERU                           <151 cm              >=155 cm          1.4792899   0.6371109    3.434722
0-6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          0.9836066   0.3354135    2.884445
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.2941176   1.1974633    4.395104
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2115385   0.5316503    2.760885
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.9180328   0.8852217    4.155851
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1448141   0.4492102    2.917564
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.8773946   0.8061383    4.372216
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          0.7777778   0.2561806    2.361374
0-6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          4.3314754   2.8860253    6.500871
0-6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.6324656   0.6521124    4.086633
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.2269248   1.5623470    3.174195
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.7877876   1.1695127    2.732920
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.0376876   1.2610022    3.292755
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7544880   1.1155179    2.759461
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6239496   1.3219106    1.995001
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3154048   1.1259223    1.536776


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1868165    0.1251248   0.2485083
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0558789    0.0374461   0.0743117
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1120695    0.0818733   0.1422657
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0116831    0.0060930   0.0172732
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0954183    0.0859817   0.1048550
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0222674    0.0137234   0.0308113
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0728852    0.0492100   0.0965603
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.0144837   -0.0195502   0.0485176
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.0760331   -0.0141902   0.1662563
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.0339080   -0.0549686   0.1227847
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0401770    0.0070134   0.0733406
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1092250    0.0578882   0.1605619
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1605824    0.0966135   0.2245512
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0739830    0.0351014   0.1128645
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0015326    0.0006408   0.0024243
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0752908    0.0341461   0.1164356
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1090627    0.0940860   0.1240395
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1501256    0.0506884   0.2495629
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0197087    0.0098454   0.0295720
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0163249    0.0120648   0.0205851
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0177821   -0.0241383   0.0597026
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0164392    0.0021363   0.0307421
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0351897    0.0222446   0.0481349
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0726527    0.0636601   0.0816454
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0074833    0.0007848   0.0141817
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.0427448    0.0138156   0.0716740
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.0275862   -0.0421924   0.0973648
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0334201   -0.0036795   0.0705198
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0339706   -0.0070364   0.0749777
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0193945   -0.0123307   0.0511197
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0004493   -0.0000833   0.0009818
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0594277    0.0366338   0.0822215
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0104933    0.0036335   0.0173531
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0076235    0.0043251   0.0109218


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.3989536    0.2521664   0.5169290
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.4819238    0.3123848   0.6096612
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.3147002    0.2249870   0.3940285
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1111625    0.0563181   0.1628195
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.5173854    0.4655262   0.5642128
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0985605    0.0602799   0.1352817
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.3446604    0.2298841   0.4423307
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.1461538   -0.2706298   0.4262268
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.3172414   -0.1783116   0.6043837
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1560847   -0.3691355   0.4798228
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1549684    0.0185162   0.2724502
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2056001    0.0997822   0.2989793
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5153383    0.2668536   0.6796043
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.5642136    0.1708072   0.7709703
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0565815    0.0270511   0.0852155
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.5358464    0.1554915   0.7448948
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.3307139    0.2811281   0.3768795
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3070069    0.0690104   0.4841625
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1970036    0.0949136   0.2875783
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0893517    0.0659269   0.1121891
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.1745587   -0.3562742   0.4976286
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.3707735   -0.0353560   0.6175943
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.5634043    0.3199820   0.7196901
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.4933524    0.4303124   0.5494167
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0643383    0.0052989   0.1198735
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.5791925    0.1153040   0.7998421
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.2162162   -0.5688354   0.6084248
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2312312   -0.0638206   0.4444501
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3621614   -0.2505234   0.6746658
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.3115502   -0.4293673   0.6684105
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0463928   -0.0083994   0.0982078
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.3862798    0.2171348   0.5188795
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2426841    0.0742554   0.3804692
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0757804    0.0426633   0.1077518
