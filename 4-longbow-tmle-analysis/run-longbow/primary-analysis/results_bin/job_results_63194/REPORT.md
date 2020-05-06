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

agecat        studyid          country                        mhtcm           ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------------  --------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                    0      115    1292  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      >=155 cm                    1       51    1292  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      <151 cm                     0      412    1292  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      <151 cm                     1      433    1292  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      [151-155) cm                0      160    1292  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      [151-155) cm                1      121    1292  ever_sstunted    
0-24 months   COHORTS          INDIA                          >=155 cm                    0      540    1906  ever_sstunted    
0-24 months   COHORTS          INDIA                          >=155 cm                    1       31    1906  ever_sstunted    
0-24 months   COHORTS          INDIA                          <151 cm                     0      687    1906  ever_sstunted    
0-24 months   COHORTS          INDIA                          <151 cm                     1      137    1906  ever_sstunted    
0-24 months   COHORTS          INDIA                          [151-155) cm                0      458    1906  ever_sstunted    
0-24 months   COHORTS          INDIA                          [151-155) cm                1       53    1906  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                    0      490    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                    1      142    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    <151 cm                     0      855    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    <151 cm                     1      694    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm                0      624    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm                1      253    3058  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                    0       32     235  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                    1        4     235  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                     0      108     235  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                     1       35     235  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm                0       47     235  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm                1        9     235  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                    0     2628    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                    1      271    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                     0       69    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                     1       22    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm                0      181    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm                1       45    3216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                    0     3819   27106  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                    1      336   27106  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                     0    12348   27106  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                     1     3747   27106  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm                0     5940   27106  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm                1      916   27106  ever_sstunted    
0-24 months   Keneba           GAMBIA                         >=155 cm                    0     1602    2430  ever_sstunted    
0-24 months   Keneba           GAMBIA                         >=155 cm                    1      409    2430  ever_sstunted    
0-24 months   Keneba           GAMBIA                         <151 cm                     0       53    2430  ever_sstunted    
0-24 months   Keneba           GAMBIA                         <151 cm                     1       40    2430  ever_sstunted    
0-24 months   Keneba           GAMBIA                         [151-155) cm                0      226    2430  ever_sstunted    
0-24 months   Keneba           GAMBIA                         [151-155) cm                1      100    2430  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         >=155 cm                    0      443     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         >=155 cm                    1       71     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         <151 cm                     0       76     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         <151 cm                     1       55     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         [151-155) cm                0      141     837  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         [151-155) cm                1       51     837  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                    0       22     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                    1        3     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     <151 cm                     0      114     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     <151 cm                     1       49     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm                0       62     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm                1        4     254  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         >=155 cm                    0      119     222  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         >=155 cm                    1       11     222  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         <151 cm                     0       47     222  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         <151 cm                     1        6     222  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         [151-155) cm                0       34     222  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         [151-155) cm                1        5     222  ever_sstunted    
0-24 months   MAL-ED           INDIA                          >=155 cm                    0       46     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          >=155 cm                    1        9     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          <151 cm                     0       79     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          <151 cm                     1       36     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          [151-155) cm                0       59     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          [151-155) cm                1       13     242  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          >=155 cm                    0       41     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          >=155 cm                    1        0     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          <151 cm                     0      117     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          <151 cm                     1       16     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          [151-155) cm                0       59     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          [151-155) cm                1        5     238  ever_sstunted    
0-24 months   MAL-ED           PERU                           >=155 cm                    0       49     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           >=155 cm                    1       11     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           <151 cm                     0      124     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           <151 cm                     1       45     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           [151-155) cm                0       54     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           [151-155) cm                1        7     290  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                    0      159     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                    1       45     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                     0       19     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                     1       14     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm                0       22     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm                1       11     270  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0       88     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       65     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       15     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       36     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       17     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       35     256  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                    0       99     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                    1       18     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                     0      224     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                     1      142     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm                0      110     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm                1       36     629  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                    0      132     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                    1        8     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                     0      362     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                     1       73     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm                0      162     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm                1       18     755  ever_sstunted    
0-24 months   PROBIT           BELARUS                        >=155 cm                    0    12874   13734  ever_sstunted    
0-24 months   PROBIT           BELARUS                        >=155 cm                    1      337   13734  ever_sstunted    
0-24 months   PROBIT           BELARUS                        <151 cm                     0      113   13734  ever_sstunted    
0-24 months   PROBIT           BELARUS                        <151 cm                     1       12   13734  ever_sstunted    
0-24 months   PROBIT           BELARUS                        [151-155) cm                0      375   13734  ever_sstunted    
0-24 months   PROBIT           BELARUS                        [151-155) cm                1       23   13734  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                    0      129     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                    1        9     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     <151 cm                     0      306     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     <151 cm                     1       67     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm                0      140     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm                1       18     669  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                    0      449    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                    1      123    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          <151 cm                     0      275    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          <151 cm                     1      219    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm                0      219    1407  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm                1      122    1407  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                    0       50     409  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                    1       28     409  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                     0      102     409  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                     1      118     409  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm                0       57     409  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm                1       54     409  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0     1371    2359  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1      119    2359  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     0      301    2359  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       57    2359  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0      451    2359  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       60    2359  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                    0     6539    9852  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                    1     1300    9852  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                     0      394    9852  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                     1      180    9852  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1119    9852  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm                1      320    9852  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      >=155 cm                    0      127    1070  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      >=155 cm                    1       11    1070  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      <151 cm                     0      620    1070  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      <151 cm                     1       83    1070  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      [151-155) cm                0      214    1070  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      [151-155) cm                1       15    1070  ever_sstunted    
0-6 months    COHORTS          INDIA                          >=155 cm                    0      546    1872  ever_sstunted    
0-6 months    COHORTS          INDIA                          >=155 cm                    1       13    1872  ever_sstunted    
0-6 months    COHORTS          INDIA                          <151 cm                     0      758    1872  ever_sstunted    
0-6 months    COHORTS          INDIA                          <151 cm                     1       52    1872  ever_sstunted    
0-6 months    COHORTS          INDIA                          [151-155) cm                0      485    1872  ever_sstunted    
0-6 months    COHORTS          INDIA                          [151-155) cm                1       18    1872  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                    0      614    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                    1       18    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    <151 cm                     0     1421    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    <151 cm                     1      128    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm                0      832    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm                1       45    3058  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                    0       31     219  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                    1        3     219  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                     0      118     219  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                     1       14     219  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm                0       49     219  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm                1        4     219  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                    0     3866   27040  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                    1      279   27040  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                     0    13117   27040  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                     1     2940   27040  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm                0     6075   27040  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm                1      763   27040  ever_sstunted    
0-6 months    Keneba           GAMBIA                         >=155 cm                    0     1599    2158  ever_sstunted    
0-6 months    Keneba           GAMBIA                         >=155 cm                    1      196    2158  ever_sstunted    
0-6 months    Keneba           GAMBIA                         <151 cm                     0       58    2158  ever_sstunted    
0-6 months    Keneba           GAMBIA                         <151 cm                     1       18    2158  ever_sstunted    
0-6 months    Keneba           GAMBIA                         [151-155) cm                0      250    2158  ever_sstunted    
0-6 months    Keneba           GAMBIA                         [151-155) cm                1       37    2158  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         >=155 cm                    0      156     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         >=155 cm                    1        5     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         <151 cm                     0       30     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         <151 cm                     1        8     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         [151-155) cm                0       65     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         [151-155) cm                1        7     271  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                    0       24     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                    1        1     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     <151 cm                     0      145     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     <151 cm                     1       18     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm                0       66     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm                1        0     254  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         >=155 cm                    0      122     222  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         >=155 cm                    1        8     222  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         <151 cm                     0       47     222  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         <151 cm                     1        6     222  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         [151-155) cm                0       36     222  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         [151-155) cm                1        3     222  ever_sstunted    
0-6 months    MAL-ED           INDIA                          >=155 cm                    0       54     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          >=155 cm                    1        1     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          <151 cm                     0      100     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          <151 cm                     1       15     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          [151-155) cm                0       68     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          [151-155) cm                1        4     242  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          >=155 cm                    0       41     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          >=155 cm                    1        0     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          <151 cm                     0      127     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          <151 cm                     1        6     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          [151-155) cm                0       60     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          [151-155) cm                1        4     238  ever_sstunted    
0-6 months    MAL-ED           PERU                           >=155 cm                    0       54     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           >=155 cm                    1        6     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           <151 cm                     0      144     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           <151 cm                     1       25     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           [151-155) cm                0       55     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           [151-155) cm                1        6     290  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                    0      185     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                    1       19     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                     0       26     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                     1        7     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm                0       32     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm                1        1     270  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0      136     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       17     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     0       38     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       13     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0       45     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1        7     256  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                    0      110     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                    1        7     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                     0      324     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                     1       42     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm                0      136     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm                1       10     629  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                    0      134     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                    1        6     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                     0      400     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                     1       35     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm                0      174     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm                1        6     755  ever_sstunted    
0-6 months    PROBIT           BELARUS                        >=155 cm                    0    13089   13734  ever_sstunted    
0-6 months    PROBIT           BELARUS                        >=155 cm                    1      122   13734  ever_sstunted    
0-6 months    PROBIT           BELARUS                        <151 cm                     0      120   13734  ever_sstunted    
0-6 months    PROBIT           BELARUS                        <151 cm                     1        5   13734  ever_sstunted    
0-6 months    PROBIT           BELARUS                        [151-155) cm                0      392   13734  ever_sstunted    
0-6 months    PROBIT           BELARUS                        [151-155) cm                1        6   13734  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                    0      136     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                    1        2     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     <151 cm                     0      350     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     <151 cm                     1       23     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm                0      152     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm                1        6     669  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                    0      517    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                    1       54    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          <151 cm                     0      387    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          <151 cm                     1      105    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm                0      284    1404  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm                1       57    1404  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                    0       74     407  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                    1        4     407  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                     0      188     407  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                     1       32     407  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm                0       96     407  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm                1       13     407  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    0     1442    2359  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                    1       48    2359  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     0      334    2359  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                     1       24    2359  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                0      481    2359  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm                1       30    2359  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                    0     7105    9841  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                    1      727    9841  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                     0      486    9841  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                     1       86    9841  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm                0     1260    9841  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm                1      177    9841  ever_sstunted    


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
