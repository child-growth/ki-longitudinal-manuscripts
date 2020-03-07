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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        mhtcm           ever_stunted   n_cell       n
------------  ---------------  -----------------------------  -------------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                   0       65    1292
0-24 months   COHORTS          GUATEMALA                      >=155 cm                   1      101    1292
0-24 months   COHORTS          GUATEMALA                      <151 cm                    0      160    1292
0-24 months   COHORTS          GUATEMALA                      <151 cm                    1      685    1292
0-24 months   COHORTS          GUATEMALA                      [151-155) cm               0       77    1292
0-24 months   COHORTS          GUATEMALA                      [151-155) cm               1      204    1292
0-24 months   COHORTS          INDIA                          >=155 cm                   0      454    1906
0-24 months   COHORTS          INDIA                          >=155 cm                   1      117    1906
0-24 months   COHORTS          INDIA                          <151 cm                    0      437    1906
0-24 months   COHORTS          INDIA                          <151 cm                    1      387    1906
0-24 months   COHORTS          INDIA                          [151-155) cm               0      329    1906
0-24 months   COHORTS          INDIA                          [151-155) cm               1      182    1906
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                   0      290    3058
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                   1      342    3058
0-24 months   COHORTS          PHILIPPINES                    <151 cm                    0      361    3058
0-24 months   COHORTS          PHILIPPINES                    <151 cm                    1     1188    3058
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm               0      308    3058
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm               1      569    3058
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     235
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   1       17     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    0       56     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    1       87     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               0       29     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               1       27     235
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1942    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      957    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       31    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       60    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       96    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3216
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   0     2910   27106
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   1     1245   27106
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                    0     6741   27106
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                    1     9354   27106
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               0     4023   27106
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               1     2833   27106
0-24 months   Keneba           GAMBIA                         >=155 cm                   0      979    2430
0-24 months   Keneba           GAMBIA                         >=155 cm                   1     1032    2430
0-24 months   Keneba           GAMBIA                         <151 cm                    0       16    2430
0-24 months   Keneba           GAMBIA                         <151 cm                    1       77    2430
0-24 months   Keneba           GAMBIA                         [151-155) cm               0      118    2430
0-24 months   Keneba           GAMBIA                         [151-155) cm               1      208    2430
0-24 months   LCNI-5           MALAWI                         >=155 cm                   0      229     837
0-24 months   LCNI-5           MALAWI                         >=155 cm                   1      285     837
0-24 months   LCNI-5           MALAWI                         <151 cm                    0       20     837
0-24 months   LCNI-5           MALAWI                         <151 cm                    1      111     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm               0       56     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm               1      136     837
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                   0       17     254
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                   1        8     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                    0       45     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                    1      118     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm               0       36     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm               1       30     254
0-24 months   MAL-ED           BRAZIL                         >=155 cm                   0       99     222
0-24 months   MAL-ED           BRAZIL                         >=155 cm                   1       31     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                    0       38     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                    1       15     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm               0       27     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm               1       12     222
0-24 months   MAL-ED           INDIA                          >=155 cm                   0       32     242
0-24 months   MAL-ED           INDIA                          >=155 cm                   1       23     242
0-24 months   MAL-ED           INDIA                          <151 cm                    0       29     242
0-24 months   MAL-ED           INDIA                          <151 cm                    1       86     242
0-24 months   MAL-ED           INDIA                          [151-155) cm               0       32     242
0-24 months   MAL-ED           INDIA                          [151-155) cm               1       40     242
0-24 months   MAL-ED           NEPAL                          >=155 cm                   0       38     238
0-24 months   MAL-ED           NEPAL                          >=155 cm                   1        3     238
0-24 months   MAL-ED           NEPAL                          <151 cm                    0       74     238
0-24 months   MAL-ED           NEPAL                          <151 cm                    1       59     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm               0       43     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm               1       21     238
0-24 months   MAL-ED           PERU                           >=155 cm                   0       27     290
0-24 months   MAL-ED           PERU                           >=155 cm                   1       33     290
0-24 months   MAL-ED           PERU                           <151 cm                    0       53     290
0-24 months   MAL-ED           PERU                           <151 cm                    1      116     290
0-24 months   MAL-ED           PERU                           [151-155) cm               0       24     290
0-24 months   MAL-ED           PERU                           [151-155) cm               1       37     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   0       89     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   1      115     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    0        6     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    1       27     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               0       13     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               1       20     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       28     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      125     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        3     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       48     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       48     256
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   0       60     629
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   1       57     629
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                    0       93     629
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                    1      273     629
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               0       58     629
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               1       88     629
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   0      100     755
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   1       40     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    0      192     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    1      243     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               0      101     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               1       79     755
0-24 months   PROBIT           BELARUS                        >=155 cm                   0    11571   13734
0-24 months   PROBIT           BELARUS                        >=155 cm                   1     1640   13734
0-24 months   PROBIT           BELARUS                        <151 cm                    0       89   13734
0-24 months   PROBIT           BELARUS                        <151 cm                    1       36   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm               0      310   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm               1       88   13734
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                   0      102     669
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                   1       36     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                    0      173     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                    1      200     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm               0       91     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm               1       67     669
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                   0      238    1407
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                   1      334    1407
0-24 months   SAS-CompFeed     INDIA                          <151 cm                    0      103    1407
0-24 months   SAS-CompFeed     INDIA                          <151 cm                    1      391    1407
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm               0      100    1407
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm               1      241    1407
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   0       22     409
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   1       56     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    0       28     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    1      192     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               0       16     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               1       95     409
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1058    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      432    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      182    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      176    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      304    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      207    2359
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4447    9852
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   1     3392    9852
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    0      205    9852
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    1      369    9852
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               0      682    9852
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               1      757    9852
0-6 months    COHORTS          GUATEMALA                      >=155 cm                   0      111    1070
0-6 months    COHORTS          GUATEMALA                      >=155 cm                   1       27    1070
0-6 months    COHORTS          GUATEMALA                      <151 cm                    0      434    1070
0-6 months    COHORTS          GUATEMALA                      <151 cm                    1      269    1070
0-6 months    COHORTS          GUATEMALA                      [151-155) cm               0      176    1070
0-6 months    COHORTS          GUATEMALA                      [151-155) cm               1       53    1070
0-6 months    COHORTS          INDIA                          >=155 cm                   0      507    1872
0-6 months    COHORTS          INDIA                          >=155 cm                   1       52    1872
0-6 months    COHORTS          INDIA                          <151 cm                    0      619    1872
0-6 months    COHORTS          INDIA                          <151 cm                    1      191    1872
0-6 months    COHORTS          INDIA                          [151-155) cm               0      425    1872
0-6 months    COHORTS          INDIA                          [151-155) cm               1       78    1872
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                   0      546    3058
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                   1       86    3058
0-6 months    COHORTS          PHILIPPINES                    <151 cm                    0     1066    3058
0-6 months    COHORTS          PHILIPPINES                    <151 cm                    1      483    3058
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm               0      715    3058
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm               1      162    3058
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                   0       27     219
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                   1        7     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                    0       83     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                    1       49     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm               0       39     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm               1       14     219
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                   0     3139   27040
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                   1     1006   27040
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                    0     8194   27040
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                    1     7863   27040
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm               0     4538   27040
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm               1     2300   27040
0-6 months    Keneba           GAMBIA                         >=155 cm                   0     1272    2158
0-6 months    Keneba           GAMBIA                         >=155 cm                   1      523    2158
0-6 months    Keneba           GAMBIA                         <151 cm                    0       38    2158
0-6 months    Keneba           GAMBIA                         <151 cm                    1       38    2158
0-6 months    Keneba           GAMBIA                         [151-155) cm               0      170    2158
0-6 months    Keneba           GAMBIA                         [151-155) cm               1      117    2158
0-6 months    LCNI-5           MALAWI                         >=155 cm                   0      121     271
0-6 months    LCNI-5           MALAWI                         >=155 cm                   1       40     271
0-6 months    LCNI-5           MALAWI                         <151 cm                    0       17     271
0-6 months    LCNI-5           MALAWI                         <151 cm                    1       21     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm               0       36     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm               1       36     271
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                   0       20     254
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                   1        5     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                    0       92     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                    1       71     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm               0       53     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm               1       13     254
0-6 months    MAL-ED           BRAZIL                         >=155 cm                   0      105     222
0-6 months    MAL-ED           BRAZIL                         >=155 cm                   1       25     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                    0       40     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                    1       13     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm               0       30     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm               1        9     222
0-6 months    MAL-ED           INDIA                          >=155 cm                   0       42     242
0-6 months    MAL-ED           INDIA                          >=155 cm                   1       13     242
0-6 months    MAL-ED           INDIA                          <151 cm                    0       67     242
0-6 months    MAL-ED           INDIA                          <151 cm                    1       48     242
0-6 months    MAL-ED           INDIA                          [151-155) cm               0       49     242
0-6 months    MAL-ED           INDIA                          [151-155) cm               1       23     242
0-6 months    MAL-ED           NEPAL                          >=155 cm                   0       38     238
0-6 months    MAL-ED           NEPAL                          >=155 cm                   1        3     238
0-6 months    MAL-ED           NEPAL                          <151 cm                    0      105     238
0-6 months    MAL-ED           NEPAL                          <151 cm                    1       28     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm               0       53     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm               1       11     238
0-6 months    MAL-ED           PERU                           >=155 cm                   0       40     290
0-6 months    MAL-ED           PERU                           >=155 cm                   1       20     290
0-6 months    MAL-ED           PERU                           <151 cm                    0       89     290
0-6 months    MAL-ED           PERU                           <151 cm                    1       80     290
0-6 months    MAL-ED           PERU                           [151-155) cm               0       33     290
0-6 months    MAL-ED           PERU                           [151-155) cm               1       28     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                   0      133     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                   1       71     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                    0       15     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                    1       18     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm               0       18     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm               1       15     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       97     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       56     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       17     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       34     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       34     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       18     256
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                   0       94     629
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                   1       23     629
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                    0      209     629
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                    1      157     629
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm               0      106     629
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm               1       40     629
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                   0      115     755
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                   1       25     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                    0      279     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                    1      156     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm               0      132     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm               1       48     755
0-6 months    PROBIT           BELARUS                        >=155 cm                   0    12370   13734
0-6 months    PROBIT           BELARUS                        >=155 cm                   1      841   13734
0-6 months    PROBIT           BELARUS                        <151 cm                    0      107   13734
0-6 months    PROBIT           BELARUS                        <151 cm                    1       18   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm               0      356   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm               1       42   13734
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                   0      118     669
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                   1       20     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                    0      261     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                    1      112     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm               0      124     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm               1       34     669
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                   0      393    1404
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                   1      178    1404
0-6 months    SAS-CompFeed     INDIA                          <151 cm                    0      220    1404
0-6 months    SAS-CompFeed     INDIA                          <151 cm                    1      272    1404
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm               0      192    1404
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm               1      149    1404
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                   0       59     407
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                   1       19     407
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                    0      114     407
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                    1      106     407
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm               0       75     407
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm               1       34     407
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1268    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      222    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      253    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      105    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      381    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      130    2359
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                   0     5758    9841
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                   1     2074    9841
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                    0      325    9841
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                    1      247    9841
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm               0      938    9841
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm               1      499    9841
6-24 months   COHORTS          GUATEMALA                      >=155 cm                   0       48     842
6-24 months   COHORTS          GUATEMALA                      >=155 cm                   1       74     842
6-24 months   COHORTS          GUATEMALA                      <151 cm                    0      102     842
6-24 months   COHORTS          GUATEMALA                      <151 cm                    1      416     842
6-24 months   COHORTS          GUATEMALA                      [151-155) cm               0       51     842
6-24 months   COHORTS          GUATEMALA                      [151-155) cm               1      151     842
6-24 months   COHORTS          INDIA                          >=155 cm                   0      432    1530
6-24 months   COHORTS          INDIA                          >=155 cm                   1       65    1530
6-24 months   COHORTS          INDIA                          <151 cm                    0      418    1530
6-24 months   COHORTS          INDIA                          <151 cm                    1      196    1530
6-24 months   COHORTS          INDIA                          [151-155) cm               0      315    1530
6-24 months   COHORTS          INDIA                          [151-155) cm               1      104    1530
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                   0      245    2121
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                   1      256    2121
6-24 months   COHORTS          PHILIPPINES                    <151 cm                    0      264    2121
6-24 months   COHORTS          PHILIPPINES                    <151 cm                    1      705    2121
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm               0      244    2121
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm               1      407    2121
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     157
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   1       10     157
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    0       50     157
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    1       38     157
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               0       27     157
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               1       13     157
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1942    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      957    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       31    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       60    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       96    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3216
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   0     1893   10460
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   1      239   10460
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                    0     3833   10460
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                    1     1491   10460
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               0     2471   10460
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               1      533   10460
6-24 months   Keneba           GAMBIA                         >=155 cm                   0      917    1679
6-24 months   Keneba           GAMBIA                         >=155 cm                   1      509    1679
6-24 months   Keneba           GAMBIA                         <151 cm                    0       15    1679
6-24 months   Keneba           GAMBIA                         <151 cm                    1       39    1679
6-24 months   Keneba           GAMBIA                         [151-155) cm               0      108    1679
6-24 months   Keneba           GAMBIA                         [151-155) cm               1       91    1679
6-24 months   LCNI-5           MALAWI                         >=155 cm                   0      221     727
6-24 months   LCNI-5           MALAWI                         >=155 cm                   1      245     727
6-24 months   LCNI-5           MALAWI                         <151 cm                    0       19     727
6-24 months   LCNI-5           MALAWI                         <151 cm                    1       90     727
6-24 months   LCNI-5           MALAWI                         [151-155) cm               0       52     727
6-24 months   LCNI-5           MALAWI                         [151-155) cm               1      100     727
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                   0       16     158
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                   1        3     158
6-24 months   MAL-ED           BANGLADESH                     <151 cm                    0       43     158
6-24 months   MAL-ED           BANGLADESH                     <151 cm                    1       47     158
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm               0       32     158
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm               1       17     158
6-24 months   MAL-ED           BRAZIL                         >=155 cm                   0       91     163
6-24 months   MAL-ED           BRAZIL                         >=155 cm                   1        6     163
6-24 months   MAL-ED           BRAZIL                         <151 cm                    0       36     163
6-24 months   MAL-ED           BRAZIL                         <151 cm                    1        2     163
6-24 months   MAL-ED           BRAZIL                         [151-155) cm               0       25     163
6-24 months   MAL-ED           BRAZIL                         [151-155) cm               1        3     163
6-24 months   MAL-ED           INDIA                          >=155 cm                   0       32     154
6-24 months   MAL-ED           INDIA                          >=155 cm                   1       10     154
6-24 months   MAL-ED           INDIA                          <151 cm                    0       28     154
6-24 months   MAL-ED           INDIA                          <151 cm                    1       38     154
6-24 months   MAL-ED           INDIA                          [151-155) cm               0       29     154
6-24 months   MAL-ED           INDIA                          [151-155) cm               1       17     154
6-24 months   MAL-ED           NEPAL                          >=155 cm                   0       38     194
6-24 months   MAL-ED           NEPAL                          >=155 cm                   1        0     194
6-24 months   MAL-ED           NEPAL                          <151 cm                    0       72     194
6-24 months   MAL-ED           NEPAL                          <151 cm                    1       31     194
6-24 months   MAL-ED           NEPAL                          [151-155) cm               0       43     194
6-24 months   MAL-ED           NEPAL                          [151-155) cm               1       10     194
6-24 months   MAL-ED           PERU                           >=155 cm                   0       26     148
6-24 months   MAL-ED           PERU                           >=155 cm                   1       13     148
6-24 months   MAL-ED           PERU                           <151 cm                    0       44     148
6-24 months   MAL-ED           PERU                           <151 cm                    1       36     148
6-24 months   MAL-ED           PERU                           [151-155) cm               0       20     148
6-24 months   MAL-ED           PERU                           [151-155) cm               1        9     148
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   0       80     155
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   1       44     155
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    0        6     155
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    1        9     155
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               0       11     155
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               1        5     155
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       26     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       69     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        1     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       30     144
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   0       45     345
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   1       34     345
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                    0       58     345
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                    1      116     345
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               0       44     345
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               1       48     345
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   0       98     506
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   1       15     506
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    0      181     506
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    1       87     506
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               0       94     506
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               1       31     506
6-24 months   PROBIT           BELARUS                        >=155 cm                   0    11563   12825
6-24 months   PROBIT           BELARUS                        >=155 cm                   1      799   12825
6-24 months   PROBIT           BELARUS                        <151 cm                    0       89   12825
6-24 months   PROBIT           BELARUS                        <151 cm                    1       18   12825
6-24 months   PROBIT           BELARUS                        [151-155) cm               0      310   12825
6-24 months   PROBIT           BELARUS                        [151-155) cm               1       46   12825
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                   0       93     456
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                   1       16     456
6-24 months   PROVIDE          BANGLADESH                     <151 cm                    0      142     456
6-24 months   PROVIDE          BANGLADESH                     <151 cm                    1       88     456
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm               0       84     456
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm               1       33     456
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                   0      216     743
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                   1      156     743
6-24 months   SAS-CompFeed     INDIA                          <151 cm                    0       75     743
6-24 months   SAS-CompFeed     INDIA                          <151 cm                    1      119     743
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm               0       85     743
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm               1       92     743
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   0       20     243
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   1       37     243
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    0       24     243
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    1       86     243
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               0       15     243
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               1       61     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      843    1578
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      210    1578
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      136    1578
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       71    1578
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      241    1578
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       77    1578
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4007    6493
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   1     1318    6493
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    0      181    6493
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    1      122    6493
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               0      607    6493
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               1      258    6493


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

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/f3de439a-cd81-4cb4-a973-f2db0f0de922/cddbd1cb-30ae-4692-81e6-80e61c2dba0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f3de439a-cd81-4cb4-a973-f2db0f0de922/cddbd1cb-30ae-4692-81e6-80e61c2dba0b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f3de439a-cd81-4cb4-a973-f2db0f0de922/cddbd1cb-30ae-4692-81e6-80e61c2dba0b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f3de439a-cd81-4cb4-a973-f2db0f0de922/cddbd1cb-30ae-4692-81e6-80e61c2dba0b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.5987416   0.5269844   0.6704987
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.8100173   0.7834251   0.8366094
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.7231169   0.6681910   0.7780429
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.2190737   0.1860432   0.2521043
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.4587440   0.4250353   0.4924528
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.3510403   0.3090453   0.3930353
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.5715327   0.5336679   0.6093974
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.7522415   0.7310232   0.7734598
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6621884   0.6312177   0.6931591
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.4376482   0.2767712   0.5985252
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm              NA                0.6102970   0.5296374   0.6909567
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.5036480   0.3714562   0.6358397
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3302522   0.2781027   0.3824017
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6462755   0.5134302   0.7791207
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5780563   0.3996522   0.7564604
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.3222417   0.3061171   0.3383663
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.5721350   0.5627300   0.5815400
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.4226648   0.4093334   0.4359962
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.5143082   0.4924560   0.5361604
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.8270901   0.7523449   0.9018353
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.6327688   0.5803969   0.6851408
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.5548824   0.5118294   0.5979353
0-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.8411363   0.7789280   0.9033446
0-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.7069212   0.6420316   0.7718109
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.3200000   0.1367837   0.5032163
0-24 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.7239264   0.6551609   0.7926919
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.4545455   0.3341803   0.5749106
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.2357955   0.1619880   0.3096030
0-24 months   MAL-ED           BRAZIL                         <151 cm              NA                0.2566798   0.1328015   0.3805582
0-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.2665207   0.1188780   0.4141634
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.4175771   0.2840214   0.5511328
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.7499045   0.6702420   0.8295670
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.5583620   0.4408935   0.6758305
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.5550233   0.4276051   0.6824414
0-24 months   MAL-ED           PERU                           <151 cm              NA                0.6823772   0.6111915   0.7535629
0-24 months   MAL-ED           PERU                           [151-155) cm         NA                0.6144161   0.4931465   0.7356856
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.5637255   0.4955462   0.6319048
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.8181818   0.6863439   0.9500198
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.6060606   0.4390402   0.7730810
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4871840   0.3971014   0.5772666
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.7432717   0.6984528   0.7880905
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5940979   0.5136303   0.6745656
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2944884   0.2193056   0.3696712
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.5550861   0.5085125   0.6016597
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.4314518   0.3596722   0.5032314
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.1243142   0.1086148   0.1400135
0-24 months   PROBIT           BELARUS                        <151 cm              NA                0.2693335   0.2447524   0.2939146
0-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.2134353   0.1675595   0.2593112
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.2572094   0.1831693   0.3312495
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.5291482   0.4778815   0.5804148
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.4301884   0.3519096   0.5084672
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.5902070   0.5542519   0.6261621
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.7815652   0.7141573   0.8489732
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.7116174   0.6364828   0.7867519
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.7152821   0.6132504   0.8173138
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.8747385   0.8304929   0.9189842
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.8563743   0.7901353   0.9226132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2900498   0.2669481   0.3131515
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4926293   0.4408107   0.5444478
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4042460   0.3609363   0.4475557
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4335634   0.4225985   0.4445283
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6433136   0.6043031   0.6823241
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.5240727   0.4981373   0.5500082
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.1977019   0.1307941   0.2646098
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.3794017   0.3434679   0.4153355
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.2357719   0.1802131   0.2913306
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0969414   0.0726654   0.1212174
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.2336419   0.2043292   0.2629546
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.1533472   0.1213902   0.1853042
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.1420973   0.1147917   0.1694030
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.3036516   0.2807447   0.3265584
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1883672   0.1620956   0.2146389
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2058824   0.0696581   0.3421066
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3712121   0.2886049   0.4538194
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2641509   0.1451845   0.3831174
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.2606658   0.2451852   0.2761463
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.4801777   0.4709685   0.4893870
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.3445984   0.3316992   0.3574977
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.2913726   0.2703411   0.3124040
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.5340378   0.4159872   0.6520884
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.4088485   0.3521416   0.4655553
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.2496689   0.1821061   0.3172316
0-6 months    LCNI-5           MALAWI                         <151 cm              NA                0.5400192   0.3744492   0.7055891
0-6 months    LCNI-5           MALAWI                         [151-155) cm         NA                0.5024919   0.3852355   0.6197483
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                0.2000000   0.0428933   0.3571067
0-6 months    MAL-ED           BANGLADESH                     <151 cm              NA                0.4355828   0.3593141   0.5118515
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                0.1969697   0.1008310   0.2931084
0-6 months    MAL-ED           BRAZIL                         >=155 cm             NA                0.1923077   0.1244064   0.2602090
0-6 months    MAL-ED           BRAZIL                         <151 cm              NA                0.2452830   0.1291873   0.3613788
0-6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                0.2307692   0.0982395   0.3632990
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                0.2359635   0.1284902   0.3434367
0-6 months    MAL-ED           INDIA                          <151 cm              NA                0.4170089   0.3278681   0.5061497
0-6 months    MAL-ED           INDIA                          [151-155) cm         NA                0.3319977   0.2211353   0.4428600
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.3356295   0.2123924   0.4588665
0-6 months    MAL-ED           PERU                           <151 cm              NA                0.4719205   0.3958805   0.5479605
0-6 months    MAL-ED           PERU                           [151-155) cm         NA                0.4611381   0.3346755   0.5876007
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.3475539   0.2819824   0.4131254
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.5504469   0.3706584   0.7302354
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.4479128   0.2654503   0.6303753
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3651222   0.2881862   0.4420582
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6597017   0.5245455   0.7948578
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3616420   0.2251481   0.4981359
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1953440   0.1223862   0.2683017
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.4285886   0.3774858   0.4796914
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2740298   0.2006803   0.3473792
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1811541   0.1166099   0.2456984
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                0.3532798   0.3081374   0.3984222
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2734267   0.2085989   0.3382546
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0637274   0.0533072   0.0741476
0-6 months    PROBIT           BELARUS                        <151 cm              NA                0.1343508   0.1105783   0.1581233
0-6 months    PROBIT           BELARUS                        [151-155) cm         NA                0.1045412   0.0712074   0.1378751
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.1390045   0.0822847   0.1957243
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.2966584   0.2498075   0.3435094
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.2228636   0.1555878   0.2901394
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.3095975   0.2676608   0.3515343
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.5491784   0.4892092   0.6091477
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.4419522   0.3807634   0.5031410
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2576572   0.1604988   0.3548156
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.4842661   0.4178292   0.5507029
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.3195011   0.2307859   0.4082162
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1488203   0.1307222   0.1669185
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2960056   0.2485140   0.3434971
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2539542   0.2154554   0.2924530
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2652176   0.2554412   0.2749940
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4292612   0.3887809   0.4697414
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3453737   0.3206465   0.3701009
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.6062581   0.5214221   0.6910942
6-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.8009968   0.7667415   0.8352521
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.7474756   0.6861703   0.8087809
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.1429613   0.1127998   0.1731228
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.3051357   0.2692499   0.3410215
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.2430060   0.2015561   0.2844560
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.5344128   0.4915649   0.5772606
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.7132367   0.6851343   0.7413392
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6313593   0.5945854   0.6681332
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3212797   0.1579789   0.4845806
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm              NA                0.4243206   0.3188187   0.5298226
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.3651884   0.2131464   0.5172304
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3304676   0.2781247   0.3828105
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6416057   0.5068517   0.7763596
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5798157   0.3997856   0.7598458
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1202482   0.1046109   0.1358855
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.2751390   0.2612345   0.2890436
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1807952   0.1653543   0.1962360
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.3577908   0.3329107   0.3826710
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.7298463   0.6073853   0.8523074
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.4520466   0.3832300   0.5208631
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.5269714   0.4815132   0.5724295
6-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.8300479   0.7578872   0.9022087
6-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.6725586   0.5964840   0.7486331
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.2693286   0.1344730   0.4041842
6-24 months   MAL-ED           INDIA                          <151 cm              NA                0.5837345   0.4639125   0.7035566
6-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.3845776   0.2408183   0.5283369
6-24 months   MAL-ED           PERU                           >=155 cm             NA                0.3333333   0.1848828   0.4817839
6-24 months   MAL-ED           PERU                           <151 cm              NA                0.4500000   0.3406137   0.5593863
6-24 months   MAL-ED           PERU                           [151-155) cm         NA                0.3103448   0.1413943   0.4792953
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.3548387   0.2703512   0.4393262
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.6000000   0.3512784   0.8487216
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.3125000   0.0846469   0.5403531
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4261300   0.3155114   0.5367486
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.6580936   0.5872864   0.7289008
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5248921   0.4226587   0.6271254
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1252440   0.0608268   0.1896612
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.3268453   0.2708431   0.3828475
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2422493   0.1661758   0.3183227
6-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0647060   0.0523851   0.0770269
6-24 months   PROBIT           BELARUS                        <151 cm              NA                0.1588472   0.1339041   0.1837904
6-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.1269695   0.0886174   0.1653217
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1453304   0.0780691   0.2125916
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.3844781   0.3212422   0.4477140
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.2836404   0.2006532   0.3666276
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.4237951   0.3678638   0.4797264
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.6084683   0.5225545   0.6943822
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.5178525   0.4420981   0.5936069
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.6772918   0.5473597   0.8072239
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.7932721   0.7146694   0.8718748
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.8028243   0.7111196   0.8945290
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1993799   0.1752169   0.2235430
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.3411916   0.2758113   0.4065720
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2408136   0.1935746   0.2880526
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2483726   0.2367790   0.2599661
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4003631   0.3454116   0.4553147
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2940543   0.2634557   0.3246529


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7662539   0.7431681   0.7893396
0-24 months   COHORTS          INDIA                          NA                   NA                0.3599161   0.3383625   0.3814696
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.5574468   0.4938076   0.6210860
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4955360   0.4876904   0.5033817
0-24 months   Keneba           GAMBIA                         NA                   NA                0.5419753   0.5221615   0.5617891
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2612613   0.2033404   0.3191821
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   MAL-ED           PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.6000000   0.5414566   0.6585434
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1284404   0.1123257   0.1445550
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6865672   0.6433613   0.7297731
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.8386308   0.8029353   0.8743263
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454854   0.3262920   0.3646787
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4585871   0.4487474   0.4684268
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3261682   0.2980650   0.3542714
0-6 months    COHORTS          INDIA                          NA                   NA                0.1714744   0.1543953   0.1885534
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3196347   0.2577308   0.3815386
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4130547   0.4055931   0.4205164
0-6 months    Keneba           GAMBIA                         NA                   NA                0.3141798   0.2945906   0.3337690
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2117117   0.1578516   0.2655718
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    MAL-ED           PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3851852   0.3270313   0.4433391
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0656036   0.0549747   0.0762326
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4266382   0.3925570   0.4607194
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.3906634   0.3432048   0.4381220
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1937262   0.1777743   0.2096780
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2865562   0.2776225   0.2954900
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7612827   0.7324712   0.7900941
6-24 months   COHORTS          INDIA                          NA                   NA                0.2385621   0.2171991   0.2599251
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.3885350   0.3120482   0.4650219
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2163480   0.2069669   0.2257290
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3805837   0.3573526   0.4038147
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   MAL-ED           PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628459   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0672904   0.0549305   0.0796504
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4939435   0.4498186   0.5380683
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268695   0.2061992   0.2475397
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2615124   0.2508224   0.2722024


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3528663   1.1950774   1.531488
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2077280   1.0481361   1.391620
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          2.0940166   1.7729178   2.473271
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6023843   1.3227263   1.941169
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3161829   1.2252829   1.413827
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1586186   1.0690453   1.255697
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.3944923   0.9445559   2.058755
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.1508056   0.7342303   1.803731
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9569150   1.5224243   2.515407
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7503482   1.2826380   2.388607
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.7754840   1.6876311   1.867910
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.3116391   1.2377089   1.389985
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.6081603   1.4552200   1.777174
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2303300   1.1212143   1.350065
0-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5158822   1.3615834   1.687666
0-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2740019   1.1296917   1.436747
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          2.2622699   1.2661636   4.042025
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          1.4204545   0.7559014   2.669252
0-24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          1.0885697   0.6123843   1.935033
0-24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          1.1303044   0.5958131   2.144277
0-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          1.7958467   1.2824663   2.514737
0-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.3371470   0.9097483   1.965337
0-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <151 cm              >=155 cm          1.2294569   0.9557823   1.581494
0-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          1.1070096   0.8172970   1.499418
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.4513834   1.1865411   1.775340
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          1.0750988   0.7956926   1.452618
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5256488   1.2563307   1.852700
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2194530   0.9700439   1.532988
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.8849165   1.4415018   2.464728
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.4650892   1.0817933   1.984193
0-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          2.1665550   1.9033335   2.466179
0-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7169029   1.4334386   2.056423
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.0572660   1.5184929   2.787200
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.6725221   1.1904826   2.349745
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.3242223   1.2143110   1.444082
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.2057081   1.1142348   1.304691
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.2229280   1.0511036   1.422841
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.1972538   1.0179763   1.408104
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.6984298   1.4885550   1.937895
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3937123   1.2193287   1.593036
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4837822   1.3894593   1.584508
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2087569   1.1434373   1.277808
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.9190590   1.3504806   2.727020
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1925622   0.7895820   1.801212
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          2.4101356   1.8211355   3.189633
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5818547   1.1421028   2.190927
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.1369264   1.7385683   2.626560
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3256211   1.0455734   1.680677
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.8030303   0.8970788   3.623894
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2830189   0.5762704   2.856536
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.8421205   1.7336215   1.957410
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.3219935   1.2333258   1.417036
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          1.8328348   1.4526109   2.312583
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4031810   1.1999445   1.640840
0-6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          2.1629418   1.4386421   3.251898
0-6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.0126336   1.4086062   2.875675
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          2.1779141   0.9739028   4.870414
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          0.9848485   0.3905933   2.483213
0-6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          1.2754717   0.7066720   2.302098
0-6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          1.2000000   0.6115039   2.354850
0-6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          1.7672607   1.0648799   2.932923
0-6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.4069876   0.8037202   2.463064
0-6 months    MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           <151 cm              >=155 cm          1.4060759   0.9415598   2.099760
0-6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          1.3739500   0.8670626   2.177165
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.5837742   1.0847712   2.312322
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          1.2887578   0.8221363   2.020221
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8067970   1.3463483   2.424718
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9904683   0.6433256   1.524932
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.1940204   1.4828006   3.246374
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.4028065   0.8857386   2.221723
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.9501613   1.3358355   2.847004
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.5093595   0.9842662   2.314583
0-6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          2.1082105   1.7306870   2.568085
0-6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.6404440   1.2047808   2.233648
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.1341643   1.3778681   3.305583
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.6032833   0.9654758   2.662436
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.7738462   1.4539027   2.164196
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.4275054   1.1373906   1.791620
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.8794976   1.2582323   2.807519
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.2400239   0.7755265   1.982729
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9890130   1.6261948   2.432779
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7064483   1.4047672   2.072917
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6185244   1.4626705   1.790985
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3022278   1.2014579   1.411450
6-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3212142   1.1417753   1.528853
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2329329   1.0488602   1.449310
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          2.1343941   1.6801366   2.711469
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6998033   1.2972580   2.227260
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3346176   1.2212131   1.458553
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1814076   1.0707479   1.303504
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.3207202   0.7520150   2.319504
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.1366680   0.5901526   2.189288
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9415087   1.5015317   2.510407
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7545313   1.2815582   2.402060
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.2880927   1.9933145   2.626464
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.5035166   1.2886859   1.754161
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.0398689   1.7008610   2.446446
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2634382   1.0691059   1.493094
6-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5751291   1.3934584   1.780485
6-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2762716   1.1070803   1.471320
6-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          2.1673692   1.2581018   3.733791
6-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.4279122   0.7639945   2.668780
6-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           PERU                           <151 cm              >=155 cm          1.3500000   0.8128024   2.242242
6-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          0.9310345   0.4607905   1.881170
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.6909091   1.0483482   2.727313
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          0.8806818   0.4089834   1.896411
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5443494   1.1678696   2.042193
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2317653   0.8921447   1.700672
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          2.6096684   1.5167745   4.490034
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.9342185   1.0586604   3.533901
6-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          2.4549077   1.8805192   3.204738
6-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.9622530   1.5203313   2.532630
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.6455450   1.6184185   4.324535
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.9516938   1.1286108   3.375042
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.4357605   1.1794218   1.747813
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.2219406   1.0605598   1.407878
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.1712413   0.9435699   1.453847
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.1853449   0.9480260   1.482072
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7112638   1.3640640   2.146838
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2078127   0.9590789   1.521055
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6119458   1.3943818   1.863456
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1839243   1.0564222   1.326815


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1675123    0.1016214   0.2334032
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.1408423    0.1110738   0.1706108
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1148637    0.0818872   0.1478401
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1197986   -0.0282876   0.2678849
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0264020    0.0161813   0.0366227
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1732944    0.1585168   0.1880719
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0276671    0.0188085   0.0365256
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0807210    0.0552510   0.1061910
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.2941732    0.1193640   0.4689825
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.0254658   -0.0243426   0.0752742
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1981254    0.0806864   0.3155644
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.0863560   -0.0266046   0.1993167
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0362745    0.0038482   0.0687008
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1773629    0.0970213   0.2577046
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1849818    0.1157189   0.2542447
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0041262    0.0026985   0.0055539
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1957054    0.1269922   0.2644186
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0963602    0.0753938   0.1173266
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1233487    0.0349517   0.2117456
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0554356    0.0402639   0.0706072
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0250237    0.0199656   0.0300818
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.1284663    0.0642780   0.1926546
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0745330    0.0514711   0.0975948
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0969478    0.0710018   0.1228938
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1137524   -0.0151939   0.2426986
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1523890    0.1379542   0.1668238
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0228072    0.0132887   0.0323257
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.1082647    0.0587899   0.1577396
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                0.1503937   -0.0021835   0.3029709
0-6 months    MAL-ED           BRAZIL                         >=155 cm             NA                0.0194040   -0.0265493   0.0653573
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                0.1111440    0.0123074   0.2099805
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.1057498   -0.0059449   0.2174445
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0376313    0.0026299   0.0726327
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0567528    0.0062997   0.1072060
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1544176    0.0853904   0.2234448
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1221571    0.0612361   0.1830781
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0018762    0.0007671   0.0029853
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.1091271    0.0549895   0.1632646
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.1170406    0.0783822   0.1556991
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1330062    0.0427351   0.2232773
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0449058    0.0318957   0.0579160
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0213386    0.0165095   0.0261677
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1550245    0.0780625   0.2319866
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0956008    0.0678324   0.1233692
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1105660    0.0737980   0.1473340
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0672553   -0.0821145   0.2166251
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0261866    0.0157855   0.0365878
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0960998    0.0808632   0.1113364
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0227929    0.0125181   0.0330677
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0713780    0.0449821   0.0977739
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1527493    0.0301146   0.2753840
6-24 months   MAL-ED           PERU                           >=155 cm             NA                0.0585586   -0.0704796   0.1875967
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0193548   -0.0201224   0.0588320
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1477831    0.0505387   0.2450274
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1376018    0.0757534   0.1994503
6-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0025845    0.0014553   0.0037136
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1551082    0.0905436   0.2196728
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0701483    0.0293705   0.1109261
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.0799099   -0.0309539   0.1907736
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0274895    0.0122332   0.0427458
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0131398    0.0078381   0.0184416


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.2186120    0.1267701   0.3007945
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.3913199    0.3043697   0.4674018
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1673431    0.1174151   0.2144466
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2149059   -0.1026259   0.4409957
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0740270    0.0416325   0.1053265
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.3497109    0.3191553   0.3788952
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0510486    0.0344194   0.0673914
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1269989    0.0848747   0.1671841
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.4789744    0.0959206   0.6997302
0-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.0974725   -0.1145220   0.2691432
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.3217875    0.0971669   0.4905236
0-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1346411   -0.0616263   0.2946238
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0604575    0.0042120   0.1135261
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2668930    0.1335206   0.3797362
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.3858045    0.2224013   0.5148705
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0321255    0.0215751   0.0425621
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.4321020    0.2586345   0.5649810
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1403507    0.1133110   0.1665658
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1470834    0.0332028   0.2475498
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1604570    0.1154673   0.2031585
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0545670    0.0434357   0.0655687
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.3938651    0.1629593   0.5610733
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.4346595    0.2904441   0.5495635
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.4055627    0.2889922   0.5030214
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3558824   -0.2005949   0.6544317
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.3689317    0.3331256   0.4028153
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0725929    0.0418485   0.1023508
0-6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.3024715    0.1513136   0.4267070
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                0.4292135   -0.2191174   0.7327597
0-6 months    MAL-ED           BRAZIL                         >=155 cm             NA                0.0916530   -0.1527165   0.2842176
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                0.3202005   -0.0286579   0.5507473
0-6 months    MAL-ED           PERU                           >=155 cm             NA                0.2395895   -0.0614072   0.4552287
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0976966    0.0020021   0.1842153
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1345252    0.0055744   0.2467545
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4414939    0.2076321   0.6063330
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.4027451    0.1668764   0.5718361
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0285991    0.0120301   0.0448902
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.4397952    0.1806922   0.6169578
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.2743323    0.1834068   0.3551334
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3404624    0.0650759   0.5347325
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2318005    0.1635094   0.2945164
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0744658    0.0575035   0.0911229
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.2036360    0.0946397   0.2995102
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.4007377    0.2772913   0.5030981
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1714258    0.1118716   0.2269865
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1730997   -0.3151892   0.4801021
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0734231    0.0404433   0.1052694
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.4441908    0.3719471   0.5081245
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0598893    0.0324524   0.0865481
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1192916    0.0730717   0.1632067
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.3618984   -0.0018890   0.5935940
6-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1494253   -0.2528576   0.4225383
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0517241   -0.0599469   0.1516301
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2575008    0.0649956   0.4103717
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.5235078    0.2292731   0.7054147
6-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0384074    0.0205714   0.0559187
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.5162726    0.2562344   0.6853952
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1420169    0.0561580   0.2200655
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1055331   -0.0550053   0.2416427
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1211690    0.0517445   0.1855107
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0502456    0.0297955   0.0702647
