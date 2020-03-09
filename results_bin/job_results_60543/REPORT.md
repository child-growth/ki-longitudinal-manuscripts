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
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm              0     3928   26804
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm              1      197   26804
0-24 months   JiVitA-3         BANGLADESH                     <151 cm               0    14175   26804
0-24 months   JiVitA-3         BANGLADESH                     <151 cm               1     1717   26804
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm          0     6317   26804
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm          1      470   26804
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
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm              0     4004   26697
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm              1      107   26697
0-6 months    JiVitA-3         BANGLADESH                     <151 cm               0    15098   26697
0-6 months    JiVitA-3         BANGLADESH                     <151 cm               1      729   26697
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm          0     6537   26697
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm          1      222   26697
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
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm              0     2612   17229
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm              1      103   17229
6-24 months   JiVitA-3         BANGLADESH                     <151 cm               0     8988   17229
6-24 months   JiVitA-3         BANGLADESH                     <151 cm               1     1109   17229
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm          0     4132   17229
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm          1      285   17229
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/655feabb-61f4-46c0-ba4e-a73fb56c8766/71c47d81-90a3-4d2f-924d-99479fb6b31d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/655feabb-61f4-46c0-ba4e-a73fb56c8766/71c47d81-90a3-4d2f-924d-99479fb6b31d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/655feabb-61f4-46c0-ba4e-a73fb56c8766/71c47d81-90a3-4d2f-924d-99479fb6b31d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/655feabb-61f4-46c0-ba4e-a73fb56c8766/71c47d81-90a3-4d2f-924d-99479fb6b31d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0863846   0.0419558   0.1308134
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1218423   0.0996360   0.1440485
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1020435   0.0655254   0.1385615
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0584023   0.0400806   0.0767241
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.0988995   0.0782898   0.1195091
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0584635   0.0377914   0.0791357
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1291561   0.1031821   0.1551300
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.2201060   0.1993622   0.2408498
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1564113   0.1321364   0.1806862
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1118096   0.0919329   0.1316864
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2207235   0.0843686   0.3570784
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1843760   0.1196321   0.2491199
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0536822   0.0464640   0.0609003
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.1062120   0.1008175   0.1116066
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0713416   0.0646110   0.0780721
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1464704   0.1309951   0.1619456
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.2467749   0.1589855   0.3345644
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1933497   0.1498271   0.2368723
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0505837   0.0316271   0.0695402
0-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.0534351   0.0148996   0.0919706
0-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.0468750   0.0169591   0.0767909
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1090909   0.0265295   0.1916523
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.2869565   0.2041119   0.3698012
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1944444   0.1028379   0.2860510
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0522876   0.0169457   0.0876295
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1568627   0.0568577   0.2568678
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416656   0.2275651
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1836106   0.1119781   0.2552432
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.2375917   0.1933720   0.2818114
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1945168   0.1280447   0.2609889
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0642857   0.0236320   0.1049395
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1034483   0.0748104   0.1320861
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0944444   0.0516935   0.1371954
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0853917   0.0353638   0.1354195
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1368097   0.1020982   0.1715212
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1725498   0.1124286   0.2326709
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1612556   0.1242296   0.1982815
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.2886577   0.2202379   0.3570775
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2564447   0.1986753   0.3142141
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2860707   0.1858978   0.3862437
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.3989410   0.3337777   0.4641044
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.4202800   0.3289331   0.5116270
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0429108   0.0326036   0.0532179
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0544019   0.0311511   0.0776528
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0622432   0.0413222   0.0831643
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0455836   0.0409630   0.0502042
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0636105   0.0437206   0.0835004
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0473701   0.0363593   0.0583808
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.0234234   0.0108372   0.0360097
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.0260223   0.0150354   0.0370092
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0159681   0.0049887   0.0269474
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0153972   0.0058673   0.0249271
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0296572   0.0211324   0.0381820
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0181706   0.0093433   0.0269980
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0294834   0.0236402   0.0353266
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.0451200   0.0416855   0.0485546
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0336125   0.0288748   0.0383502
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0262131   0.0188162   0.0336099
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.0921053   0.0270770   0.1571335
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.0209059   0.0043499   0.0374619
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0517241   0.0113891   0.0920592
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.0833333   0.0547600   0.1119067
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0616438   0.0226002   0.1006874
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.0507246   0.0140860   0.0873632
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.0428954   0.0223174   0.0634735
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0443038   0.0121949   0.0764126
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0597480   0.0319870   0.0875090
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.0811407   0.0480451   0.1142364
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0665870   0.0350567   0.0981173
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0116891   0.0093014   0.0140768
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0158172   0.0055650   0.0260694
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0146444   0.0084267   0.0208620
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0775771   0.0318803   0.1232739
6-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1218199   0.0985412   0.1450987
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1021925   0.0631207   0.1412643
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0547745   0.0366751   0.0728739
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.0921702   0.0718463   0.1124941
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0565299   0.0361994   0.0768603
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1341240   0.1068224   0.1614255
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.2282820   0.2063785   0.2501854
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1607338   0.1353335   0.1861341
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1117402   0.0918605   0.1316199
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2256067   0.0901377   0.3610757
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1886297   0.1171982   0.2600611
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0429967   0.0351790   0.0508144
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.1079027   0.1013222   0.1144833
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0673912   0.0593270   0.0754553
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1444327   0.1287637   0.1601018
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.2475306   0.1564174   0.3386439
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1895453   0.1459605   0.2331302
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0513834   0.0321350   0.0706318
6-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.0538462   0.0150223   0.0926700
6-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.0481283   0.0174324   0.0788243
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1090909   0.0265237   0.1916581
6-24 months   MAL-ED           INDIA                          <151 cm              NA                0.2882883   0.2038417   0.3727349
6-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1323529   0.0516365   0.2130694
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0476190   0.0131227   0.0821154
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1521739   0.0481625   0.2561853
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1684090   0.0944323   0.2423857
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.2245643   0.1787214   0.2704073
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2061144   0.1341853   0.2780435
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0652174   0.0239940   0.1064407
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.0954654   0.0673092   0.1236216
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.0809249   0.0402581   0.1215916
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0542636   0.0151392   0.0933879
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1313433   0.0951433   0.1675433
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1610738   0.1020015   0.2201461
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1471249   0.1211093   0.1731404
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.2988249   0.2357511   0.3618988
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2583432   0.2049792   0.3117072
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2910260   0.1887046   0.3933474
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.3759236   0.3109260   0.4409211
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.4118411   0.3201946   0.5034876
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0485311   0.0366047   0.0604575
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0632487   0.0355119   0.0909855
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0683112   0.0444617   0.0921607
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0406221   0.0359328   0.0453115
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0563923   0.0363259   0.0764587
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0414385   0.0301755   0.0527016


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1145098   0.0970244   0.1319952
0-24 months   COHORTS          INDIA                          NA                   NA                0.0766404   0.0646915   0.0885893
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0889419   0.0850166   0.0928673
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
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396299   0.0371163   0.0421435
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0278293   0.0208847   0.0347739
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0694645   0.0441638   0.0947653
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123621   0.0101730   0.0145512
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1152513   0.0968196   0.1336830
6-24 months   COHORTS          INDIA                          NA                   NA                0.0721649   0.0603481   0.0839818
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0868884   0.0822172   0.0915596
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
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4104622   0.8169170   2.435258
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1812688   0.6314230   2.209922
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.6934169   1.1640421   2.463537
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0010481   0.6247097   1.604100
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.7041865   1.3655481   2.126803
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2110254   0.9400860   1.560051
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9741013   1.0343951   3.767493
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6490171   1.1692844   2.325574
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.9785353   1.7146353   2.283052
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.3289625   1.1232110   1.572404
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.6848115   1.1627084   2.441360
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3200601   1.0299906   1.691820
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
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.2939974   0.8404694   1.992255
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0593982   0.6306800   1.779547
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.6091954   0.8068674   3.209337
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.4691358   0.6750113   3.197517
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.6021429   0.8470606   3.030317
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          2.0206859   1.0231009   3.990977
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.7900634   1.4512708   2.207946
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.5903000   1.2262295   2.062464
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.3945538   0.9477456   2.052007
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.4691472   0.9730039   2.218278
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2677923   0.7765145   2.069887
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4505274   0.9595956   2.192621
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3954696   1.0045855   1.938447
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0391915   0.8065494   1.338937
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          1.1109522   0.5609346   2.200283
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.6817135   0.2848522   1.631489
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.9261423   0.9736374   3.810478
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1801251   0.5372040   2.592489
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.5303533   1.2371044   1.893115
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.1400491   0.8938958   1.453986
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
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.3580494   0.9405979   1.960772
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.1144642   0.7473615   1.661887
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3531548   0.6858110   2.669872
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2528162   0.7821060   2.006823
6-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5703082   0.8445758   2.919653
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3173026   0.6533052   2.656164
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.6827204   1.1333149   2.498465
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0320466   0.6339138   1.680229
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.7020222   1.3599631   2.130116
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1983976   0.9268264   1.549542
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0190297   1.0825564   3.765606
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.6881098   1.1682445   2.439314
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.5095573   2.0739715   3.036627
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.5673560   1.2586716   1.951744
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          1.7138126   1.1679342   2.514828
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3123433   1.0181378   1.691563
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
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.3334463   0.8236658   2.158739
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2238918   0.6988207   2.143484
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.4638027   0.7287117   2.940420
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.2408478   0.5533781   2.782371
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.4204691   1.1185943   5.237529
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          2.9683605   1.3219292   6.665383
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.0310975   1.6637144   2.479607
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.7559453   1.3706332   2.249576
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.2917182   0.8727571   1.911799
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.4151351   0.9344973   2.142978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.3032617   0.7882803   2.154679
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4075760   0.9182711   2.157609
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.3882169   0.9550191   2.017914
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0200979   0.7593905   1.370309


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0281252   -0.0140661   0.0703165
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0182381    0.0016805   0.0347957
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0547520    0.0304625   0.0790415
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082153    0.0029135   0.0135171
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0352598    0.0279293   0.0425903
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0107960    0.0034637   0.0181283
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0004044   -0.0121093   0.0113004
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.1099174    0.0296403   0.1901944
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0375562    0.0061253   0.0689871
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0359406   -0.0299292   0.1018105
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0297540   -0.0086368   0.0681448
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0491375    0.0014765   0.0967984
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0689603    0.0453079   0.0926127
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0904574   -0.0012647   0.1821794
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0062626   -0.0007016   0.0132268
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0013232   -0.0008850   0.0035314
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0008791   -0.0113429   0.0095847
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0082559   -0.0007963   0.0173080
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0101465    0.0045662   0.0157268
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0016163   -0.0018388   0.0050713
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0206231   -0.0172615   0.0585078
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0058816   -0.0380513   0.0262881
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0097165   -0.0013071   0.0207402
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006729   -0.0005206   0.0018664
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0376742   -0.0059581   0.0813065
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0173904    0.0010087   0.0337721
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0567592    0.0312032   0.0823152
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082847    0.0029164   0.0136530
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0438917    0.0358341   0.0519492
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0100423    0.0026361   0.0174486
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0003506   -0.0122349   0.0115337
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0917638    0.0126502   0.1708774
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0380952    0.0065391   0.0696514
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0419231   -0.0265001   0.1103463
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0210840   -0.0172877   0.0594556
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0680855    0.0285827   0.1075884
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0784037    0.0538920   0.1029154
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0689740   -0.0248161   0.1627641
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0069124   -0.0011169   0.0149418
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0010155   -0.0012251   0.0032562


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.2456135   -0.2279165   0.5365329
0-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.2379697   -0.0058801   0.4227044
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.2977140    0.1543585   0.4167674
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0684463    0.0236413   0.1111952
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.3964360    0.3120043   0.4705061
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0686479    0.0211383   0.1138516
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0080600   -0.2705026   0.2001709
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.5018868   -0.0101766   0.7543828
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4180165    0.0012619   0.6608672
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1637004   -0.1964530   0.4154413
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.3163984   -0.2327008   0.6209046
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.3652552   -0.0994925   0.6335574
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.2995461    0.2087024   0.3799607
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.2402407   -0.0466659   0.4485019
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1273580   -0.0244881   0.2566980
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0282092   -0.0199541   0.0740982
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0389961   -0.6239218   0.3352433
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3490404   -0.1569823   0.6337469
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.2560315    0.1022050   0.3835016
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0580777   -0.0737124   0.1736916
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.2850575   -0.4757933   0.6536488
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1311594   -1.1303471   0.3993835
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.1398778   -0.0449891   0.2920402
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0544350   -0.0466895   0.1457896
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.3268875   -0.1787500   0.6156263
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.2409815   -0.0171446   0.4336017
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.2973506    0.1519475   0.4178236
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0690249    0.0236571   0.1122847
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.5051499    0.4096680   0.5851883
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0650093    0.0161526   0.1114399
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0068699   -0.2688686   0.2010307
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.4568665   -0.0954428   0.7307080
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4444444    0.0022396   0.6906652
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1993187   -0.2004184   0.4659440
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.2443064   -0.3552454   0.5786204
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.5564858    0.1210607   0.7762020
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.3476443    0.2671340   0.4193100
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.1915945   -0.1153414   0.4140633
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1246754   -0.0309822   0.2568317
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0243901   -0.0308835   0.0767000
