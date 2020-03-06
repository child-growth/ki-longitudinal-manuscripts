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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        mhtcm           ever_co   n_cell       n
------------  ---------------  -----------------------------  -------------  --------  -------  ------
0-24 months   COHORTS          GUATEMALA                      >=155 cm              0      150    1275
0-24 months   COHORTS          GUATEMALA                      >=155 cm              1       15    1275
0-24 months   COHORTS          GUATEMALA                      <151 cm               0      733    1275
0-24 months   COHORTS          GUATEMALA                      <151 cm               1      102    1275
0-24 months   COHORTS          GUATEMALA                      [151-155) cm          0      246    1275
0-24 months   COHORTS          GUATEMALA                      [151-155) cm          1       29    1275
0-24 months   COHORTS          INDIA                          >=155 cm              0      541    1905
0-24 months   COHORTS          INDIA                          >=155 cm              1       30    1905
0-24 months   COHORTS          INDIA                          <151 cm               0      737    1905
0-24 months   COHORTS          INDIA                          <151 cm               1       86    1905
0-24 months   COHORTS          INDIA                          [151-155) cm          0      481    1905
0-24 months   COHORTS          INDIA                          [151-155) cm          1       30    1905
0-24 months   COHORTS          PHILIPPINES                    >=155 cm              0      554    3045
0-24 months   COHORTS          PHILIPPINES                    >=155 cm              1       75    3045
0-24 months   COHORTS          PHILIPPINES                    <151 cm               0     1186    3045
0-24 months   COHORTS          PHILIPPINES                    <151 cm               1      354    3045
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm          0      745    3045
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm          1      131    3045
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm              0       35     235
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm              1        1     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm               0      131     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm               1       12     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm          0       51     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm          1        5     235
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm              0     2575    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm              1      324    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm               0       71    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm               1       20    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm          0      184    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm          1       42    3216
0-24 months   Keneba           GAMBIA                         >=155 cm              0     1718    2429
0-24 months   Keneba           GAMBIA                         >=155 cm              1      292    2429
0-24 months   Keneba           GAMBIA                         <151 cm               0       68    2429
0-24 months   Keneba           GAMBIA                         <151 cm               1       25    2429
0-24 months   Keneba           GAMBIA                         [151-155) cm          0      261    2429
0-24 months   Keneba           GAMBIA                         [151-155) cm          1       65    2429
0-24 months   LCNI-5           MALAWI                         >=155 cm              0      488     837
0-24 months   LCNI-5           MALAWI                         >=155 cm              1       26     837
0-24 months   LCNI-5           MALAWI                         <151 cm               0      124     837
0-24 months   LCNI-5           MALAWI                         <151 cm               1        7     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm          0      183     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm          1        9     837
0-24 months   MAL-ED           BANGLADESH                     >=155 cm              0       23     254
0-24 months   MAL-ED           BANGLADESH                     >=155 cm              1        2     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm               0      131     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm               1       32     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm          0       61     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm          1        5     254
0-24 months   MAL-ED           BRAZIL                         >=155 cm              0      128     222
0-24 months   MAL-ED           BRAZIL                         >=155 cm              1        2     222
0-24 months   MAL-ED           BRAZIL                         <151 cm               0       52     222
0-24 months   MAL-ED           BRAZIL                         <151 cm               1        1     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm          0       39     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm          1        0     222
0-24 months   MAL-ED           INDIA                          >=155 cm              0       49     242
0-24 months   MAL-ED           INDIA                          >=155 cm              1        6     242
0-24 months   MAL-ED           INDIA                          <151 cm               0       82     242
0-24 months   MAL-ED           INDIA                          <151 cm               1       33     242
0-24 months   MAL-ED           INDIA                          [151-155) cm          0       58     242
0-24 months   MAL-ED           INDIA                          [151-155) cm          1       14     242
0-24 months   MAL-ED           NEPAL                          >=155 cm              0       40     238
0-24 months   MAL-ED           NEPAL                          >=155 cm              1        1     238
0-24 months   MAL-ED           NEPAL                          <151 cm               0      114     238
0-24 months   MAL-ED           NEPAL                          <151 cm               1       19     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm          0       62     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm          1        2     238
0-24 months   MAL-ED           PERU                           >=155 cm              0       60     290
0-24 months   MAL-ED           PERU                           >=155 cm              1        0     290
0-24 months   MAL-ED           PERU                           <151 cm               0      161     290
0-24 months   MAL-ED           PERU                           <151 cm               1        8     290
0-24 months   MAL-ED           PERU                           [151-155) cm          0       57     290
0-24 months   MAL-ED           PERU                           [151-155) cm          1        4     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              0      189     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              1       15     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm               0       29     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm               1        4     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          0       31     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          1        2     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      145     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        8     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       43     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        8     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       45     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     256
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm              0       95     624
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm              1       21     624
0-24 months   NIH-Birth        BANGLADESH                     <151 cm               0      275     624
0-24 months   NIH-Birth        BANGLADESH                     <151 cm               1       87     624
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm          0      117     624
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm          1       29     624
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm              0      131     755
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm              1        9     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm               0      390     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm               1       45     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          0      163     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          1       17     755
0-24 months   PROBIT           BELARUS                        >=155 cm              0    13198   13734
0-24 months   PROBIT           BELARUS                        >=155 cm              1       13   13734
0-24 months   PROBIT           BELARUS                        <151 cm               0      125   13734
0-24 months   PROBIT           BELARUS                        <151 cm               1        0   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm          0      397   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm          1        1   13734
0-24 months   PROVIDE          BANGLADESH                     >=155 cm              0      127     669
0-24 months   PROVIDE          BANGLADESH                     >=155 cm              1       11     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm               0      320     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm               1       53     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm          0      132     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm          1       26     669
0-24 months   SAS-CompFeed     INDIA                          >=155 cm              0      478    1390
0-24 months   SAS-CompFeed     INDIA                          >=155 cm              1       90    1390
0-24 months   SAS-CompFeed     INDIA                          <151 cm               0      342    1390
0-24 months   SAS-CompFeed     INDIA                          <151 cm               1      145    1390
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm          0      250    1390
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm          1       85    1390
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm              0       56     409
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm              1       22     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm               0      133     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm               1       87     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm          0       66     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm          1       45     409
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1426    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       64    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      338    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       20    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      479    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       32    2359
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              0     7462    9828
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              1      355    9828
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm               0      537    9828
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm               1       37    9828
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1368    9828
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          1       69    9828
0-6 months    COHORTS          GUATEMALA                      >=155 cm              0      133    1044
0-6 months    COHORTS          GUATEMALA                      >=155 cm              1        3    1044
0-6 months    COHORTS          GUATEMALA                      <151 cm               0      669    1044
0-6 months    COHORTS          GUATEMALA                      <151 cm               1       16    1044
0-6 months    COHORTS          GUATEMALA                      [151-155) cm          0      221    1044
0-6 months    COHORTS          GUATEMALA                      [151-155) cm          1        2    1044
0-6 months    COHORTS          INDIA                          >=155 cm              0      542    1863
0-6 months    COHORTS          INDIA                          >=155 cm              1       13    1863
0-6 months    COHORTS          INDIA                          <151 cm               0      786    1863
0-6 months    COHORTS          INDIA                          <151 cm               1       21    1863
0-6 months    COHORTS          INDIA                          [151-155) cm          0      493    1863
0-6 months    COHORTS          INDIA                          [151-155) cm          1        8    1863
0-6 months    COHORTS          PHILIPPINES                    >=155 cm              0      619    3044
0-6 months    COHORTS          PHILIPPINES                    >=155 cm              1       10    3044
0-6 months    COHORTS          PHILIPPINES                    <151 cm               0     1493    3044
0-6 months    COHORTS          PHILIPPINES                    <151 cm               1       46    3044
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm          0      860    3044
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm          1       16    3044
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm              0       34     219
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm              1        0     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm               0      129     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm               1        3     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          0       51     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          1        2     219
0-6 months    Keneba           GAMBIA                         >=155 cm              0     1746    2156
0-6 months    Keneba           GAMBIA                         >=155 cm              1       47    2156
0-6 months    Keneba           GAMBIA                         <151 cm               0       69    2156
0-6 months    Keneba           GAMBIA                         <151 cm               1        7    2156
0-6 months    Keneba           GAMBIA                         [151-155) cm          0      281    2156
0-6 months    Keneba           GAMBIA                         [151-155) cm          1        6    2156
0-6 months    LCNI-5           MALAWI                         >=155 cm              0      161     271
0-6 months    LCNI-5           MALAWI                         >=155 cm              1        0     271
0-6 months    LCNI-5           MALAWI                         <151 cm               0       38     271
0-6 months    LCNI-5           MALAWI                         <151 cm               1        0     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm          0       72     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm          1        0     271
0-6 months    MAL-ED           BANGLADESH                     >=155 cm              0       24     254
0-6 months    MAL-ED           BANGLADESH                     >=155 cm              1        1     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm               0      155     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm               1        8     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm          0       66     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm          1        0     254
0-6 months    MAL-ED           BRAZIL                         >=155 cm              0      129     222
0-6 months    MAL-ED           BRAZIL                         >=155 cm              1        1     222
0-6 months    MAL-ED           BRAZIL                         <151 cm               0       53     222
0-6 months    MAL-ED           BRAZIL                         <151 cm               1        0     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm          0       39     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm          1        0     222
0-6 months    MAL-ED           INDIA                          >=155 cm              0       53     242
0-6 months    MAL-ED           INDIA                          >=155 cm              1        2     242
0-6 months    MAL-ED           INDIA                          <151 cm               0      105     242
0-6 months    MAL-ED           INDIA                          <151 cm               1       10     242
0-6 months    MAL-ED           INDIA                          [151-155) cm          0       66     242
0-6 months    MAL-ED           INDIA                          [151-155) cm          1        6     242
0-6 months    MAL-ED           NEPAL                          >=155 cm              0       40     238
0-6 months    MAL-ED           NEPAL                          >=155 cm              1        1     238
0-6 months    MAL-ED           NEPAL                          <151 cm               0      126     238
0-6 months    MAL-ED           NEPAL                          <151 cm               1        7     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm          0       64     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm          1        0     238
0-6 months    MAL-ED           PERU                           >=155 cm              0       60     290
0-6 months    MAL-ED           PERU                           >=155 cm              1        0     290
0-6 months    MAL-ED           PERU                           <151 cm               0      168     290
0-6 months    MAL-ED           PERU                           <151 cm               1        1     290
0-6 months    MAL-ED           PERU                           [151-155) cm          0       60     290
0-6 months    MAL-ED           PERU                           [151-155) cm          1        1     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              0      201     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              1        3     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm               0       33     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm               1        0     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          0       33     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          1        0     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      151     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        2     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       50     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       51     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        1     256
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm              0      110     622
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm              1        6     622
0-6 months    NIH-Birth        BANGLADESH                     <151 cm               0      330     622
0-6 months    NIH-Birth        BANGLADESH                     <151 cm               1       30     622
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm          0      137     622
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm          1        9     622
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm              0      140     755
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm              1        0     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm               0      423     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm               1       12     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          0      175     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          1        5     755
0-6 months    PROBIT           BELARUS                        >=155 cm              0    13203   13734
0-6 months    PROBIT           BELARUS                        >=155 cm              1        8   13734
0-6 months    PROBIT           BELARUS                        <151 cm               0      125   13734
0-6 months    PROBIT           BELARUS                        <151 cm               1        0   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm          0      397   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm          1        1   13734
0-6 months    PROVIDE          BANGLADESH                     >=155 cm              0      131     669
0-6 months    PROVIDE          BANGLADESH                     >=155 cm              1        7     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm               0      357     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm               1       16     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm          0      151     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm          1        7     669
0-6 months    SAS-CompFeed     INDIA                          >=155 cm              0      532    1382
0-6 months    SAS-CompFeed     INDIA                          >=155 cm              1       33    1382
0-6 months    SAS-CompFeed     INDIA                          <151 cm               0      443    1382
0-6 months    SAS-CompFeed     INDIA                          <151 cm               1       41    1382
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm          0      311    1382
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm          1       22    1382
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm              0       74     407
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm              1        4     407
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm               0      199     407
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm               1       21     407
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          0      103     407
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          1        6     407
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1481    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        9    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      356    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        2    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      504    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7    2359
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              0     7694    9788
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              1       91    9788
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm               0      560    9788
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm               1        9    9788
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1413    9788
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          1       21    9788
6-24 months   COHORTS          GUATEMALA                      >=155 cm              0      133    1154
6-24 months   COHORTS          GUATEMALA                      >=155 cm              1       13    1154
6-24 months   COHORTS          GUATEMALA                      <151 cm               0      667    1154
6-24 months   COHORTS          GUATEMALA                      <151 cm               1       93    1154
6-24 months   COHORTS          GUATEMALA                      [151-155) cm          0      221    1154
6-24 months   COHORTS          GUATEMALA                      [151-155) cm          1       27    1154
6-24 months   COHORTS          INDIA                          >=155 cm              0      521    1843
6-24 months   COHORTS          INDIA                          >=155 cm              1       27    1843
6-24 months   COHORTS          INDIA                          <151 cm               0      721    1843
6-24 months   COHORTS          INDIA                          <151 cm               1       78    1843
6-24 months   COHORTS          INDIA                          [151-155) cm          0      468    1843
6-24 months   COHORTS          INDIA                          [151-155) cm          1       28    1843
6-24 months   COHORTS          PHILIPPINES                    >=155 cm              0      510    2808
6-24 months   COHORTS          PHILIPPINES                    >=155 cm              1       71    2808
6-24 months   COHORTS          PHILIPPINES                    <151 cm               0     1083    2808
6-24 months   COHORTS          PHILIPPINES                    <151 cm               1      339    2808
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm          0      679    2808
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm          1      126    2808
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm              0       35     225
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm              1        1     225
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm               0      125     225
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm               1       11     225
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm          0       49     225
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm          1        4     225
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm              0     2575    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm              1      324    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm               0       71    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm               1       20    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm          0      184    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm          1       42    3216
6-24 months   Keneba           GAMBIA                         >=155 cm              0     1646    2324
6-24 months   Keneba           GAMBIA                         >=155 cm              1      275    2324
6-24 months   Keneba           GAMBIA                         <151 cm               0       67    2324
6-24 months   Keneba           GAMBIA                         <151 cm               1       23    2324
6-24 months   Keneba           GAMBIA                         [151-155) cm          0      252    2324
6-24 months   Keneba           GAMBIA                         [151-155) cm          1       61    2324
6-24 months   LCNI-5           MALAWI                         >=155 cm              0      480     823
6-24 months   LCNI-5           MALAWI                         >=155 cm              1       26     823
6-24 months   LCNI-5           MALAWI                         <151 cm               0      123     823
6-24 months   LCNI-5           MALAWI                         <151 cm               1        7     823
6-24 months   LCNI-5           MALAWI                         [151-155) cm          0      178     823
6-24 months   LCNI-5           MALAWI                         [151-155) cm          1        9     823
6-24 months   MAL-ED           BANGLADESH                     >=155 cm              0       22     239
6-24 months   MAL-ED           BANGLADESH                     >=155 cm              1        2     239
6-24 months   MAL-ED           BANGLADESH                     <151 cm               0      128     239
6-24 months   MAL-ED           BANGLADESH                     <151 cm               1       28     239
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm          0       54     239
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm          1        5     239
6-24 months   MAL-ED           BRAZIL                         >=155 cm              0      119     207
6-24 months   MAL-ED           BRAZIL                         >=155 cm              1        1     207
6-24 months   MAL-ED           BRAZIL                         <151 cm               0       49     207
6-24 months   MAL-ED           BRAZIL                         <151 cm               1        1     207
6-24 months   MAL-ED           BRAZIL                         [151-155) cm          0       37     207
6-24 months   MAL-ED           BRAZIL                         [151-155) cm          1        0     207
6-24 months   MAL-ED           INDIA                          >=155 cm              0       49     234
6-24 months   MAL-ED           INDIA                          >=155 cm              1        6     234
6-24 months   MAL-ED           INDIA                          <151 cm               0       79     234
6-24 months   MAL-ED           INDIA                          <151 cm               1       32     234
6-24 months   MAL-ED           INDIA                          [151-155) cm          0       59     234
6-24 months   MAL-ED           INDIA                          [151-155) cm          1        9     234
6-24 months   MAL-ED           NEPAL                          >=155 cm              0       41     235
6-24 months   MAL-ED           NEPAL                          >=155 cm              1        0     235
6-24 months   MAL-ED           NEPAL                          <151 cm               0      117     235
6-24 months   MAL-ED           NEPAL                          <151 cm               1       14     235
6-24 months   MAL-ED           NEPAL                          [151-155) cm          0       61     235
6-24 months   MAL-ED           NEPAL                          [151-155) cm          1        2     235
6-24 months   MAL-ED           PERU                           >=155 cm              0       58     269
6-24 months   MAL-ED           PERU                           >=155 cm              1        0     269
6-24 months   MAL-ED           PERU                           <151 cm               0      147     269
6-24 months   MAL-ED           PERU                           <151 cm               1        8     269
6-24 months   MAL-ED           PERU                           [151-155) cm          0       53     269
6-24 months   MAL-ED           PERU                           [151-155) cm          1        3     269
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              0      177     254
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              1       14     254
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm               0       28     254
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm               1        4     254
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          0       29     254
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          1        2     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      140     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        7     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       39     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        7     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       45     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     245
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm              0       82     542
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm              1       16     542
6-24 months   NIH-Birth        BANGLADESH                     <151 cm               0      245     542
6-24 months   NIH-Birth        BANGLADESH                     <151 cm               1       72     542
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm          0      101     542
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm          1       26     542
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm              0      129     730
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm              1        9     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm               0      379     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm               1       40     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          0      159     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          1       14     730
6-24 months   PROBIT           BELARUS                        >=155 cm              0    13197   13726
6-24 months   PROBIT           BELARUS                        >=155 cm              1        6   13726
6-24 months   PROBIT           BELARUS                        <151 cm               0      125   13726
6-24 months   PROBIT           BELARUS                        <151 cm               1        0   13726
6-24 months   PROBIT           BELARUS                        [151-155) cm          0      398   13726
6-24 months   PROBIT           BELARUS                        [151-155) cm          1        0   13726
6-24 months   PROVIDE          BANGLADESH                     >=155 cm              0      122     613
6-24 months   PROVIDE          BANGLADESH                     >=155 cm              1        7     613
6-24 months   PROVIDE          BANGLADESH                     <151 cm               0      291     613
6-24 months   PROVIDE          BANGLADESH                     <151 cm               1       44     613
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm          0      125     613
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm          1       24     613
6-24 months   SAS-CompFeed     INDIA                          >=155 cm              0      461    1277
6-24 months   SAS-CompFeed     INDIA                          >=155 cm              1       78    1277
6-24 months   SAS-CompFeed     INDIA                          <151 cm               0      301    1277
6-24 months   SAS-CompFeed     INDIA                          <151 cm               1      131    1277
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm          0      227    1277
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm          1       79    1277
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm              0       54     400
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm              1       21     400
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm               0      135     400
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm               1       80     400
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm          0       67     400
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm          1       43     400
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1185    1984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       61    1984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      284    1984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       19    1984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      405    1984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       30    1984
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              0     6564    8622
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              1      277    8622
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm               0      490    8622
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm               1       29    8622
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1209    8622
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          1       53    8622


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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/72d9c612-f02e-4b3e-9d26-49a2d49ca8aa/466c3a8c-52e5-4ee7-9d73-df7d455a38ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/72d9c612-f02e-4b3e-9d26-49a2d49ca8aa/466c3a8c-52e5-4ee7-9d73-df7d455a38ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/72d9c612-f02e-4b3e-9d26-49a2d49ca8aa/466c3a8c-52e5-4ee7-9d73-df7d455a38ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/72d9c612-f02e-4b3e-9d26-49a2d49ca8aa/466c3a8c-52e5-4ee7-9d73-df7d455a38ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0909091   0.0470274   0.1347908
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1221557   0.0999359   0.1443755
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1054545   0.0691396   0.1417695
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0525394   0.0342345   0.0708443
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.1044957   0.0835910   0.1254005
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0587084   0.0383209   0.0790959
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1192369   0.0939072   0.1445665
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.2298701   0.2088526   0.2508877
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1495434   0.1259235   0.1731632
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1117627   0.0918558   0.1316695
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2197802   0.0883501   0.3512103
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1858407   0.1163072   0.2553742
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1452736   0.1298656   0.1606816
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.2688172   0.1786938   0.3589406
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1993865   0.1560067   0.2427664
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0505837   0.0316271   0.0695402
0-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.0534351   0.0148996   0.0919706
0-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.0468750   0.0169591   0.0767909
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1090909   0.0265295   0.1916523
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.2869565   0.2041119   0.3698012
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1944444   0.1028379   0.2860510
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0522876   0.0169457   0.0876295
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1568627   0.0568577   0.2568678
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416656   0.2275651
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1810345   0.1109082   0.2511608
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.2403315   0.1962801   0.2843829
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1986301   0.1338624   0.2633979
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0642857   0.0236320   0.1049395
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1034483   0.0748104   0.1320861
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0944444   0.0516935   0.1371954
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0797101   0.0344879   0.1249324
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1420912   0.1066325   0.1775498
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1645570   0.1066993   0.2224146
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1584507   0.1225610   0.1943404
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.2977413   0.2307587   0.3647238
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2537313   0.1976951   0.3097676
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2820513   0.1820644   0.3820382
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.3954545   0.3307654   0.4601436
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.4054054   0.3139576   0.4968532
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0429530   0.0326560   0.0532500
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0558659   0.0320707   0.0796611
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0626223   0.0416111   0.0836335
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0454138   0.0407980   0.0500297
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0644599   0.0443694   0.0845504
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0480167   0.0369619   0.0590715
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0234234   0.0108372   0.0360097
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.0260223   0.0150354   0.0370092
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0159681   0.0049887   0.0269474
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0158983   0.0061216   0.0256749
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0298895   0.0213807   0.0383984
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0182648   0.0093959   0.0271338
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0262131   0.0188162   0.0336099
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.0921053   0.0270770   0.1571335
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.0209059   0.0043499   0.0374619
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0517241   0.0113891   0.0920592
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.0833333   0.0547600   0.1119067
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0616438   0.0226002   0.1006874
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.0507246   0.0140860   0.0873632
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.0428954   0.0223174   0.0634735
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0443038   0.0121949   0.0764126
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0584071   0.0312511   0.0855630
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.0847107   0.0506911   0.1187304
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0660661   0.0353305   0.0968017
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0116891   0.0093014   0.0140768
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0158172   0.0055650   0.0260694
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0146444   0.0084267   0.0208620
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0890411   0.0428238   0.1352584
6-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1223684   0.0990596   0.1456772
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1088710   0.0700884   0.1476536
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0492701   0.0311443   0.0673958
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.0976220   0.0770366   0.1182075
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0564516   0.0361353   0.0767679
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1222031   0.0955667   0.1488395
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.2383966   0.2162458   0.2605475
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1565217   0.1314172   0.1816263
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1117627   0.0918558   0.1316695
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2197802   0.0883501   0.3512103
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1858407   0.1163072   0.2553742
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1431546   0.1274896   0.1588197
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.2555556   0.1654235   0.3456876
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1948882   0.1509957   0.2387807
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0513834   0.0321350   0.0706318
6-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.0538462   0.0150223   0.0926700
6-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.0481283   0.0174324   0.0788243
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1090909   0.0265237   0.1916581
6-24 months   MAL-ED           INDIA                          <151 cm              NA                0.2882883   0.2038417   0.3727349
6-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1323529   0.0516365   0.2130694
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0476190   0.0131227   0.0821154
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1521739   0.0481625   0.2561853
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1632653   0.0900205   0.2365101
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.2271293   0.1809647   0.2732940
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2047244   0.1344834   0.2749654
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0652174   0.0239940   0.1064407
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0954654   0.0673092   0.1236216
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0809249   0.0402581   0.1215916
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0542636   0.0151392   0.0933879
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1313433   0.0951433   0.1675433
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1610738   0.1020015   0.2201461
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1447124   0.1188184   0.1706065
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.3032407   0.2392268   0.3672547
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2581699   0.2078487   0.3084912
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2800000   0.1782566   0.3817434
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.3720930   0.3074017   0.4367843
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.3909091   0.2996084   0.4822098
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0489567   0.0369726   0.0609407
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0627063   0.0354021   0.0900105
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0689655   0.0451472   0.0927839
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0404912   0.0358201   0.0451622
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0558767   0.0361152   0.0756382
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0419968   0.0309297   0.0530640


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1145098   0.0970244   0.1319952
0-24 months   COHORTS          INDIA                          NA                   NA                0.0766404   0.0646915   0.0885893
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1572664   0.1427858   0.1717470
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0501792   0.0353804   0.0649781
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0898438   0.0547459   0.1249416
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2302158   0.1856981   0.2747335
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3765281   0.3295143   0.4235419
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0491734   0.0404458   0.0579009
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0469068   0.0427263   0.0510872
0-6 months    COHORTS          INDIA                          NA                   NA                0.0225443   0.0158017   0.0292868
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0278293   0.0208847   0.0347739
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0694645   0.0441638   0.0947653
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123621   0.0101730   0.0145512
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1152513   0.0968196   0.1336830
6-24 months   COHORTS          INDIA                          NA                   NA                0.0721649   0.0603481   0.0839818
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1544750   0.1397785   0.1691716
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0510328   0.0359888   0.0660768
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2255286   0.1871466   0.2639106
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3600000   0.3129020   0.4070980
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0554435   0.0453713   0.0655158
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416377   0.0374209   0.0458544


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3437126   0.8021994   2.250767
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1600000   0.6411272   2.098803
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.9889024   1.3308648   2.972303
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1174168   0.6832502   1.827472
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9278442   1.5297893   2.429474
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2541705   0.9624812   1.634259
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9664903   1.0535387   3.670567
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6628155   1.1528975   2.398266
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.8504198   1.3018375   2.630170
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3724893   1.0774358   1.748342
0-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0563711   0.4686570   2.381101
0-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9266827   0.4420883   1.942465
0-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          2.6304348   1.1701604   5.913025
0-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.7824074   0.7308807   4.346778
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.0000000   1.1846760   7.597014
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.5745192   0.9796292   6.765978
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3275454   0.8648408   2.037805
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0971950   0.6612806   1.820463
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.6091954   0.8068674   3.209337
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.4691358   0.6750113   3.197517
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.7825981   0.9591378   3.313034
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          2.0644419   1.0590909   4.024131
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.8790783   1.5444566   2.286199
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.6013267   1.2426946   2.063457
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.4020661   0.9488790   2.071697
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.4373464   0.9442331   2.187982
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.3006285   0.7977862   2.120411
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4579256   0.9652673   2.202030
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4193895   1.0226514   1.970042
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0573142   0.8220659   1.359883
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          1.1109522   0.5609346   2.200283
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.6817135   0.2848522   1.631489
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.8800520   0.9547115   3.702265
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1488584   0.5247788   2.515109
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          3.5137178   1.6427149   7.515737
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7975387   0.3440649   1.848686
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.6111111   0.6873308   3.776463
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1917808   0.4364095   3.254607
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.8456530   0.3553172   2.012650
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.8734177   0.3139381   2.429964
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.4503506   1.0010056   2.101404
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.1311311   0.7473065   1.712092
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3531548   0.6858110   2.669872
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2528162   0.7821060   2.006823
6-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3742915   0.7905987   2.388920
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2227047   0.6515048   2.294698
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.9813656   1.2966079   3.027754
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.1457587   0.6848342   1.916906
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9508231   1.5392651   2.472421
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2808328   0.9771556   1.678886
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9664903   1.0535387   3.670567
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6628155   1.1528975   2.398266
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.7851717   1.2339721   2.582585
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3613825   1.0598265   1.748741
6-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          1.0479290   0.4650063   2.361592
6-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          0.9366516   0.4470383   1.962508
6-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          2.6426426   1.1737529   5.949770
6-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.2132353   0.4590007   3.206836
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          3.1956522   1.1803561   8.651789
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.8269231   1.0391141   7.690680
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3911672   0.8501210   2.276554
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2539370   0.7128412   2.205762
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.4638027   0.7287117   2.940420
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.2408478   0.5533781   2.782371
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.4204691   1.1185943   5.237529
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          2.9683605   1.3219292   6.665383
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.0954713   1.7138088   2.562129
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.7840204   1.3908996   2.288252
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.3289037   0.8882824   1.988089
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.3961039   0.9064020   2.150377
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2808527   0.7772485   2.110758
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4087055   0.9225177   2.151125
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3799726   0.9512886   2.001837
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0371853   0.7779003   1.382893


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0236007   -0.0180281   0.0652295
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0241010    0.0074583   0.0407437
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0646712    0.0408819   0.0884605
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082622    0.0029331   0.0135913
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0119927    0.0046316   0.0193539
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0004044   -0.0121093   0.0113004
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.1099174    0.0296403   0.1901944
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0375562    0.0061253   0.0689871
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0385168   -0.0258716   0.1029052
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0297540   -0.0086368   0.0681448
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0548190    0.0115649   0.0980731
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0717651    0.0482096   0.0953207
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0944768    0.0028554   0.1860983
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0062204   -0.0007265   0.0131672
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0014930   -0.0007182   0.0037041
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0008791   -0.0113429   0.0095847
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0077548   -0.0014774   0.0169871
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0016163   -0.0018388   0.0050713
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0206231   -0.0172615   0.0585078
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0058816   -0.0380513   0.0262881
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0110575   -0.0000322   0.0221471
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006729   -0.0005206   0.0018664
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0262102   -0.0177816   0.0702020
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0228949    0.0063782   0.0394116
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0686801    0.0436349   0.0937252
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082622    0.0029331   0.0135913
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0113204    0.0038571   0.0187838
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0003506   -0.0122349   0.0115337
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0917638    0.0126502   0.1708774
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0380952    0.0065391   0.0696514
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0470668   -0.0207869   0.1149205
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0210840   -0.0172877   0.0594556
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0680855    0.0285827   0.1075884
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0808162    0.0556972   0.1059351
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0800000   -0.0132097   0.1732097
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0064869   -0.0015553   0.0145291
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0011465   -0.0010842   0.0033772


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.2061021   -0.2532630   0.4970937
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.3144687    0.0657696   0.4969623
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3516494    0.2108150   0.4673512
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0688374    0.0237332   0.1118578
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0762575    0.0286088   0.1215688
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0080600   -0.2705026   0.2001709
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.5018868   -0.0101766   0.7543828
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4180165    0.0012619   0.6608672
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1754342   -0.1758867   0.4217906
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.3163984   -0.2327008   0.6209046
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.4074879   -0.0059589   0.6510090
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.3117298    0.2244057   0.3892220
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.2509158   -0.0363236   0.4585405
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1264985   -0.0249221   0.2555484
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0318281   -0.0163973   0.0777654
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0389961   -0.6239218   0.3352433
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3278573   -0.1888681   0.6199950
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0580777   -0.0737124   0.1736916
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2850575   -0.4757933   0.6536488
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1311594   -1.1303471   0.3993835
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1591814   -0.0259680   0.3109182
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0544350   -0.0466895   0.1457896
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.2274179   -0.2639609   0.5277677
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.3172576    0.0527751   0.5078917
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3598017    0.2166489   0.4767941
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0688374    0.0237332   0.1118578
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0732833    0.0240390   0.1200428
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0068699   -0.2688686   0.2010307
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.4568665   -0.0954428   0.7307080
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4444444    0.0022396   0.6906652
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2237737   -0.1743640   0.4869332
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.2443064   -0.3552454   0.5786204
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.5564858    0.1210607   0.7762020
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.3583411    0.2758375   0.4314451
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.2222222   -0.0847125   0.4423054
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1169999   -0.0389944   0.2495732
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0275355   -0.0274712   0.0795974
