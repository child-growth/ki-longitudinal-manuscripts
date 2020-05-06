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

agecat        studyid          country                        mhtcm           ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------------  -------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                   0       65    1292  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      >=155 cm                   1      101    1292  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      <151 cm                    0      160    1292  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      <151 cm                    1      685    1292  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      [151-155) cm               0       77    1292  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      [151-155) cm               1      204    1292  ever_stunted     
0-24 months   COHORTS          INDIA                          >=155 cm                   0      454    1906  ever_stunted     
0-24 months   COHORTS          INDIA                          >=155 cm                   1      117    1906  ever_stunted     
0-24 months   COHORTS          INDIA                          <151 cm                    0      437    1906  ever_stunted     
0-24 months   COHORTS          INDIA                          <151 cm                    1      387    1906  ever_stunted     
0-24 months   COHORTS          INDIA                          [151-155) cm               0      329    1906  ever_stunted     
0-24 months   COHORTS          INDIA                          [151-155) cm               1      182    1906  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                   0      290    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                   1      342    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    <151 cm                    0      361    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    <151 cm                    1     1188    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm               0      308    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm               1      569    3058  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     235  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   1       17     235  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    0       56     235  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    1       87     235  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               0       29     235  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               1       27     235  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1942    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      957    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       31    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       60    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       96    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   0     2910   27106  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   1     1245   27106  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                    0     6741   27106  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                    1     9354   27106  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               0     4023   27106  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               1     2833   27106  ever_stunted     
0-24 months   Keneba           GAMBIA                         >=155 cm                   0      979    2430  ever_stunted     
0-24 months   Keneba           GAMBIA                         >=155 cm                   1     1032    2430  ever_stunted     
0-24 months   Keneba           GAMBIA                         <151 cm                    0       16    2430  ever_stunted     
0-24 months   Keneba           GAMBIA                         <151 cm                    1       77    2430  ever_stunted     
0-24 months   Keneba           GAMBIA                         [151-155) cm               0      118    2430  ever_stunted     
0-24 months   Keneba           GAMBIA                         [151-155) cm               1      208    2430  ever_stunted     
0-24 months   LCNI-5           MALAWI                         >=155 cm                   0      229     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         >=155 cm                   1      285     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         <151 cm                    0       20     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         <151 cm                    1      111     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         [151-155) cm               0       56     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         [151-155) cm               1      136     837  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                   0       17     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                   1        8     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     <151 cm                    0       45     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     <151 cm                    1      118     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm               0       36     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm               1       30     254  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         >=155 cm                   0       99     222  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         >=155 cm                   1       31     222  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         <151 cm                    0       38     222  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         <151 cm                    1       15     222  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         [151-155) cm               0       27     222  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         [151-155) cm               1       12     222  ever_stunted     
0-24 months   MAL-ED           INDIA                          >=155 cm                   0       32     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          >=155 cm                   1       23     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          <151 cm                    0       29     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          <151 cm                    1       86     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          [151-155) cm               0       32     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          [151-155) cm               1       40     242  ever_stunted     
0-24 months   MAL-ED           NEPAL                          >=155 cm                   0       38     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          >=155 cm                   1        3     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          <151 cm                    0       74     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          <151 cm                    1       59     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          [151-155) cm               0       43     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          [151-155) cm               1       21     238  ever_stunted     
0-24 months   MAL-ED           PERU                           >=155 cm                   0       27     290  ever_stunted     
0-24 months   MAL-ED           PERU                           >=155 cm                   1       33     290  ever_stunted     
0-24 months   MAL-ED           PERU                           <151 cm                    0       53     290  ever_stunted     
0-24 months   MAL-ED           PERU                           <151 cm                    1      116     290  ever_stunted     
0-24 months   MAL-ED           PERU                           [151-155) cm               0       24     290  ever_stunted     
0-24 months   MAL-ED           PERU                           [151-155) cm               1       37     290  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   0       89     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   1      115     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    0        6     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    1       27     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               0       13     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               1       20     270  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       28     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      125     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        3     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       48     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       48     256  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   0       60     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   1       57     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                    0       93     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                    1      273     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               0       58     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               1       88     629  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   0      100     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   1       40     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    0      192     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    1      243     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               0      101     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               1       79     755  ever_stunted     
0-24 months   PROBIT           BELARUS                        >=155 cm                   0    11571   13734  ever_stunted     
0-24 months   PROBIT           BELARUS                        >=155 cm                   1     1640   13734  ever_stunted     
0-24 months   PROBIT           BELARUS                        <151 cm                    0       89   13734  ever_stunted     
0-24 months   PROBIT           BELARUS                        <151 cm                    1       36   13734  ever_stunted     
0-24 months   PROBIT           BELARUS                        [151-155) cm               0      310   13734  ever_stunted     
0-24 months   PROBIT           BELARUS                        [151-155) cm               1       88   13734  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                   0      102     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                   1       36     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     <151 cm                    0      173     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     <151 cm                    1      200     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm               0       91     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm               1       67     669  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                   0      238    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                   1      334    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          <151 cm                    0      103    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          <151 cm                    1      391    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm               0      100    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm               1      241    1407  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   0       22     409  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   1       56     409  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    0       28     409  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    1      192     409  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               0       16     409  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               1       95     409  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1058    2359  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      432    2359  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      182    2359  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      176    2359  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      304    2359  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      207    2359  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4447    9852  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   1     3392    9852  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    0      205    9852  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    1      369    9852  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               0      682    9852  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               1      757    9852  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      >=155 cm                   0      111    1070  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      >=155 cm                   1       27    1070  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      <151 cm                    0      434    1070  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      <151 cm                    1      269    1070  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      [151-155) cm               0      176    1070  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      [151-155) cm               1       53    1070  ever_stunted     
0-6 months    COHORTS          INDIA                          >=155 cm                   0      507    1872  ever_stunted     
0-6 months    COHORTS          INDIA                          >=155 cm                   1       52    1872  ever_stunted     
0-6 months    COHORTS          INDIA                          <151 cm                    0      619    1872  ever_stunted     
0-6 months    COHORTS          INDIA                          <151 cm                    1      191    1872  ever_stunted     
0-6 months    COHORTS          INDIA                          [151-155) cm               0      425    1872  ever_stunted     
0-6 months    COHORTS          INDIA                          [151-155) cm               1       78    1872  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                   0      546    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                   1       86    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    <151 cm                    0     1066    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    <151 cm                    1      483    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm               0      715    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm               1      162    3058  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                   0       27     219  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                   1        7     219  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                    0       83     219  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                    1       49     219  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm               0       39     219  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm               1       14     219  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                   0     3139   27040  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                   1     1006   27040  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                    0     8194   27040  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                    1     7863   27040  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm               0     4538   27040  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm               1     2300   27040  ever_stunted     
0-6 months    Keneba           GAMBIA                         >=155 cm                   0     1272    2158  ever_stunted     
0-6 months    Keneba           GAMBIA                         >=155 cm                   1      523    2158  ever_stunted     
0-6 months    Keneba           GAMBIA                         <151 cm                    0       38    2158  ever_stunted     
0-6 months    Keneba           GAMBIA                         <151 cm                    1       38    2158  ever_stunted     
0-6 months    Keneba           GAMBIA                         [151-155) cm               0      170    2158  ever_stunted     
0-6 months    Keneba           GAMBIA                         [151-155) cm               1      117    2158  ever_stunted     
0-6 months    LCNI-5           MALAWI                         >=155 cm                   0      121     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         >=155 cm                   1       40     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         <151 cm                    0       17     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         <151 cm                    1       21     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         [151-155) cm               0       36     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         [151-155) cm               1       36     271  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                   0       20     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                   1        5     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     <151 cm                    0       92     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     <151 cm                    1       71     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm               0       53     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm               1       13     254  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         >=155 cm                   0      105     222  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         >=155 cm                   1       25     222  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         <151 cm                    0       40     222  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         <151 cm                    1       13     222  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         [151-155) cm               0       30     222  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         [151-155) cm               1        9     222  ever_stunted     
0-6 months    MAL-ED           INDIA                          >=155 cm                   0       42     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          >=155 cm                   1       13     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          <151 cm                    0       67     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          <151 cm                    1       48     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          [151-155) cm               0       49     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          [151-155) cm               1       23     242  ever_stunted     
0-6 months    MAL-ED           NEPAL                          >=155 cm                   0       38     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          >=155 cm                   1        3     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          <151 cm                    0      105     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          <151 cm                    1       28     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          [151-155) cm               0       53     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          [151-155) cm               1       11     238  ever_stunted     
0-6 months    MAL-ED           PERU                           >=155 cm                   0       40     290  ever_stunted     
0-6 months    MAL-ED           PERU                           >=155 cm                   1       20     290  ever_stunted     
0-6 months    MAL-ED           PERU                           <151 cm                    0       89     290  ever_stunted     
0-6 months    MAL-ED           PERU                           <151 cm                    1       80     290  ever_stunted     
0-6 months    MAL-ED           PERU                           [151-155) cm               0       33     290  ever_stunted     
0-6 months    MAL-ED           PERU                           [151-155) cm               1       28     290  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                   0      133     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                   1       71     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                    0       15     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                    1       18     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm               0       18     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm               1       15     270  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       97     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       56     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       17     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       34     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       34     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       18     256  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                   0       94     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                   1       23     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                    0      209     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                    1      157     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm               0      106     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm               1       40     629  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                   0      115     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                   1       25     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                    0      279     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                    1      156     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm               0      132     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm               1       48     755  ever_stunted     
0-6 months    PROBIT           BELARUS                        >=155 cm                   0    12370   13734  ever_stunted     
0-6 months    PROBIT           BELARUS                        >=155 cm                   1      841   13734  ever_stunted     
0-6 months    PROBIT           BELARUS                        <151 cm                    0      107   13734  ever_stunted     
0-6 months    PROBIT           BELARUS                        <151 cm                    1       18   13734  ever_stunted     
0-6 months    PROBIT           BELARUS                        [151-155) cm               0      356   13734  ever_stunted     
0-6 months    PROBIT           BELARUS                        [151-155) cm               1       42   13734  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                   0      118     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                   1       20     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     <151 cm                    0      261     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     <151 cm                    1      112     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm               0      124     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm               1       34     669  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                   0      393    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                   1      178    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          <151 cm                    0      220    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          <151 cm                    1      272    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm               0      192    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm               1      149    1404  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                   0       59     407  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                   1       19     407  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                    0      114     407  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                    1      106     407  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm               0       75     407  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm               1       34     407  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1268    2359  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      222    2359  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      253    2359  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      105    2359  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      381    2359  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      130    2359  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                   0     5758    9841  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                   1     2074    9841  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                    0      325    9841  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                    1      247    9841  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm               0      938    9841  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm               1      499    9841  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      >=155 cm                   0       48     842  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      >=155 cm                   1       74     842  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      <151 cm                    0      102     842  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      <151 cm                    1      416     842  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      [151-155) cm               0       51     842  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      [151-155) cm               1      151     842  ever_stunted     
6-24 months   COHORTS          INDIA                          >=155 cm                   0      432    1530  ever_stunted     
6-24 months   COHORTS          INDIA                          >=155 cm                   1       65    1530  ever_stunted     
6-24 months   COHORTS          INDIA                          <151 cm                    0      418    1530  ever_stunted     
6-24 months   COHORTS          INDIA                          <151 cm                    1      196    1530  ever_stunted     
6-24 months   COHORTS          INDIA                          [151-155) cm               0      315    1530  ever_stunted     
6-24 months   COHORTS          INDIA                          [151-155) cm               1      104    1530  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                   0      245    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                   1      256    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    <151 cm                    0      264    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    <151 cm                    1      705    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm               0      244    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm               1      407    2121  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     157  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                   1       10     157  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    0       50     157  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                    1       38     157  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               0       27     157  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm               1       13     157  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1942    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      957    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       31    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       60    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       96    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3216  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   0     1893   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                   1      239   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                    0     3833   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                    1     1491   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               0     2471   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm               1      533   10460  ever_stunted     
6-24 months   Keneba           GAMBIA                         >=155 cm                   0      917    1679  ever_stunted     
6-24 months   Keneba           GAMBIA                         >=155 cm                   1      509    1679  ever_stunted     
6-24 months   Keneba           GAMBIA                         <151 cm                    0       15    1679  ever_stunted     
6-24 months   Keneba           GAMBIA                         <151 cm                    1       39    1679  ever_stunted     
6-24 months   Keneba           GAMBIA                         [151-155) cm               0      108    1679  ever_stunted     
6-24 months   Keneba           GAMBIA                         [151-155) cm               1       91    1679  ever_stunted     
6-24 months   LCNI-5           MALAWI                         >=155 cm                   0      221     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         >=155 cm                   1      245     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         <151 cm                    0       19     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         <151 cm                    1       90     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         [151-155) cm               0       52     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         [151-155) cm               1      100     727  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                   0       16     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                   1        3     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     <151 cm                    0       43     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     <151 cm                    1       47     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm               0       32     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm               1       17     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         >=155 cm                   0       91     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         >=155 cm                   1        6     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         <151 cm                    0       36     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         <151 cm                    1        2     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         [151-155) cm               0       25     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         [151-155) cm               1        3     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          >=155 cm                   0       32     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          >=155 cm                   1       10     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          <151 cm                    0       28     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          <151 cm                    1       38     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          [151-155) cm               0       29     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          [151-155) cm               1       17     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          >=155 cm                   0       38     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          >=155 cm                   1        0     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          <151 cm                    0       72     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          <151 cm                    1       31     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          [151-155) cm               0       43     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          [151-155) cm               1       10     194  ever_stunted     
6-24 months   MAL-ED           PERU                           >=155 cm                   0       26     148  ever_stunted     
6-24 months   MAL-ED           PERU                           >=155 cm                   1       13     148  ever_stunted     
6-24 months   MAL-ED           PERU                           <151 cm                    0       44     148  ever_stunted     
6-24 months   MAL-ED           PERU                           <151 cm                    1       36     148  ever_stunted     
6-24 months   MAL-ED           PERU                           [151-155) cm               0       20     148  ever_stunted     
6-24 months   MAL-ED           PERU                           [151-155) cm               1        9     148  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   0       80     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                   1       44     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    0        6     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                    1        9     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               0       11     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm               1        5     155  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       26     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       69     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        1     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       30     144  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   0       45     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                   1       34     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                    0       58     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                    1      116     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               0       44     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm               1       48     345  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   0       98     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                   1       15     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    0      181     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                    1       87     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               0       94     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm               1       31     506  ever_stunted     
6-24 months   PROBIT           BELARUS                        >=155 cm                   0    11563   12825  ever_stunted     
6-24 months   PROBIT           BELARUS                        >=155 cm                   1      799   12825  ever_stunted     
6-24 months   PROBIT           BELARUS                        <151 cm                    0       89   12825  ever_stunted     
6-24 months   PROBIT           BELARUS                        <151 cm                    1       18   12825  ever_stunted     
6-24 months   PROBIT           BELARUS                        [151-155) cm               0      310   12825  ever_stunted     
6-24 months   PROBIT           BELARUS                        [151-155) cm               1       46   12825  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                   0       93     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                   1       16     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     <151 cm                    0      142     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     <151 cm                    1       88     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm               0       84     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm               1       33     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                   0      216     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                   1      156     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          <151 cm                    0       75     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          <151 cm                    1      119     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm               0       85     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm               1       92     743  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   0       20     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                   1       37     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    0       24     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                    1       86     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               0       15     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm               1       61     243  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      843    1578  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      210    1578  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      136    1578  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       71    1578  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      241    1578  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       77    1578  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4007    6493  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                   1     1318    6493  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    0      181    6493  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                    1      122    6493  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               0      607    6493  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm               1      258    6493  ever_stunted     


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
