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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/999365fb-a619-4047-b351-7895ffe0e9c0/651a1d8c-ec07-42b8-bbc1-c7a8cfe15e3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/999365fb-a619-4047-b351-7895ffe0e9c0/651a1d8c-ec07-42b8-bbc1-c7a8cfe15e3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/999365fb-a619-4047-b351-7895ffe0e9c0/651a1d8c-ec07-42b8-bbc1-c7a8cfe15e3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/999365fb-a619-4047-b351-7895ffe0e9c0/651a1d8c-ec07-42b8-bbc1-c7a8cfe15e3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.3072289   0.2370207   0.3774372
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.5124260   0.4787110   0.5461411
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.4306050   0.3726875   0.4885224
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0542907   0.0357005   0.0728810
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.1662621   0.1408343   0.1916900
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.1037182   0.0772758   0.1301606
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.2246835   0.1921384   0.2572287
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.4480310   0.4232622   0.4727998
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2884835   0.2584938   0.3184732
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0934805   0.0741623   0.1127988
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2417582   0.1248136   0.3587029
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1991150   0.1224088   0.2758213
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.2033814   0.1857855   0.2209773
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.4301075   0.3294651   0.5307499
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.3067485   0.2566799   0.3568170
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1381323   0.1082858   0.1679788
0-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.4198473   0.3352827   0.5044120
0-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.2656250   0.2031149   0.3281351
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.0846154   0.0366660   0.1325648
0-24 months   MAL-ED           BRAZIL                         <151 cm              NA                0.1132075   0.0277128   0.1987022
0-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.1282051   0.0230438   0.2333664
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1636364   0.0656640   0.2616087
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.3130435   0.2281127   0.3979743
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1805556   0.0915235   0.2695876
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1833333   0.0852567   0.2814100
0-24 months   MAL-ED           PERU                           <151 cm              NA                0.2662722   0.1995170   0.3330274
0-24 months   MAL-ED           PERU                           [151-155) cm         NA                0.1147541   0.0346326   0.1948756
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.2205882   0.1635832   0.2775933
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.4242424   0.2553058   0.5931790
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.3333333   0.1721981   0.4944686
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4248366   0.3463566   0.5033166
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7058824   0.5805857   0.8311790
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6730769   0.5453297   0.8008241
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1538462   0.0884174   0.2192749
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.3879781   0.3380161   0.4379402
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2465753   0.1766053   0.3165453
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0571429   0.0186681   0.0956176
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1678161   0.1326748   0.2029574
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1000000   0.0561448   0.1438552
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0255090   0.0187381   0.0322800
0-24 months   PROBIT           BELARUS                        <151 cm              NA                0.0960000   0.0725714   0.1194286
0-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.0577889   0.0335117   0.0820662
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0652174   0.0239915   0.1064433
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1796247   0.1406387   0.2186106
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1139241   0.0643462   0.1635019
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.2150350   0.1882546   0.2418153
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.4433198   0.3801789   0.5064608
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.3577713   0.3213083   0.3942342
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3589744   0.2523880   0.4655608
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.5363636   0.4703875   0.6023398
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.4864865   0.3933908   0.5795822
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0798658   0.0660983   0.0936332
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1592179   0.1213094   0.1971264
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1174168   0.0894996   0.1453341
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1658375   0.1576036   0.1740714
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3135889   0.2756323   0.3515454
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2223767   0.2008900   0.2438633
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0797101   0.0345005   0.1249197
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.1180654   0.0942009   0.1419300
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.0655022   0.0334432   0.0975612
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0232558   0.0107586   0.0357531
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.0641975   0.0473136   0.0810814
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0357853   0.0195478   0.0520228
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0284810   0.0155103   0.0414517
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0826340   0.0689206   0.0963473
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0513113   0.0367068   0.0659158
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.1091922   0.0947609   0.1236235
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.2368421   0.1412375   0.3324467
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.1289199   0.0901408   0.1676989
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
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0945709   0.0668241   0.1223177
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.2134146   0.1712238   0.2556055
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1671554   0.1302881   0.2040227
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0322148   0.0232474   0.0411821
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0670391   0.0411275   0.0929507
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0587084   0.0383219   0.0790949
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0928243   0.0863973   0.0992513
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1503497   0.1210580   0.1796413
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1231733   0.1061808   0.1401658


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4682663   0.4410469   0.4954857
0-24 months   COHORTS          INDIA                          NA                   NA                0.1159496   0.1015724   0.1303268
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
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
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.6678965   1.3148981    2.115661
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.4015770   1.0751203    1.827161
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          3.0624413   2.1047351    4.455927
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.9104223   1.2465979    2.927739
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9940534   1.7076692    2.328466
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2839546   1.0742822    1.534550
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.5861887   1.5295095    4.372887
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          2.1300167   1.4538357    3.120690
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.1147830   1.6478582    2.714012
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.5082425   1.2538387    1.814265
0-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          3.0394581   2.2620864    4.083976
0-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.9229754   1.3970908    2.646810
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
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.9232323   1.1963736    3.091695
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          1.5111111   0.8734535    2.614285
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.6615385   1.2860240    2.146702
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5843195   1.2156770    2.064749
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.5218579   1.6171092    3.932800
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.6027397   0.9612206    2.672409
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          2.9367816   1.4509154    5.944307
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.7500000   0.7835495    3.908496
0-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          3.7633709   2.8543417    4.961901
0-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          2.2654295   1.5355970    3.342134
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.7542449   1.4116934    5.373592
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.7468354   0.8108757    3.763134
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.0616175   1.8383280    2.312028
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.6637818   1.3749492    2.013289
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.4941558   1.0834727    2.060506
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.3552124   0.9519095    1.929386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9935684   1.4858422    2.674789
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4701771   1.0960421    1.972023
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.8909408   1.6590541    2.155238
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3409312   1.2028951    1.494807
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4811845   0.8111729    2.704612
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8217547   0.3884974    1.738186
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          2.7604938   1.5175881    5.021340
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5387674   0.7615926    3.109018
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.9013701   1.7868824    4.710969
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.8015964   1.0529854    3.082426
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          2.1690387   1.4184080    3.316908
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1806691   0.8500396    1.639900
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
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.2566621   1.5602568    3.263901
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.7675138   1.1647857    2.682129
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.0810056   1.2924417    3.350700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8224070   1.1677872    2.843984
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6197228   1.3171811    1.991755
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3269506   1.1371525    1.548427


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1610373    0.0946788   0.2273959
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0616589    0.0430785   0.0802394
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1314316    0.1012734   0.1615897
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0116190    0.0060240   0.0172140
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0225445    0.0139577   0.0311314
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0733372    0.0496108   0.0970637
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.0144837   -0.0195502   0.0485176
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.0760331   -0.0141902   0.1662563
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.0339080   -0.0549686   0.1227847
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0386710    0.0057835   0.0715586
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1064134    0.0559310   0.1568958
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1577596    0.0945103   0.2210089
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0739830    0.0351014   0.1128645
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0015770    0.0006796   0.0024745
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0752908    0.0341461   0.1164356
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1147447    0.0977167   0.1317727
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1300232    0.0331718   0.2268746
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0201766    0.0103390   0.0300143
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0168665    0.0126077   0.0211253
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0221590   -0.0207999   0.0651180
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0210818    0.0088383   0.0333253
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0339781    0.0208524   0.0471038
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0071192    0.0004221   0.0138163
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.0427448    0.0138156   0.0716740
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.0275862   -0.0421924   0.0973648
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0334201   -0.0036795   0.0705198
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0339706   -0.0070364   0.0749777
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0193945   -0.0123307   0.0511197
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0004493   -0.0000833   0.0009818
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0592752    0.0368816   0.0816689
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0110239    0.0042249   0.0178229
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0077752    0.0044766   0.0110738


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.3439012    0.1854499   0.4715296
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.5317733    0.3578916   0.6585681
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.3690705    0.2790703   0.4478350
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1105523    0.0554971   0.1623983
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0997872    0.0613189   0.1366791
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.3467981    0.2316370   0.4446991
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.1461538   -0.2706298   0.4262268
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.3172414   -0.1783116   0.6043837
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1560847   -0.3691355   0.4798228
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1491597    0.0140514   0.2657535
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2003076    0.0968639   0.2919030
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5062794    0.2623871   0.6695285
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.5642136    0.1708072   0.7709703
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0582225    0.0285762   0.0869640
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.5358464    0.1554915   0.7448948
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.3479435    0.3013535   0.3914267
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2658974    0.0376135   0.4400310
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2016807    0.0998850   0.2919641
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0923162    0.0688996   0.1151438
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.2175243   -0.3388025   0.5426747
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.4754833    0.1416658   0.6794748
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.5440056    0.2971685   0.7041525
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0612081    0.0021797   0.1167446
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.5791925    0.1153040   0.7998421
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.2162162   -0.5688354   0.6084248
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2312312   -0.0638206   0.4444501
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3621614   -0.2505234   0.6746658
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.3115502   -0.4293673   0.6684105
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0463928   -0.0083994   0.0982078
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.3852890    0.2181959   0.5166696
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2549546    0.0886246   0.3909286
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0772888    0.0441721   0.1092582
